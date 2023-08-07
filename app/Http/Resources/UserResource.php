<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    
    public function toArray(Request $request)
    {
        return [
                'ID korisnika'=> $this->resource->id,
                'Ime'=>$this->resource->first_name,
                'Prezime'=>$this->resource->last_name,
                'email'=>$this->resource->email,
        ];
    }
}
