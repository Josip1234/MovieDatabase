<?php

namespace Database\Seeders;

use App\Models\MovieDirectors;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MovieDirectorsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        MovieDirectors::factory(10)->create();
    }
}
