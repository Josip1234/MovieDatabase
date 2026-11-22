<?php

namespace Database\Factories;

use App\Models\Country;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Country>
 */
class CountryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "long_country_name"=>fake()->countryISOAlpha3.fake()->country,//iso kratka oznaka države
            "short_country_name"=>fake()->country(),
            "mark"=>strtoupper(substr(fake()->country,0,3)),
            "continent"=>fake()->randomElement(["Europe","Asia","Australia","South America","North America","Africa","Antarctica"]),
            "year_of_foundation"=>fake()->numberBetween(0,9999)
        ];
    }
}
