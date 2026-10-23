<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class FilmGlumci extends Model
{
    use HasFactory,Notifiable;

    protected $table="film_glumci";
    protected $fillable = [
        "broj_filma",
        "broj_osobe"
    ];
    public function filmovi(){
        return $this->belongsTo(Film::class);
    }
    public function osobe(){
        return $this->belongsTo(Person::class);
    }
}
