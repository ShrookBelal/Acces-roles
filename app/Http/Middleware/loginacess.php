<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class loginacess
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        if (Auth::check() && Auth::user()->isAdmin() == 1) {
            return $next($request);
        }
        // $log = Auth::user()->admin;
        // if ($log == 1) {
        //     return redirect('/admin');
        // }

        // if (request()->has('email')) {
        //     if (request('email') != 'mostafazizo96@yahoo.com') {
        //         return redirect('cannot');
        //     }
        // }
        return redirect('/');
    }
}
