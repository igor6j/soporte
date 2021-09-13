<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\problemas_hardware;
class Problemas_hardware extends Controller{

    public function index(){

        return view('Soporte/problemas_hardware');
    }

}