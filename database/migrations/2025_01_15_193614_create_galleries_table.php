<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('galleries', function (Blueprint $table) {
            $table->id('gallery_ID');
            $table->unsignedBigInteger('image_list_ID');
            $table->unsignedBigInteger('page_ID');
            $table->boolean('is_deleted')->default(0);
            $table->timestamps();
            $table->foreign('image_list_ID')->references('image_list_ID')->on('image_list')->onDelete('cascade');
            $table->foreign('page_ID')->references('page_ID')->on('pages')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('galleries');
    }
};
