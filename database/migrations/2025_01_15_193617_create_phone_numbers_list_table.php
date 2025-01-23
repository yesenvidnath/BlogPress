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
        Schema::create('phone_numbers_list', function (Blueprint $table) {
            $table->id('phone_numbers_list_ID');
            $table->unsignedBigInteger('phone_number_ID');
            $table->string('phone_number');
            $table->string('phone_number_type');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('phone_numbers_list');
    }
};
