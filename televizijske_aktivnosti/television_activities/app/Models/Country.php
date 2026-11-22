<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Country extends Model
{
    use HasFactory, Notifiable;
    protected $table="countries";
    protected $fillable = [
       "long_country_name",
        "short_country_name",
        "mark",
        "continent",
        "year_of_foundation"
    ];
}
