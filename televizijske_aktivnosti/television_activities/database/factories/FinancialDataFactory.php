<?php

namespace Database\Factories;

use App\Models\FinancialData;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<FinancialData>
 */
class FinancialDataFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "film_id"=>fake()->numberBetween(1,10),
            "theatrical_performance"=>fake()->numberBetween(1,10),
            "physical_disc_sale"=>fake()->numberBetween(1,10),
            "earnings_per_state"=>fake()->numberBetween(1,10)
        ];
    }
}
