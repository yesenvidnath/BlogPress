<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenuItem extends Model
{
    use HasFactory;

    protected $primaryKey = 'menu_items_ID';

    public function navMenu()
    {
        return $this->belongsTo(NavMenu::class, 'menu_items_ID');
    }
}
