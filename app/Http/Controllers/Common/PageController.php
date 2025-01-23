<?php

namespace App\Http\Controllers\Common;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PageController extends Controller
{
    /**
     * Create a new page (Admin only)
     */
    public function createPage(Request $request)
    {
        $request->validate([
            'page_name' => 'required|string|max:255',
            'slug' => 'required|string|unique:pages,slug',
            'meta_tags' => 'nullable|string',
            'description' => 'nullable|string',
            'featured_image' => 'nullable|string',
            'content' => 'nullable|string',
            'category_ID' => 'nullable|integer',
            'type' => 'required|string',
        ]);

        $page = Page::create([
            'doneby' => Auth::id(), // Store the authenticated user ID
            'page_name' => $request->page_name,
            'slug' => $request->slug,
            'meta_tags' => $request->meta_tags,
            'description' => $request->description,
            'featured_image' => $request->featured_image,
            'content' => $request->content,
            'category_ID' => $request->category_ID,
            'type' => $request->type,
            'is_deleted' => 0,
        ]);

        return response()->json(['message' => 'Page created successfully', 'page' => $page], 201);
    }

    /**
     * Delete a page (Admin only)
     */
    public function deletePage($id)
    {
        $page = Page::find($id);

        if (!$page) {
            return response()->json(['message' => 'Page not found'], 404);
        }

        $page->update(['is_deleted' => 1]);

        return response()->json(['message' => 'Page deleted successfully']);
    }

    /**
     * Update a page (Admin, ContentWriter)
     */
    public function updatePage(Request $request, $id)
    {
        $page = Page::find($id);

        if (!$page) {
            return response()->json(['message' => 'Page not found'], 404);
        }

        $request->validate([
            'page_name' => 'required|string|max:255',
            'meta_tags' => 'nullable|string',
            'description' => 'nullable|string',
            'featured_image' => 'nullable|string',
            'content' => 'nullable|string',
            'category_ID' => 'nullable|integer',
            'type' => 'required|string',
        ]);

        $page->update($request->all());

        return response()->json(['message' => 'Page updated successfully', 'page' => $page]);
    }

    /**
     * Update content only (Admin, ContentWriter, SEO Analyst)
     */
    public function updateContent(Request $request, $id)
    {
        $page = Page::find($id);

        if (!$page) {
            return response()->json(['message' => 'Page not found'], 404);
        }

        $request->validate([
            'content' => 'required|string',
        ]);

        $page->update(['content' => $request->content]);

        return response()->json(['message' => 'Page content updated successfully']);
    }

    /**
     * List all pages (Live & Recovered)
     */
    public function listPages()
    {
        $pages = Page::whereIn('is_deleted', ["0", "1*"])->get();

        return response()->json(['pages' => $pages]);
    }


    /**
     * Recover a deleted page (Admin only)
     */
    public function recoverPage($id)
    {
        $page = Page::find($id);

        if (!$page) {
            return response()->json(['message' => 'Page not found'], 404);
        }

        if ($page->is_deleted == "0") {
            return response()->json(['message' => 'Page is already live'], 400);
        }

        // Set is_deleted to "1*" (Recovered)
        $page->update(['is_deleted' => "1*"]);

        return response()->json(['message' => 'Page recovered successfully', 'page' => $page]);
    }

    /**
     * List pages by status (Public)
     */
    public function listPagesByStatus($status)
    {
        $validStatuses = [
            'live' => "0",
            'deleted' => "1",
            'recovered' => "1*"
        ];

        if (!isset($validStatuses[$status])) {
            return response()->json(['message' => 'Invalid status. Use: live, deleted, recovered'], 400);
        }

        $pages = Page::where('is_deleted', $validStatuses[$status])->get();

        return response()->json(['status' => $status, 'pages' => $pages]);
    }

}



