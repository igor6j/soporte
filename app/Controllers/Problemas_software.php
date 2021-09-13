<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\problemas_software;
class Problemas_software extends Controller{

    public function index(){

        return view('Soporte/problemas_software');
    }

}