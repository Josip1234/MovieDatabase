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
        Schema::create('movie_directors', function (Blueprint $table) {
            $table->id();
            $table->foreignId("id_filma")->constrained("film")->cascadeOnDelete()->cascadeOnUpdate(); //one movie can have more directors
            $table->foreignId("person_id")->constrained("person")->cascadeOnDelete()->cascadeOnUpdate(); //director represents id from person
            $table->string("earnings");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('movie_directors');
    }
};
