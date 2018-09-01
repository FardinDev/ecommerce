<?php

namespace App\Http\Controllers;

use App\Product;
use Validator;
use App\helpers;
use App\Category;
use Illuminate\Http\Request;
use Illuminate\Http\Request\Validation\ValidatesRequests;



class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $pagination = 9;
        $categories = Category::all();

        if (request()->category) {
            $products = Product::with('categories')->whereHas('categories', function ($query) {
                $query->where('slug', request()->category);
            });
            $categoryName = $categories->where('slug', request()->category)->first()->name;
        } else {
            $products = Product::where('featured', true);
            $categoryName = 'Featured';
        }

        if (request()->sort == 'low_high') {
            $products = $products->orderBy('price')->paginate($pagination);
        } elseif (request()->sort == 'high_low') {
            $products = $products->orderBy('price', 'desc')->paginate($pagination);
        } else {
            $products = $products->paginate($pagination);
        }


        return view('shop')->with([
            'products' => $products,

            'categories' => $categories,

            'categoryName' => $categoryName
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Search.......
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function search(Request $request)
    {   
        $this->validate($request, [
            'query' => 'required|min:3',

        ]);

        

        $query = $request-> input('query');

        $products = Product::where('name', 'like', "%$query%")->paginate(10);

        return view('SearchResults')->with('products',$products);
    }


    public function searchAlgolia(Request $request)
    {
        return view('search-results-algolia');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::where('id', $id)->firstOrFail();

       $quantity = getStockLevel($product->quantity);

        $mightAlsoLike = Product::where('id', '!=', $id)->InRandomOrder()->take(4)->get();

        return view('product')->with([
            'product' => $product,

            'mightAlsoLike' => $mightAlsoLike,

            'quantity' => $quantity
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
