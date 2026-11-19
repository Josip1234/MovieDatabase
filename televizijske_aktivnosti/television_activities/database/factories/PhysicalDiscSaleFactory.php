<?php

namespace Database\Factories;

use App\Models\PhysicalDiscSale;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<PhysicalDiscSale>
 */
class PhysicalDiscSaleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "dvd_sales"=>fake()->randomElement(["$","€"]).fake()->numberBetween(0-9).",".fake()->numberBetween(0,9),
            "bluray_sales"=>fake()->randomElement(["$","€"]).fake()->numberBetween(0-9).",".fake()->numberBetween(0,9),
            "total"=>fake()->randomElement(["$","€"]).fake()->numberBetween(0-9).",".fake()->numberBetween(0,9)
        ];
    }
}
