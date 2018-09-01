@extends('layouts.footer') 
@extends('layouts.app') 
@section('content') 
@component('components.breadcrumbs')
        <a href="/">Home</a>
        <i class="fa fa-chevron-right breadcrumb-separator"></i>
        <span>Shop</span>
@endcomponent
@section('title', 'Shop')
@if (session()->has('success_message'))
<div class="spacer"></div>
<div class="alert alert-success">
    {{ session()->get('success_message') }}
</div> 
@endif
@if(count($errors) > 0)
<div class="spacer"></div>
<div class="alert alert-danger">
<ul>
    @foreach ($errors->all() as $error)
        <li>{!! $error !!}</li>
    @endforeach
</ul>
</div>
@endif
<div class="products-section container">
  

    <div class="sidebar">

        <ul>
            
            
            <div class="svg-wrapper">
                    <svg height="40" width="200" xmlns="http://www.w3.org/2000/svg">
                      <rect class="shape" height="40" width="200" />
                    </svg>
                     <div class="text"> <li class="{{request()->category == '' ? 'active' : ''}}"><a href="{{route('shop.index')}}" style="{{request()->category == '' ? 'color:#00bb77' : ''}}">Featured</a></li></div>
                     
                    </div>
        </ul>
        
        <ul>
                <h3>By Category</h3>
            
            @foreach($categories as $category)

            {{--  <li class="{{request()->category == $category->slug ? 'active' : ''}}"><a href="{{route('shop.index', ['category'=> $category->slug])}}" style="{{request()->category == $category->slug ? 'color:#00bb77' : ''}}">{{$category->name}}</a></li>  --}}
            


            <div class="svg-wrapper">
                    <svg height="40" width="200" xmlns="http://www.w3.org/2000/svg">
                      <rect class="shape" height="40" width="200" />
                    </svg>
                     <div class="text"> <li class="{{request()->category == $category->slug ? 'active' : ''}}"><a href="{{route('shop.index', ['category'=> $category->slug])}}" style="{{request()->category == $category->slug ? 'color:#00bb77' : ''}}">{{$category->name}}</a></li></div>
            </div>
            @endforeach


        </ul>
    </div>


    <div class="container">

        {{--
        <div class="text-center button-container">
            <a href="#" class="button">Featured</a>
            <a href="#" class="button">On Sale</a>
            <a href="#" class="button">All Products</a>
        </div> --}}

        <div class="product-header">
            <div class="normal">

                <div>
                    <h1 class="stylish_heading">{{$categoryName}}</h1>

                </div>
                <div align='right'>
                    <strong>Price: </strong>
                    <a href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'low_high']) }}" style="{{request()->sort == 'low_high' ? 'color:#00bb77' : ''}}">Low to High</a>                    |
                    <a href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'high_low']) }}" style="{{request()->sort == 'high_low' ? 'color:#00bb77' : ''}}">High to Low</a>

                </div>


            </div>

            <br>



            <div class="products text-center">

                @forelse($products as $product)
                <div class="product">
                        <div class="itempp">
                                <a href="{{route('shop.show', $product->id)}}"><img src="{{ productImage($product->image)}}" alt="pepsi"></a>
                        </div>

                    <a href="{{route('shop.show', $product->id)}}">
                        <div class="product-name">{{$product->name}}</div>
                    </a>
                    <div class="product-price">$ {{$product->presentPrice()}}</div>
                </div>
                @empty



                <div>
                    <h2 class="stylish_heading">No products of this categoy found</h2>
                </div>


                @endforelse


            </div>
            <!-- end products -->

            <div class="center">

                {{ $products->appends(['sort' => 'id'])->links() }}

            </div>

            {{--
            <div class="text-center button-container">

                <a href="#" class="button">View more products</a>
            </div> --}}

        </div>
        <!-- end container -->

    </div>
</div>

<!-- end featured-section -->
<!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection