<?php

namespace App\Http\Controllers;
use App\Table;
use Illuminate\Http\Request;

class TablesController extends Controller
{
    public function index()
    {
        
        $tables = Table::all();
        return View ('table', compact('tables'));
    }
}
