<?php

  function productImage($path)
        {
            return  ($path != null) && file_exists('storage/'.$path) ? asset('storage/'.$path) : asset('img/no-image.jpg');
        }


        
function getNumbers()
        {
            $tax = config('cart.tax') / 100;
            $discount = session()->get('coupon')['discount'] ?? 0;
           // $code = session()->get('coupon')['name'] ?? null;
            $newSubtotal = (Cart::subtotal() - $discount);
            if ($newSubtotal < 0) {
                $newSubtotal = 0;
            }
            $newTax = $newSubtotal * $tax;
            $newTotal = $newSubtotal * (1 + $tax);
        
            return collect([
                'tax' => $tax,
                'discount' => $discount,
                //'code' => $code,
                'newSubtotal' => $newSubtotal,
                'newTax' => $newTax,
                'newTotal' => $newTotal,
            ]);
        }


function presentPrice($price)
{
    return( $price/100 );
}


function getStockLevel($stock)
{
    if($stock >= 5)
    {
      return '<div class="badge badge-success">In Stock</div>' ;
    }
    elseif($stock < 5 && $stock > 0)
    {
        return '<div class="badge badge-warning">Low in Stock</div>' ;
    }
    else
    {
        return '<div class="badge badge-danger">Out of Stock</div>' ;
    }
}