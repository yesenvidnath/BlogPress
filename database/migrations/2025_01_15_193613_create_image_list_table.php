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
        Schema::create('image_list', function (Blueprint $table) {
            $table->id('image_list_ID');
            $table->unsignedBigInteger('image_ID');
            $table->string('image');
            $table->string('image_name');
            $table->string('image_alt_tags')->nullable();
            $table->string('image_url')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('image_list');
    }
};
