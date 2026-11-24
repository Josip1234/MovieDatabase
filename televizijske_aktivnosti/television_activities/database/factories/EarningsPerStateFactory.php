<?php

namespace Database\Factories;

use App\Models\EarningsPerState;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<EarningsPerState>
 */
class EarningsPerStateFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
           "territory"=>fake()->numberBetween(1,10),
           "release_date"=>fake()->date,
           "opening_weekend"=>fake()->randomElement(["€","$"]).fake()->numberBetween(0,9),
           "total_box_office"=>fake()->randomElement(["€","$"]).fake()->numberBetween(0,9),
           "report_date"=>fake()->date,
        ];
    }
}
