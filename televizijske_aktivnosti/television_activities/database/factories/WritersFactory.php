<?php

namespace Database\Factories;

use App\Models\Writers;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Writers>
 */
class WritersFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "person_id"=>fake()->numberBetween(1,10),
            "id_filma"=>fake()->numberBetween(1,10),
            "earnings"=>fake()->numberBetween(500,100000000).fake()->randomElement(['$','€']),
        ];
    }
}
