<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\software;
class Software extends Controller{

    public function index(){

        return view('Soporte/software');
    }

}