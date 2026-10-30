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
        Schema::create('filmovi_pregled', function (Blueprint $table) {
            $table->id();
            $table->foreignId("id_filma")->constrained("film")->cascadeOnDelete()->cascadeOnUpdate();
            $table->foreignId("id_pregleda")->constrained("pregled")->cascadeOnDelete()->cascadeOnUpdate();
            $table->foreignId("id_usera")->nullable()->constrained("users")->cascadeOnDelete()->cascadeOnUpdate();
            $table->foreignId("id_platforme")->nullable()->constrained("platforma")->cascadeOnDelete()->cascadeOnUpdate();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('filmovi_pregled');
    }
};
