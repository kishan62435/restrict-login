<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        $user->tokens()->update(['is_active' => false]);

        $token = $user->createToken('auth_token')->plainTextToken;

        $latestToken = $user->tokens()->latest()->first();

        if ($latestToken) {
            $latestToken->update([
                'is_active' => true,
                'device_info' => $request->header('User-Agent'),
                'ip_address' => $request->ip()
            ]);
        }

        if($user->isAdmin()) {
            $role = 'admin';
        }
        else{
            $role = 'user';
        }

        return response()->json(['success' => true, 'access_token' => $token, 'token_type' => 'Bearer', 'role' => $role, 'user' => $user]);
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users',
            'password' => 'required|string|min:8|max:16'
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);

        return response()->json([
            'success' => true,
            'user' => $user,
            'message' => 'User Registered!'
        ]);
    }
}
