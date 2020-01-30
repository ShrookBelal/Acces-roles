<?php

namespace App\Http\Controllers;

use App\setting;
use Illuminate\Http\Request;

class sitting extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $s = setting::first();
        return view('admin.pages.sitting', compact('s'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }
    public function updateSetting(Request $request, $id)
    {

        $set = setting::find($id);
        // $request->validate([
        //     'email' => 'email',
        //     'telephone' => 'numeric',
        //     'mobile' => 'numeric',
        //     'rating' => 'numeric',
        //     'like' => 'numeric',
        //     'replay' => 'numeric',
        //     'discission' => 'numeric',
        // ]);

        $set->email = request('email');
        $set->telphone  = request('telephone');
        $set->mobile = request('mobile');
        $set->facebook  = request('facebook');
        $set->linkedin  = request('linked');
        $set->youtube  = request('youtube');
        $set->instgram = request('instgram');
        $set->snapchat  = request('snapchat');
        $set->twitter = request('twitter');
        $set->point_rating  = request('rating');
        $set->point_like = request('like');
        $set->point_replay  = request('replay');
        $set->point_discussion = request('discission');
        $set->long  = request('long');
        $set->lat  = request('lat');
        $set->default_lang = request('language');
        $set->contact_email = request('emailContact');

        $set->update();
        $s = setting::first();
        return view('admin.pages.sitting', compact('s'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    { }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // dd($id);
        // $set = setting::find($id);
        // $request->validate([
        //     'email' => 'email',
        //     'telephone' => 'numeric',
        //     'mobile' => 'numeric',
        //     'rating' => 'numeric',
        //     'like' => 'numeric',
        //     'replay' => 'numeric',
        //     'discission' => 'numeric',
        // ]);
        // // $requestArray = [
        // //     'email' => $request->email,
        // //     'telphone' => $request->telephone,
        // //     'mobile' => $request->mobile,
        // //     'facebook'  => $request->facebook,
        // //     'linkedin'  => $request->linked,
        // //     'youtube'  => $request->youtube,
        // //     'instgram' => $request->instgram,
        // //     'snapchat'  => $request->snapchat,
        // //     'twitter' => $request->twitter,
        // //     'point_rating'  => $request->rating,
        // //     'point_like' => $request->like,
        // //     'point_replay'  => $request->replay,
        // //     'point_discussion' => $request->discission,
        // //     'long'  => $request->long,
        // //     'lat'  => $request->lat,
        // //     'default_lang' => $request->language,
        // //     'contact_email' => $request->emailContact,
        // // ];
        // $set->email = request('email');
        // $set->telphone  = request('telephone');
        // $set->mobile = request('mobile');
        // $set->facebook  = request('facebook');
        // $set->linkedin  = request('linked');
        // $set->youtube  = request('youtube');
        // $set->instgram = request('instgram');
        // $set->snapchat  = request('snapchat');
        // $set->twitter = request('twitter');
        // $set->point_rating  = request('rating');
        // $set->point_like = request('like');
        // $set->point_replay  = request('replay');
        // $set->point_discussion = request('discission');
        // $set->long  = request('long');
        // $set->lat  = request('lat');
        // $set->default_lang = request('language');
        // $set->contact_email = request('emailContact');
        // $set->update();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
