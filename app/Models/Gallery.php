<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    use HasFactory;

    protected $primaryKey = 'gallery_ID';

    public function page()
    {
        return $this->belongsTo(Page::class, 'page_ID');
    }

    public function imageList()
    {
        return $this->belongsTo(ImageList::class, 'image_list_ID');
    }
}
