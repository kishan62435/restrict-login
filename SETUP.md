# Laravel Restrict Login - Setup Guide

## Prerequisites

- **PHP 8.2+** with extensions: BCMath, Ctype, cURL, DOM, Fileinfo, JSON, Mbstring, OpenSSL, PCRE, PDO, Tokenizer, XML
- **Composer** (PHP dependency manager)
- **Node.js 18+** and **npm**

## Quick Setup

1. **Clone and navigate to project**
   ```bash
   cd restrict-login
   ```

2. **Install PHP dependencies**
   ```bash
   composer install
   ```

3. **Install Node.js dependencies**
   ```bash
   npm install
   ```

4. **Environment setup**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

5. **Database setup** (SQLite - already configured)
   ```bash
   php artisan migrate
   ```

6. **Start development server (Laravel only)**
   ```bash
   php artisan serve
   ```



## Project Features

- Laravel 12 with Sanctum authentication
- MySQL database
- Role-based access control
