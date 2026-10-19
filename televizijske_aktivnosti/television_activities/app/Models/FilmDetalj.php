<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class FilmDetalj extends Model
{
    use HasFactory,Notifiable;

    protected $table="film_detalj";
    protected $fillable = [
        "trajanje",
        "opis_filma"
    ];
    public function detalji(){
        return $this->hasMany(FilmDetalj::class);
    }
}
