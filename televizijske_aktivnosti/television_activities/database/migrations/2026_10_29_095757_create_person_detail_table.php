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
        Schema::create('person_detail', function (Blueprint $table) {
            $table->id();
            //unique da osiguramo vezu da samo jedna osoba može imati samo jedan detalj
            $table->foreignId("person_id")->unique("person_uk")->constrained("person")->cascadeOnDelete()->cascadeOnUpdate();
            $table->string("place_of_birth");
            $table->text("job_history")->nullable();
            $table->smallInteger("year_of_death")->nullable();
            $table->string("place_of_death")->nullable();
            $table->string("grave_location")->nullable();
            $table->text("cause_of_death")->nullable();
            $table->string("height_in_cm");
            $table->string("weight_in_kg");
            $table->string("short_name")->nullable();
            $table->string("nickname")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('person_detail');
    }
};
