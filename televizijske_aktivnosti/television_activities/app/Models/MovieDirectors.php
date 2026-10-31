<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class MovieDirectors extends Model
{
    use HasFactory, Notifiable;
    protected $table="movie_directors";
    protected $fillable = [
        "id_filma",
        "person_id",
        "earnings"
    ];
    protected function filmovi(){
        return $this->belongsTo(Film::class);
    }
    protected function osobe(){
        return $this->belongsTo(Person::class);
    }
}
