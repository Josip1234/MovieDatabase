<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Uloga extends Model
{
    use HasFactory,Notifiable;
    protected $table="uloga";
    protected $fillable = [
        "character",
        "description"
    ];
    public function uloge(){
        return $this->hasMany(FilmUloge::class,"broj_uloge");
    }
}
