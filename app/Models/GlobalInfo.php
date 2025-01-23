<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GlobalInfo extends Model
{
    use HasFactory;

    protected $primaryKey = 'info_ID';

    public function phoneNumbers()
    {
        return $this->belongsTo(PhoneNumbersList::class, 'phone_numbers_list_ID');
    }

    public function locations()
    {
        return $this->belongsTo(LocationsList::class, 'locations_list_ID');
    }

    public function emails()
    {
        return $this->belongsTo(EmailList::class, 'email_list_ID');
    }
}
