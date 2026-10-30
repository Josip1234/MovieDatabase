<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Pregled extends Model
{
    use HasFactory,Notifiable;
    protected $table="pregled";
    protected $fillable = [
      "datum_vrijeme"
    ];
}
