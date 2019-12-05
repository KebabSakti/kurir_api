<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDriversTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('drivers', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('city_id');
            $table->text('uid')->nullable();
            $table->text('id_card');
            $table->text('driving_license');
            $table->string('name');
            $table->enum('sex', ['Pria', 'Wanita']);
            $table->string('phone');
            $table->string('email');
            $table->text('address');
            $table->string('wallet')->default(0);
            $table->string('balance')->default(0);
            $table->string('point')->default(0);
            $table->boolean('package')->default(true);
            $table->boolean('ride')->default(true);
            $table->boolean('food')->default(false);
            $table->boolean('add_fee_to_wallet')->default(true);
            $table->boolean('is_verified')->default(false);
            $table->dateTime('verified_at')->nullable();
            $table->text('note')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('drivers');
    }
}
