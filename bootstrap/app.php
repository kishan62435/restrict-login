<?php

use App\Http\Middleware\IsAdmin;
use App\Http\Middleware\IsTokenActive;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

use Illuminate\Validation\ValidationException;
use Symfony\Component\HttpKernel\Exception\HttpException;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        api: __DIR__.'/../routes/api.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware): void {
        //
        $middleware->alias(['IsTokenActive' => IsTokenActive::class, 'IsAdmin' => IsAdmin::class]);
        
    })
    ->withExceptions(function (Exceptions $exceptions): void {
        $exceptions->render(function (ValidationException $e, $request) {
            return response()->json([
                'success' => false,
                'errors' => $e->errors(),
                'message' => 'Validation Failed!'
            ], 422);
        });

        $exceptions->render(function (HttpException $e, $request) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage() ?? 'HTTP Error!'
            ], $e->getStatusCode());
        });

        $exceptions->render(function (Throwable $e, $request) {
            return response()->json([
                'succss' => false,
                'message' => $e->getMessage() ?? 'Server Error!'
            ]);
        });
    })->create();
