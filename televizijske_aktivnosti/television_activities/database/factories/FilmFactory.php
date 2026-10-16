<?php

namespace Database\Factories;

use App\Models\Model;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Model>
 */
class FilmFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name'=>fake()->name,
            /*
            „Vrtna scena u Roundhayu“ (Roundhay Garden Scene), a snimio ga je Louis Le Prince 14. listopada 1888. godine u Leedsu u Engleskoj.

            */
            'year'=>random_int(1888,2026),
        ];
    }
}
