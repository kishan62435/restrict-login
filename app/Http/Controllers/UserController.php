<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function users(Request $request) {
        $users = User::select('name', 'email', 'role')->get();

        return response()->json([
            'success' => true,
            'users' => $users
        ]);
    }
}
