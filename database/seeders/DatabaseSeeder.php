<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\Hash;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([
            'name' => 'Admin User',
            'email' => 'admin@example.com',
            'password' => Hash::make('password'),
            'user_type' => 'Admin',
            'is_deleted' => 0,
        ]);

        User::factory()->create([
            'name' => 'Content Writer',
            'email' => 'writer@example.com',
            'password' => Hash::make('password'),
            'user_type' => 'ContentWriter',
            'is_deleted' => 0,
        ]);

        User::factory()->create([
            'name' => 'SEO Analyst',
            'email' => 'seo@example.com',
            'password' => Hash::make('password'),
            'user_type' => 'SEO Analyst',
            'is_deleted' => 0,
        ]);
    }
}
