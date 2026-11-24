<?php

namespace Database\Seeders;

use App\Models\EarningsPerState;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EarningsPerStateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        EarningsPerState::factory(10)->create();
    }
}
