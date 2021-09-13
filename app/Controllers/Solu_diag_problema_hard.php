<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\solu_diag_problema_hard;
class Solu_diag_problema_hard extends Controller{

    public function index(){

        return view('Soporte/solu_diag_prob_hardware');
    }

}