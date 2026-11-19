<?php

namespace Database\Seeders;

use App\Models\PhysicalDiscSale;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PhysicalDiscSaleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        PhysicalDiscSale::factory(10)->create();
    }
}
