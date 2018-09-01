<?php

namespace App;

use Laravel\Scout\Searchable;
use Illuminate\Database\Eloquent\Model;
use Nicolaslopezj\Searchable\SearchableTrait;

class Product extends Model
{
    use SearchableTrait, Searchable;
    

    /**
     * Searchable rules.
     *
     * @var array
     */
    protected $searchable = [
        /**
         * Columns and their priority in search results.
         * Columns with higher values are more important.
         * Columns with equal values have equal importance.
         *
         * @var array
         */
        'columns' => [
            'products.name' => 10,
            // 'products.details' => 5,
            // 'products.description' => 2,
        ],
        
    ];

    public function categories()
    {
        return $this->belongsTomany('App\category');
    }


    public function presentPrice()
    {
       
        return( $this->price/100 );
      
    }
}
