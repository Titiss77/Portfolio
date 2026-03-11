<?php
use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Portfolio::index');
$routes->get('tableau', 'Portfolio::tableau');
$routes->get('projets', 'Portfolio::projets');

$routes->get('contact', 'Contact::index');
$routes->post('contact/reponse', 'Contact::reponse');