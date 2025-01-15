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
        Schema::create('seo', function (Blueprint $table) {
            $table->id('seo_ID');
            $table->string('meta_tags');
            $table->string('title');
            $table->text('description')->nullable();
            $table->unsignedBigInteger('page_ID');
            $table->timestamps();
            $table->foreign('page_ID')->references('page_ID')->on('pages')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('seo');
    }
};
