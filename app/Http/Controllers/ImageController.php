<?php

namespace App\Http\Controllers;

use App\Http\Services\ImageService;
use Illuminate\Http\Request;

class ImageController extends Controller
{
    /**
     * @var ImageService
     */
    private $service;

    public function __construct(ImageService $service)
    {
        $this->service = $service;
    }

    public function upload(Request $request)
    {
        $this->service->upload($request);
    }

    public function getSliderImages()
    {
        return json_encode($this->service->getSliderImages());
    }

    public function getSideBarImages()
    {
        return json_encode($this->service->getSideBarImages());
    }

    public function getBottomImages()
    {
        return json_encode($this->service->getBottomImages());
    }

    public function addClick(int $id)
    {
        $this->service->addClick($id);
    }

    public function addView(int $id)
    {
        $this->service->addView($id);
    }

    public function all()
    {
        return json_encode($this->service->all());
    }
}
