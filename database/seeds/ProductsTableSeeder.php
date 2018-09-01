<?php

use App\Product;
use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {  //laptops
        for ($i=1; $i <= 20; $i++) {
            Product::create([
                'name' => 'Laptop '.$i,
                'image' => 'products\July2018\laptop-'.$i.'.jpg',
                'slug' => 'laptop-'.$i,
                'details' => [13,14,15][array_rand([13,14,15])] . ' inch, ' . [1, 2, 3][array_rand([1, 2, 3])] .' TB SSD, 32GB RAM',
                'price' => rand(149999, 249999),
                'description' =>'Lorem '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
                'featured' => rand(0,1),
                'quantity' => rand(0, 50),
                ])->categories()->attach(1);
        }


         //phones
         for ($i=1; $i <= 6; $i++) {
            Product::create([
                'name' => 'Phone '.$i,
                'image' => 'products\July2018\phone ('.$i.').jpg',
                'slug' => 'phone ('.$i.')',
                'details' => [3,4,6][array_rand([3,4,6])] . ' GB RAM, ' . [16, 32, 64][array_rand([16, 32, 64])] .' GB ROM',
                'price' => rand(14999, 24999),
                'description' =>'phone '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
                'featured' => rand(0,1),
                'quantity' => rand(0, 50),
                ])->categories()->attach(2);
        }


                 //watches
                 for ($i=1; $i <= 6; $i++) {
                    Product::create([
                        'name' => 'Watch '.$i,
                        'image' => 'products\July2018\watch ('.$i.').jpg',
                        'slug' => 'watch ('.$i.')',
                        'details' => ['Smart','Digital'][array_rand(['Smart','Digital'])] . ' Watch ',
                        'price' => rand(1499, 2499),
                        'description' =>'Watch '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
                        'featured' => rand(0,1),
                        'quantity' => rand(0, 50),
                        ])->categories()->attach(4);
                }

                         //headphones
                        for ($i=1; $i <= 6; $i++) {
                            Product::create([
                                'name' => 'Headphone '.$i,
                                'image' => 'products\July2018\headphone ('.$i.').jpg',
                                'slug' => 'headphone ('.$i.')',
                                'details' => ['Wired','Wireless'][array_rand(['Wired','Wireless'])] . ' Headphone ',
                                'price' => rand(1599, 30099),
                                'description' =>'Headphone '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
                                'featured' => rand(0,1),
                                'quantity' => rand(0, 50),
                                ])->categories()->attach(3);
                        }

                        $product = Product::find(1);
                        $product->categories()->attach(2);


                          //gaming
                          for ($i=1; $i <= 6; $i++) {
                            Product::create([
                                'name' => 'Gaming '.$i,
                                'image' => 'products\July2018\gaming ('.$i.').jpg',
                                'slug' => 'gaming ('.$i.')',
                                'details' => ['PS4','XBOX'][array_rand(['PS4','XBOX'])] . ' ',
                                'price' => rand(15099, 30099),
                                'description' =>'Gaming '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
                                'featured' => rand(0,1),
                                'quantity' => rand(0, 50),
                                ])->categories()->attach(5);
                        }


                                                  //camera
                                                  for ($i=1; $i <= 6; $i++) {
                                                    Product::create([
                                                        'name' => 'Camera '.$i,
                                                        'image' => 'products\July2018\camera ('.$i.').jpg',
                                                        'slug' => 'camera ('.$i.')',
                                                        'details' => 'Digital Camera',
                                                        'price' => rand(150099, 300099),
                                                        'description' =>'Camera '. $i . ' ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!',
                                                        'featured' => rand(0,1),
                                                        'quantity' => rand(0, 50),
                                                        ])->categories()->attach(6);
                                                }


        
    }
}
