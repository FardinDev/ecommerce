




@extends('layouts.footer')

@extends('layouts.app')

@section('content')
<!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@component('components.breadcrumbs')
    <a href="#">Home</a>
    <i class="fa fa-chevron-right breadcrumb-separator"></i>
    <span>Shopping Cart</span>
@endcomponent
@section('title', 'Cart')
<div class="cart-section container">
        <div>


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

            
            
            @if (Cart::count() > 0)

            <h2>{{Cart::count()}} item(s) in Shopping Cart</h2>
            
            
            <div class="cart-table">
                @foreach(Cart::content() as $product)
                        <div class="cart-table-row">
                    <div class="cart-table-row-left">
                    <a href="{{route('shop.show', $product->model->id)}}"><img src="{{ productImage($product->model->image)}}" alt="item" class="cart-table-img"></a>
                        <div class="cart-item-details">
                            <div class="cart-table-item"><a href="{{route('shop.show', $product->model->id)}}">{{$product->model->name}}</a></div>
                            <div class="cart-table-description">{{$product->model->details}}</div>
                        </div>
                    </div>



                    <div class="cart-table-row-right">
                           

                                  {{$product->qty}}
                                     
                                 
                        <div class="cart-table-actions">

                            <form action="{{route('cart.delete', $product->rowId)}}" method="POST">
                                {{ csrf_field() }}
                                {{ method_field('DELETE')}}

                                <button type="submit" class="cart-options">Remove</button>
                            </form>

                        </div>
                        <div>
                                <select class="quantity" data-id="{{ $product->rowId }}" data-productQuantity="{{ $product->model->quantity }}">
                                        @for ($i = 1; $i < 5 + 1 ; $i++)
                                            <option {{ $product->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                                        @endfor
                                </select>
                                <script src="{{ asset('js/app.js') }}"></script>
                                <script>
                                    (function(){
                                        const classname = document.querySelectorAll('.quantity')
                            
                                        Array.from(classname).forEach(function(element) {
                                            element.addEventListener('change', function() {
                                                const id = element.getAttribute('data-id')
                                                const productQuantity = element.getAttribute('data-productQuantity')
                            
                                                axios.patch(`/cart/${id}`, {
                                                    quantity: this.value,
                                                    productQuantity: productQuantity
                                                })
                                                .then(function (response) {
                                                    // console.log(response);
                                                    window.location.href = '{{ route('cart.index') }}'
                                                })
                                                .catch(function (error) {
                                                    // console.log(error);
                                                    window.location.href = '{{ route('cart.index') }}'
                                                });
                                            })
                                        })
                                    })();
                                </script>
                        </div>
                    <div>$ {{$product->model->presentPrice() * $product->qty}}</div>
                    </div>
                </div> <!-- end cart-table-row -->
                @endforeach
            </div> <!-- end cart-table -->

            
                {{-- <a href="#" class="have-code">Have a Code?</a>

                <div class="have-code-container">
                    <form action="https://laravelecommerceexample.ca/coupon" method="POST">
                        <input type="hidden" name="_token" value="y74CD9R8k5NvS67KgW9O8QjgmnEAs4Xy4DfiZvBE">
                        <input type="text" name="coupon_code" id="coupon_code">
                        <button type="submit" class="button button-plain">Apply</button>
                    </form>
                </div> <!-- end have-code-container --> --}}
            
            <div class="cart-totals">
                <div class="cart-totals-left">
                    
                </div>

                <div class="cart-totals-right">
                    <div>
                        Subtotal <br>
                        Tax (15%)<br>
                    <span class="cart-totals-total">Total</span>
                    </div>
                    <div class="cart-totals-subtotal">
                        $ {{Cart::subtotal()/100}}<br>
                        $ {{Cart::tax()/100}} <br>
                    <span class="cart-totals-total">
                        ${{Cart::total()/100}}
                    </span>
                    </div>
                </div>
            </div> <!-- end cart-totals -->
   @else

   <h1> You have no products in Cart</h1>

   @endif
            <div class="cart-buttons">
            <a href="{{route('shop.index')}}" class="button">Continue Shopping</a>

            @if (Cart::count() == 0)

            <a href="{{url('/')}}" class="button-primary" hidden>Proceed to Checkout</a>

            @else
            <a href="{{route('checkout.index')}}" class="button-primary">Proceed to Checkout</a>
            @endif
            
            </div>


            
        </div>

    </div> <!-- end cart-section -->
    @include('partials.might-like')

@endsection

