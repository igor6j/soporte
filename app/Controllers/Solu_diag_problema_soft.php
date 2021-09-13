<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\solu_diag_problema_soft;
class Solu_diag_problema_soft extends Controller{

    public function index(){

        return view('Soporte/solu_diag_prob_software');
    }

}