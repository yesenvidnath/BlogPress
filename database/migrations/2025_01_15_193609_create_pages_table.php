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
        Schema::create('pages', function (Blueprint $table) {
            $table->id('page_ID');
            $table->timestamp('Time');
            $table->string('meta_tags')->nullable();
            $table->text('description')->nullable();
            $table->string('page_name');
            $table->string('slug')->unique();
            $table->enum('type', ['Page', 'Article']);
            $table->string('featured_image')->nullable();
            $table->text('content')->nullable();
            $table->unsignedBigInteger('category_ID')->nullable();
            $table->boolean('is_deleted')->default(0);
            $table->timestamps();
            $table->foreign('category_ID')->references('category_ID')->on('categories')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pages');
    }
};
