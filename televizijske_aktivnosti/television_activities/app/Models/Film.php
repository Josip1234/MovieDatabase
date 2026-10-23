<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Film extends Model
{
    use HasFactory, Notifiable;

    protected $table="film";

    protected $fillable = [
        'name',
        'year'
    ];
    public function filmovi(){
        return $this->hasMany(FilmVrsta::class,"broj_filma");
    }
    public function platforme_filmova(){
        return $this->hasMany(PlatformaFilm::class,"broj_filma");
    }
    public function detalji(){
        return $this->hasMany(FilmDetalji::class);
    }
    public function glumci(){
        return $this->hasMany(FilmGlumci::class,"broj_filma");
    }
}
