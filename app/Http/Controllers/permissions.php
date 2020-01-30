<?php

namespace App\Http\Controllers;

use App\Permission;
use App\Role;
use App\permission_role;
use Illuminate\Http\Request;

class permissions extends Controller
{
    public function index()
    {
        $s = Permission::all();
        $role = Role::all();
        return view('admin.pages.permission.permission', compact('s', 'role'));
    }
    public function stor()
    {
        $role = Role::all();
        return view('admin.pages.permission.prem', compact('role'));
    }
    public function store(Request $request)
    {
        $Permi = new Permission();
        $Permi->name = $request->rname;
        $Permi->display_name = $request->rdisplay;
        $Permi->description = $request->rdescribe;
        $Permi->save();
        // $lastid = response()->json(array('success' => true, 'last_insert_id' => $Permi->id), 200);
        $lastid = $Permi->id;
        // dd($lastid);
        $per = new permission_role();
        $per->permission_id = $lastid;
        $per->role_id = $request->role;
        $per->save();
        $s = Permission::all();
        $role = permission_role::all();
        return view('admin.pages.permission.permission', compact('s', 'role'));
    }
    public function edit($id)
    {
        $s = Permission::find($id);
        // $role = permission_role::find($permission_id);
        $roles = Role::all();
        return view('admin.pages.permission.editper', compact('s', 'roles'));
    }
    public function update(Request $request, $id)
    {

        $Permi = Permission::find($id);
        $Permi->name = $request->rname;
        $Permi->display_name = $request->rdisplay;
        $Permi->description = $request->rdescribe;
        $Permi->update();
        // $lastid = response()->json(array('success' => true, 'last_insert_id' => $Permi->id), 200);
        // $lastid = $Permi->id;
        // dd($lastid);

        $pe = permission_role::where("permission_roles.permission_id", $id)->delete();
        $per = new permission_role();
        $per->permission_id = $id;
        $per->role_id = $request->role;
        $per->save();

        $s = Permission::all();
        $role = permission_role::all();
        return view('admin.pages.permission.permission', compact('s', 'role'));
    }

    public function destroy($id)
    {
        Permission::find($id)->delete();
        $per = permission_role::where("permission_roles.permission_id", $id)->delete();
        $s = Permission::all();
        return view('admin.pages.permission.permission', compact('s'));
    }
}
