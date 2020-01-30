<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class role_user extends Authenticatable
{
    public $timestamps = false;
    protected $table = 'role_user';
}
