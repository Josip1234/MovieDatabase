<?php

namespace Database\Factories;

use App\Models\Platforma;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Platforma>
 */
class PlatformaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "naziv"=>fake()->userName,
            "description"=>fake()->text
        ];
    }
}
