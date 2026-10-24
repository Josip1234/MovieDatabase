<?php

namespace Database\Seeders;

use App\Models\Uloga;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UlogaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Uloga::factory(10)->create();
    }
}
