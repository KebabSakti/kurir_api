<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePackagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('packages', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('order_id');
            $table->text('track_number');
            $table->string('name');
            $table->string('phone');
            $table->text('address');
            $table->text('detail');
            $table->string('package_price');
            $table->dateTime('dropoff_time')->nullable();
            $table->text('note')->nullable();
            $table->double('lat');
            $table->double('lng');
            $table->text('map_address');
            $table->string('distance');
            $table->string('delivery_fee');
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
        Schema::dropIfExists('packages');
    }
}
