<?php

namespace Database\Seeders;

use App\Models\VrstaFilma;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class VrstaFilmaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        VrstaFilma::factory(10)->create();
    }
}
