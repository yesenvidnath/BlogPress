<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Seo extends Model
{
    use HasFactory;

    protected $primaryKey = 'seo_ID';

    public function page()
    {
        return $this->belongsTo(Page::class, 'page_ID');
    }
}
