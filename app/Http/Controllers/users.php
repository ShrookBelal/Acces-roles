<?php

namespace App\Http\Controllers;

use App\Permission;
use App\Role;
use Illuminate\Http\Request;
use App\User;
use App\role_user;
use Illuminate\Support\Facades\Hash;

class users extends Controller
{
    public function index()
    {
        $s = User::where('admin', 1)->get();
        return view('admin.pages.users.user', compact('s'));
    }

    public function stor()
    {
        $roles = Role::all();
        return view('admin.pages.users.userform', compact('roles'));
    }
    public function store(Request $request)
    {
        $user = new User();
        $user->name = $request->uname;
        $user->email = $request->uemail;
        $user->phone = $request->uphone;
        $user->password = Hash::make(rand());
        $user->admin = $request->utype;
        $user->save();
        $lastid = $user->id;
        $role = new role_user();
        $role->user_id = $lastid;
        $role->role_id = $request->urole;
        $role->save();
        $s = User::where('admin', 1)->get();
        return view('admin.pages.users.user', compact('s'));
    }

    public function show($id)
    {
        // $urol = role_user::where("role_users.user_id", $id);
        // $urole = role_user::find($urol);
        $s = User::find($id);
        $roles = Role::all();
        // dd($s) . all();
        return view('admin.pages.users.useredit', compact('s', 'roles', 'perm'));
    }
    public function update(Request $request, $id)
    {
        $users = User::find($id);
        $users->name = $request->uname;
        $users->email = $request->uemail;
        $users->phone = $request->uphone;
        $users->admin = $request->utype;
        $users->update();
        $urol = role_user::where("role_user.user_id", $id)->delete();
        $user = new role_user();
        $user->user_id = $id;
        $user->role_id = $request->urole;
        $user->save();

        // $s = User::find($id);
        $roles = Role::all();
        $s = User::where('admin', 1)->get();
        return view('admin.pages.users.user', compact('s'));
    }

    public function destroy($id)
    {
        User::find($id)->delete();
        $per = role_user::where("role_user.user_id", $id)->delete();
        $s = User::all();
        return view('admin.pages.users.user', compact('s'));
    }
}
