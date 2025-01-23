<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    use HasFactory;

    protected $primaryKey = 'page_ID';

    protected $fillable = [
        'doneby',
        'page_name',
        'slug',
        'meta_tags',
        'description',
        'type',
        'featured_image',
        'content',
        'category_ID',
        'is_deleted'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_ID');
    }

    public function seo()
    {
        return $this->hasOne(Seo::class, 'page_ID');
    }

    public function gallery()
    {
        return $this->hasMany(Gallery::class, 'page_ID');
    }
}
