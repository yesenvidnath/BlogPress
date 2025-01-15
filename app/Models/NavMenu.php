<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NavMenu extends Model
{
    use HasFactory;

    protected $primaryKey = 'menu_ID';

    public function menuItems()
    {
        return $this->hasMany(MenuItem::class, 'menu_items_ID');
    }
}
