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
        Schema::table('pages', function (Blueprint $table) {
            $table->unsignedBigInteger('doneby')->nullable()->after('page_ID');
            $table->foreign('doneby')->references('id')->on('users')->onDelete('set null');
        });

        Schema::table('seo', function (Blueprint $table) {
            $table->unsignedBigInteger('doneby')->nullable()->after('seo_ID');
            $table->foreign('doneby')->references('id')->on('users')->onDelete('set null');
        });

        Schema::table('galleries', function (Blueprint $table) {
            $table->unsignedBigInteger('doneby')->nullable()->after('gallery_ID');
            $table->foreign('doneby')->references('id')->on('users')->onDelete('set null');
        });

        Schema::table('global_info', function (Blueprint $table) {
            $table->unsignedBigInteger('doneby')->nullable()->after('info_ID');
            $table->foreign('doneby')->references('id')->on('users')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('pages', function (Blueprint $table) {
            $table->dropForeign(['doneby']);
            $table->dropColumn('doneby');
        });

        Schema::table('seo', function (Blueprint $table) {
            $table->dropForeign(['doneby']);
            $table->dropColumn('doneby');
        });

        Schema::table('galleries', function (Blueprint $table) {
            $table->dropForeign(['doneby']);
            $table->dropColumn('doneby');
        });

        Schema::table('global_info', function (Blueprint $table) {
            $table->dropForeign(['doneby']);
            $table->dropColumn('doneby');
        });
    }
};
