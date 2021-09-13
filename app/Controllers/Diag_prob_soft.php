<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\diag_prob_soft;
class Diag_prob_soft extends Controller{

    public function index(){

        return view('Soporte/DIAG_PROB_SOFT');
    }

}