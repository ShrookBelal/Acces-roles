<?php

namespace App\Http\Controllers;

use App\Role;
use Illuminate\Http\Request;

class roles extends Controller
{
    public function __construct()
    {
        //$this->middleware(['role:roler']);
    }
    public function index()
    {
        $s = Role::all();
        return view('admin.pages.roles.role', compact('s'));
    }
    public function stor()
    {
        return view('admin.pages.roles.addrole');
    }
    public function store(Request $request)
    {
        $role = new Role();
        $role->name = $request->rname;
        $role->display_name = $request->rdisplay;
        $role->description = $request->rdescribe;
        $role->save();
        $s = Role::all();
        return view('admin.pages.roles.role', compact('s'));
    }
    public function edit($id)
    {
        $s = Role::find($id);
        return view('admin.pages.roles.editrole', compact('s'));
    }
    public function update(Request $request, $id)
    {
        $role = Role::find($id);
        $role->name = $request->rname;
        $role->display_name = $request->rdisplay;
        $role->description = $request->rdescribe;
        $role->update();

        $s = Role::all();
        return view('admin.pages.roles.role', compact('s'));
    }

    public function destroy($id)
    {
        Role::find($id)->delete();
        $s = Role::all();
        return view('admin.pages.roles.role', compact('s'));
    }
}
