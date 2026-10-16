<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class FilmVrsta extends Model
{
    use HasFactory, Notifiable;

    protected $table="film_vrsta";
    protected $fillable = [
        "broj_filma",
        "broj_vrste"
    ];

    public function film(){
        return $this->belongsTo(Film::class);
    }
    public function vrsta_filma(){
        return $this->belongsTo(VrstaFilma::class);
    }
}
