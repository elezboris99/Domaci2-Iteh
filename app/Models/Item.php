<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    use HasFactory;
    protected $fillable=[
        'product',
        'amount',
        'measureType',
    ];
    public function place(){
        return $this->belongsTo(Place::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }

}
