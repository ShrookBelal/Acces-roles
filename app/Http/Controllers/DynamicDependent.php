<?php

namespace App\Http\Controllers;

use App\Permission;
use Illuminate\Http\Request;
use DB;
use App\Role;


class DynamicDependent extends Controller
{
    function index()
    {
        $per = Role::groupBy('name')->get();
        return view('admin.pages.users.list', compact('per'));
    }
    function fetch(Request $request)
    {
        $select = $request->get('select');
        $value = $request->get('value');
        $dependent = $request->get('dependent');
        $permissionsIDs = DB::table('permission_roles')->where($select, $value)->pluck('permission_id')->toArray();
        $data = Permission::whereIN('id', $permissionsIDs)->get();
        $output = '<option value="">Select a Permission</option>';
        foreach ($data as $row) {
            $output .= '<option value="' . $row->id . '">' . $row->name . '</option>';
        }
        echo $output;
    }
}
