<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class PhysicalDiscSale extends Model
{
    use HasFactory, Notifiable;
    protected $table="physical_disc_sale";
    protected $fillable = [
        "dvd_sales",
        "bluray_sales",
        "total"
    ];
}
