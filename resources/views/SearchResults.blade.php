{{-- //@extends('layouts.footer', 'sticky-footer') --}}
@extends('layouts.footer') 
@extends('layouts.app')

@section('content')
@section('title', 'Search Results')

<!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>

@component('components.breadcrumbs')
<a href="/">Home</a>
    <i class="fa fa-chevron-right breadcrumb-separator"></i>
    <span><a href="{{ route('shop.index') }}">Shop</a></span>
    <i class="fa fa-chevron-right breadcrumb-separator"></i>
    <span>Search</span>
@endcomponent
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


                <div class="search-results-container container">
                    <h1>Search Results</h1>
                    <p class="search-results-count">{{ $products->total() }} result(s) for '{{ request()->input('query') }}'</p>
            
                    @if ($products->total() > 0)
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Details</th>
                                <th>Description</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($products as $product)
                                <tr>
                                    <td><a href="{{ route('shop.show', $product->id) }}"> <img src="{{ productImage($product->image)}}" alt="product" width="40px"></a></td>
                                    <th><a href="{{ route('shop.show', $product->id) }}">{{ $product->name }}</a></th>
                                    <td>{{ $product->details }}</td>
                                    <td>{{ str_limit($product->description, 80) }}</td>
                                    <td>{{ $product->presentPrice() }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
            
                    {{ $products->appends(request()->input())->links() }}
                    @endif
                </div> <!-- end search-results-container -->
   
 
@endsection
