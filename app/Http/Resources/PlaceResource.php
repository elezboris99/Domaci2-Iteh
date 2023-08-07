<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PlaceResource extends JsonResource
{
  
    public function toArray(Request $request)
    {
      return [
        'Id'=>$this->resource->id,
        'Naziv prodajnog mjesta'=>$this->resource->place,
      ]; 
    }
}
