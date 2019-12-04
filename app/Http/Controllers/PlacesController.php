<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Place;

class PlacesController extends Controller
{
    public function index(Request $request)
    {
        $Place = Place::where('full_text', 'like', '%'.$request->keyword.'%')->get();

        return response()->json([
            'status' => true,
            'data' => $Place->toArray()
        ]);
    }

    public function store(Request $request)
    {

        for($i=0; $i<count($request->place_id); $i++){
            $PlaceCheck = Place::where('place_id', $request->place_id[$i])->first();

            if($PlaceCheck == null){
                $Place = new Place;
                $places = array(
                    "place_id" => $request->place_id[$i],
                    "primary_text" => $request->primary_text[$i],
                    "secondary_text" => $request->secondary_text[$i],
                    "type" => $request->type[$i],
                    "full_text" => $request->full_text[$i],
                    "lat" => $request->lat[$i],
                    "lng" => $request->lng[$i]
                );

                $Place->fill($places);
                $Place->save();
            }
        }
    }
}
