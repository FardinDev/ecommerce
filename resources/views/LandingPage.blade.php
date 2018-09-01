
@extends('layouts.footer') {{-- 
@extends('layouts.blog') --}} 
@extends('layouts.app')

@section('content') 
@section('title', 'Home')
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
    .mySlides {
        display: none;
    }
</style>
<header class="with-background">
<div class="fixed">
    <div class="hero container">


        <div class="hero-image">
            {{-- <img src="" alt="hero image"> --}}

            <div class="w3-content w3-section" style="max-width:500px">

                <a href="{{url('/shop?category=gaming')}}"><img class="mySlides w3-animate-opacity" src="img/1.png" style="width:100%"></a>
                <a href="{{url('/shop?category=phone')}}"><img class="mySlides w3-animate-opacity" src="img/iphone.png" style="width:100%"></a>
                <a href="{{url('/shop?category=laptop')}}"><img class="mySlides w3-animate-opacity" src="img/macbook-pro-laravel.png" style="width:100%"></a>
                <a href="{{url('/shop?category=gaming')}}"><img class="mySlides w3-animate-opacity" src="img/2.png" style="width:100%"></a>
                <a href="{{url('/shop?category=laptop')}}"> <img class="mySlides w3-animate-opacity" src="img/3.png" style="width:100%"></a>                {{-- <a href="{{url('/shop?category=headphone')}}"> <img class="mySlides w3-animate-opacity" src="img/4.png" style="width:70%"></a>                --}}
                <a href="{{url('/shop?category=laptop')}}"> <img class="mySlides w3-animate-opacity" src="img/5.png" style="width:100%"></a>

            </div>

            <script>
                var myIndex = 0;
                    carousel();
                    
                    function carousel() {
                        var i;
                        var x = document.getElementsByClassName("mySlides");
                        for (i = 0; i < x.length; i++) {
                           x[i].style.display = "none";  
                        }
                        myIndex++;
                        if (myIndex > x.length) {myIndex = 1}    
                        x[myIndex-1].style.display = "block";  
                        setTimeout(carousel, 4000);    
                    }
            </script>
        </div>
        <!-- end hero-image -->
        @guest
        <div class="hero-copy">
            <h1>TechShop</h1>
            <p>A Smarter Way To Shop From A Smatter Shop ;)</p>
            <div class="hero-buttons">
                <a href="/register" class="button button-white">Be A Member</a>
                <a href="/login" class="button button-white">Login</a>
            </div>
        </div>


        @else
        <div class="hero-copy">
            <h1>Hello {{auth()->user()->name}}</h1>
            <p>Start Explorig Now</p>
        </div>



        @endif

        <!-- end hero-copy -->



    </div>
    <!-- end hero -->
</div>
</header>

<div class="featured-section">
    <div class="container">
        <h1 class="text-center">Featured Products</h1>

        <p class="section-description text-center">Featured Products Here | Grab Them Before Anyone Else Does</p>

        <div class="text-center button-container">
            <a href="#" class="button act">Featured</a>
            <a href="#bottom" class="button">On Sale</a>
        </div>


        <div class="products text-center">

            @foreach($products as $product)

            <div class="product">
                {{--
                <div class="product-image">
                    <a href="{{route('shop.show', $product->id)}}"><img src="{{ productImage($product->image)}}" alt="product"></a>
                </div> --}}
                <div class="itempp">
                    <a href="{{route('shop.show', $product->id)}}"><img src="{{ productImage($product->image)}}" alt="pepsi"></a>
                </div>



                <a href="{{route('shop.show', $product->id)}}">
                    <div class="product-name">{{$product->name}}</div>
                </a>
                <div class="product-price">$ {{$product->presentPrice()}}</div>
            </div>




            @endforeach


        </div>
        <!-- end products -->

        <div class="text-center button-container">
            <a href="{{route('shop.index')}}" class="button">View more products</a>
        </div>

    </div>
    <!-- end container -->

</div>
<!-- end featured-section -->

{{--  experiments  --}}



    <div class="parallax">
            <div class="parallax img1">
        <a href="{{asset('/shop/54')}}">
            <div class="ptext2">
                <span class="border">
                    IPhone X | Starts From $900.99
                </span>
            </div>
        </a>
    </div>
    </div>














{{-- newest products --}}


<div class="featured-section">
    <div class="container">
        <h1 class="text-center">Newly Arrived</h1>

        <p class="section-description text-center">Awesome Stuff Is Being Added Everyday With Awesome Deals</p>


        <div class="products text-center">

            @foreach($newest as $new)

            <div class="product">
               
                <div class="itempp">
                    <a href="{{route('shop.show', $new->id)}}"><img src="{{ productImage($new->image)}}" alt="pepsi"></a>
                </div>



                <a href="{{route('shop.show', $new->id)}}">
                    <div class="product-name">{{$new->name}}</div>
                </a>
                <div class="product-price">$ {{$new->presentPrice()}}</div>
            </div>

            @endforeach


        </div>
        <!-- end products -->
    </div>
    <!-- end container -->
</div>
<!-- end new-section -->


<div class="parallax">
    <div class="parallax img2">
        <a href="{{asset('shop?category=camera')}}">
                    <div class="ptext2">
                        <span class="border">
                            Looking for a New Camera?
                        </span>
                    </div>
                </a>
    </div>            
</div>



{{--jsut test --}}

<div class="featured-section">
        <div class="container">
            <h1 class="text-center">On Sale</h1>
    
            {{-- <p class="section-description text-center">Hurry BIGGEST SALE OF THE YEAR going On</p> --}}
    
    
            <div class="products text-center">
    
                @foreach($lowest as $low)
    
                <div class="product">
                   
                    <div class="itempp">
                        <a href="{{route('shop.show', $low->id)}}"><img src="{{ productImage($low->image)}}" alt="pepsi"></a>
                    </div>
    
    
    
                    <a href="{{route('shop.show', $low->id)}}">
                        <div class="product-name">{{$low->name}}</div>
                    </a>
                    <div class="product-price">$ {{$low->presentPrice()}}</div>
                </div>
    
                @endforeach
    
    
            </div>
            <!-- end products -->
        </div>
        <!-- end container -->
    </div>
    <!-- end new-section -->






@endsection



