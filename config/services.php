<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, SparkPost and others. This file provides a sane default
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],
    'facebook' => [
        'client_id' => '960154277680738',
        'client_secret' => '606d1dadbf2715bcae8c6b935a93c276',
        'redirect' => 'https://localhost/Reviwe/callback/facebook',
    ],
    'google' => [
        'client_id' => '1015766478247-4p0kb7kt7518emo88u1v5lr8dqc9l77s.apps.googleusercontent.com',
        'client_secret' => '3qscTdJk9lJGxp7Iogkw75Wt',
        'redirect' => 'https://localhost/Reviwe/google/callback',
    ],

];
