<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Place extends Model
{
    protected $fillable = ['place_id','primary_text','secondary_text','type','full_text'];
}
