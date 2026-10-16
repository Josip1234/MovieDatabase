<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class VrstaFilma extends Model
{
    use HasFactory, Notifiable;
    protected $table="vrsta_filma";
    protected $fillable = [
        'naziv'
    ];
    public function vrste_filmova(){
        return $this->hasMany(FilmVrsta::class);
    }
}
