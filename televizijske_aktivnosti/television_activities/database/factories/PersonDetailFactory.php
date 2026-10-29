<?php

namespace Database\Factories;

use App\Models\PersonDetail;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<PersonDetail>
 */
class PersonDetailFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "person_id"=>fake()->unique()->randomElement([1,2,3,4,5,6,7,8,9,10]),
            "place_of_birth"=>fake()->streetAddress.",".fake()->country,
            "job_history"=>fake()->randomElement([NULL,"",fake()->text]),
            "year_of_death"=>fake()->randomElement([NULL,fake()->numberBetween(0,2026)]),
            "place_of_death"=>fake()->randomElement([NULL,fake()->streetAddress.",".fake()->country]),
            "grave_location"=>fake()->randomElement([NULL,fake()->streetAddress.",".fake()->country]),
            "cause_of_death"=>fake()->randomElement([NULL,fake()->text,fake()->realText]),
            "height_in_cm"=>fake()->numberBetween(0,300),
            "weight_in_kg"=>fake()->numberBetween(0,300),
            "short_name"=>fake()->randomElement([NULL,fake()->realText,fake()->userName]),
            "nickname"=>fake()->randomElement([NULL,fake()->userName])
        ];
    }
}
