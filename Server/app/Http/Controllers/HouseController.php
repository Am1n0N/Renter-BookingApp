<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\House;
use App\Models\Category;

class HouseController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $houses = House::query();

        $categoryName = $request->input('category');
        if ($categoryName) {
            $category = Category::where('name', $categoryName)->firstOrFail();
            $houses->where('category_id', $category->id);
        }

        $houses = $houses->get();

        return response()->json($houses);
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
        $validatedData = $request->validate([
            'title' => 'required',
            'description' => 'required',
            'date' => 'required',
            'image' => 'required',
            'price' => 'required|numeric',
            'rating' => 'required|numeric|min:1|max:5',
            'category_id' => 'required|exists:categories,id',
        ]);

        $house = new House;
        $house->title = $validatedData['title'];
        $house->description = $validatedData['description'];
        $house->date = $validatedData['date'];
        $house->price = $validatedData['price'];
        $house->rating = $validatedData['rating'];
        $house->category_id = $validatedData['category_id'];
        $house->image = $validatedData['image'];
        // Save image to storage
        //$imagePath = $request->file('image')->store('houses');
        //$house->image = $imagePath;

        $house->save();

        return response()->json(['message' => 'House created successfully'], 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}