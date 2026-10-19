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
        Schema::create('film_detalj', function (Blueprint $table) {
            $table->id();
            //trajanje u minutama dovoljan je integer tinyint i smallint je premali integer je taman
            $table->integer("trajanje",false,true);
            $table->text("opis_filma")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('film_detalj');
    }
};
