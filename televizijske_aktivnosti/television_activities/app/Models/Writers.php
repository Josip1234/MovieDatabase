<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Writers extends Model
{
    use HasFactory, Notifiable;
    protected $table="writers";
    protected $fillable = [
        "person_id",
        "id_filma",
        "earnings"
    ];
    public function persons(){
        return $this->belongsTo(Person::class);
    }
    public function filmovi(){
        return $this->belongsTo(Film::class);
    }
}
