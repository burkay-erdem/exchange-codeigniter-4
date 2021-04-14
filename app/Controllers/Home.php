<?php

namespace App\Controllers;

class Home extends BaseController
{
	public function index()
	{
		echo view('template/header');
		echo view('iplik_view');
		echo view('template/footer');
	}
}
