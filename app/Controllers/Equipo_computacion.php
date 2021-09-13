<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\equipo_computacion;
class Equipo_computacion extends Controller{


    public function index(){

        return view('Soporte/equipos_computacion');
    }

}