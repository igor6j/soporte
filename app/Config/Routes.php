<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php'))
{
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php'))
{
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
$routes->get('diagnostico_problema_hardware', 'Diag_prob_hard::index');
$routes->get('diagnostico_problema_soft', 'Diag_prob_soft::index');
$routes->get('equipo_computacion', 'Equipo_computacion::index');
$routes->get('hardware', 'Hardware::index');
$routes->get('problemas_hardware', 'Problemas_hardware::index');
$routes->get('Problemas_software', 'Problemas_software::index');
$routes->get('software', 'Software::index');
$routes->get('solu_diag_problema_hard', 'Solu_diag_problema_hard::index');
$routes->get('solu_diag_problema_soft', 'Solu_diag_problema_soft::index');