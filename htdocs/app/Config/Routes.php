<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('tableau', 'Home::tableau');
$routes->get('projets', 'Home::projets');
$routes->get('contact', 'Home::contact');
$routes->post('contact/submit', 'Home::submitContact');