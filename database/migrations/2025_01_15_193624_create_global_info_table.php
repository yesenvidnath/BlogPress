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
        Schema::create('global_info', function (Blueprint $table) {
            $table->id('info_ID');
            $table->unsignedBigInteger('phone_numbers_list_ID')->nullable();
            $table->unsignedBigInteger('locations_list_ID')->nullable();
            $table->unsignedBigInteger('email_list_ID')->nullable();
            $table->timestamps();
            $table->foreign('phone_numbers_list_ID')->references('phone_numbers_list_ID')->on('phone_numbers_list')->onDelete('cascade');
            $table->foreign('locations_list_ID')->references('locations_list_ID')->on('locations_list')->onDelete('cascade');
            $table->foreign('email_list_ID')->references('email_list_ID')->on('email_list')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('global_info');
    }
};
