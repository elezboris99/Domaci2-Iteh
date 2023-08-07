<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ItemResource extends JsonResource
{
    public static $wrap = 'Stavka';

    public function toArray(Request $request)
    {
        return ['Id' => $this->resource->id,
                'Proizvod' =>$this->resource->product,
                'Kolicina' => $this->resource->amount,
                'Tip mjere' => $this->resource->measure_type,
                'Prodavnica' => new PlaceResource($this->resource->place),
                'Korisnik'=> new UserResource($this->resource->user),
    ];
    }
}
