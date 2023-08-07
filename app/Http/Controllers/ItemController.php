<?php

namespace App\Http\Controllers;

use App\Models\Item;
use App\Http\Controllers\Controller;
use App\Http\Resources\ItemResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class ItemController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $items=Item::all();
        
        return (ItemResource::collection($items));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product' => 'required|string|max:255',
            'amount' => 'required',
            'measure_type' => 'required|string|max:15',
            'place_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $item = Item::create([
            'product' => $request->product,
            'amount' => $request->amount,
            'measure_type' => $request->measure_type,
            'place_id' => $request->place_id,
            'user_id' => Auth::user()->id
        ]);

        return response()->json('Uspesno dodana stavka!');

    }

    /**
     * Display the specified resource.
     */
    public function show(Item $item)
    {
        return new ItemResource($item);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Item $item)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Item $item)
    {
        $validator = Validator::make($request->all(), [
            'product' => 'required|string|max:255',
            'amount' => 'required',
            'measure_type' => 'required|string|max:15',
            'place_id' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $item->product = $request->product;
        $item->amount = $request->amount;
        $item->measure_type = $request->measure_type;
        $item->place_id = $request->place_id;

        $item->save();
        return response()->json("Uspesno izmenjena stavka");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Item $item)
    {
        $item->delete();
        return response()->json("Izbrisana stavka");
    }
}
