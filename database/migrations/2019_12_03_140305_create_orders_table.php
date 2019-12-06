\<?php

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
            $table->bigInteger('service_id');
            $table->bigInteger('customer_id');
            $table->bigInteger('driver_id')->nullable();
            $table->string('order_number');
            $table->string('name');
            $table->string('phone');
            $table->text('address');
            $table->dateTime('pickup_time')->nullable();
            $table->text('note')->nullable();
            $table->double('lat');
            $table->double('lng');
            $table->text('map_address');
            $table->boolean('is_coupon_applied')->default(false);
            $table->string('driver_fee');
            $table->string('company_fee');
            $table->integer('percentage')->default(20);
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
