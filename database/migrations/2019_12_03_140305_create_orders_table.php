<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('customer_id');
            $table->bigInteger('driver_id');
            $table->string('order_number');
            $table->string('name');
            $table->string('phone');
            $table->text('address');
            $table->dateTime('pickup_time')->nullable();
            $table->text('note')->nullable();
            $table->double('lat');
            $table->double('lng');
            $table->text('map_address');
            $table->string('price');
            $table->string('discount');
            $table->string('total_price');
            $table->integer('order_count');
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
        Schema::dropIfExists('orders');
    }
}