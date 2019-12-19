<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Customer;

class CustomerController extends Controller
{
    public function getCustomerByPhone($phone)
    {
        $customer = DB::table('customers')
                      ->select('phone')
                      ->where('phone', $phone)
                      ->get();

        if(count($customer) > 0){
            $response = [
                'status' => true,
                'data' => $customer
            ];
        }else{
            $response = [
                'status' => false,
                'data' => ''
            ];
        }

        return response()->json($response);
    }
}
