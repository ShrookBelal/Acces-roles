<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Auth\Middleware\loginacess;

class WebsiteController extends Controller
{

    public function index()
    {
        return view('website.home');
    }
}
