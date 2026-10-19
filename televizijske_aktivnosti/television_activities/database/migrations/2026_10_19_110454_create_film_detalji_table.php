<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('film_detalji', function (Blueprint $table) {
            $table->id();
            $table->foreignId("broj_filma")->constrained("film")->cascadeOnDelete()->cascadeOnUpdate();
            $table->foreignId("broj_detalja")->constrained("film_detalj")->cascadeOnDelete()->cascadeOnUpdate();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('film_detalji');
    }
};
