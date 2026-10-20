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
        Schema::create('person', function (Blueprint $table) {
            $table->id();
            $table->string("state_id");
            $table->integer("id_card_number")->unique("idCardNumUk");
            $table->bigInteger("oib_upi")->unique("oibUk");
            $table->integer("mbo")->nullable();
            $table->string("first_name");
            $table->string("last_name");
            $table->char("sex",1);
            $table->string("citizenship");
            $table->date("date_of_birth");
            $table->date("date_of_expiry")->nullable();
            $table->tinyText("picture")->unique("pictureUk");
            $table->tinyText("signature")->nullable();
            $table->string("residence")->nullable();
            $table->string("id_issued_by")->nullable();
            $table->date("date_of_issue")->nullable();
            $table->tinyInteger("employment_status")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('person');
    }
};
