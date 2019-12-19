<?php

use Illuminate\Database\Seeder;
use App\Driver;
use App\Place;
use App\City;
use App\Customer;
use Carbon\Carbon;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $city = new City;
        $city->city = "Samarinda";
        $city->save();

        for($i=1; $i<=20; $i++){
            $customer = new Customer;
            $customer->city_id = $city->id;
            $customer->device_id = mt_rand(100000000, 999999999);
            $customer->uid = mt_rand(100000, 999999);
            $customer->name = "Customer ".$i;
            $customer->phone = 00+$i;
            $customer->email = "customer_".$i."@gmail.com";
            $customer->is_verified = 1;
            $customer->verified_at = Carbon::now();
            $customer->save();
        }
    }
}
