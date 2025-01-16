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
        Schema::create('nav_menu', function (Blueprint $table) {
            $table->id('menu_ID');
            $table->unsignedBigInteger('menu_items_ID');
            $table->timestamps();
            $table->foreign('menu_items_ID')->references('menu_items_ID')->on('menu_items')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('nav_menu');
    }
};
