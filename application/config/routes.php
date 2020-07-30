<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'FirstOpen';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['secret404'] = 'backend/FirstOpen';
$route['user'] = 'backend/User/index';
$route['headline'] = 'backend/Headline/index';

$route['produk'] = 'backend/Produk/index';

$route['produk/add'] = 'backend/Produk/add';
$route['produk/detail/(:num)'] = 'backend/Produk/getById/$1';

$route['team'] = 'backend/Team/index';
$route['team/add'] = 'backend/Team/add';
$route['team/delete/(:num)'] = 'backend/Team/delete/$1';
$route['team/detail/(:num)'] = 'backend/Team/detail/$1';
$route['team/edit/(:num)'] = 'backend/Team/edit/$1';
$route['team/edit'] = 'backend/Team/edit';

$route['login'] = 'backend/Login/index';
$route['logout'] = 'backend/Login/Logout';
$route['loginAdmin'] = 'backend/Login/doLogin';
$route['Home'] = 'backend/FirstOpen/index';

$route['listHarga'] = 'FirstOpen/listHarga';

$route['berita'] = 'backend/Berita/index';
$route['berita/add'] = 'backend/Berita/add';

$route['user/save'] = 'backend/User/save';

$route['detail/(:num)'] = 'FirstOpen/detail/$1';

$route['harga'] = 'backend/Harga/index';
$route['harga/edit'] = 'backend/Harga/edit';
$route['harga/(:num)'] = 'backend/Harga/getById/$1';
$route['berita/detail/(:num)'] = 'backend/Berita/getById/$1';
$route['berita/edit/(:num)'] = 'backend/Berita/edit/$1';
$route['berita/edit/'] = 'backend/Berita/edit';
$route['berita/delete/(:num)'] = 'backend/Berita/delete/$1';
$route['produk/delete/(:num)'] = 'backend/Produk/delete/$1';

$route['slider'] = 'backend/Slider/index';
$route['slider/save'] = 'backend/Slider/save';
$route['slider/add'] = 'backend/Slider/add';
$route['slider/delete'] = 'backend/Slider/delete';
$route['contact'] = 'backend/Contact/index';
