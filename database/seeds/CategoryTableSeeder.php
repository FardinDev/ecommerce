<?php
use App\Category;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $now = Carbon::now()->toDateTimeString();

        Category::insert([
            ['name' => 'Laptop', 'slug' => 'laptop', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Phone', 'slug' => 'phone', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Headphone', 'slug' => 'headphone', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Watch', 'slug' => 'watch', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Gaming', 'slug' => 'gaming', 'created_at' => $now, 'updated_at' => $now],
            ['name' => 'Camera', 'slug' => 'camera', 'created_at' => $now, 'updated_at' => $now],

        ]);
    }
}



