<?php


namespace App\Http\Services;


use App\Models\Image;
use Illuminate\Http\Request;
use Intervention\Image\ImageManager;

class ImageService
{
    /**
     * @var ImageManager
     */
    private $imageManager;

    public function __construct(ImageManager $imageManager)
    {
        $this->imageManager = $imageManager;
    }

    public function upload(Request $request)
    {
        $files = $request->all('files')['files'];
        $places = $request->all('places')['places'];
        $urls = $request->all('urls')['urls'];
        $types = $request->all('types')['types'];

        for ($x = 0; $x < count($files); $x++) {
            $location = $this->createPath($files[$x]->getClientOriginalName()) . $files[$x]->extension();
            Image::create([
                'originalName' => $files[$x]->getClientOriginalName(),
                'place' => (int)$places[$x],
                'url' => $urls[$x],
                'type' => $types[$x],
                'location' => $location
            ]);
            if ($places[$x] == 1) {
                $width = 1000;
                $height = 250;
            }
            if ($places[$x] == 2) {
                $width = 150;
                $height = 300;
            }
            if ($places[$x] == 3) {
                $width = 400;
                $height = 200;
            }
            $this->imageManager->make($files[$x]->path())->resize($width, $height)->save($location);
        }
    }

    public function createPath(string $location): string
    {
        $cryptFileName = hash('ripemd160', $location) . time();

        $firstFolder = substr($cryptFileName, 2, 2);
        $secondFolder = substr($cryptFileName, 4, 2);

        if (!file_exists("../storage/images/$firstFolder/$secondFolder")) {
            mkdir("../storage/images/$firstFolder/$secondFolder", 0755, true);
        }
        return "../storage/images/$firstFolder/$secondFolder/$cryptFileName.";
    }

    public function getSliderImages()
    {
        $images = Image::where(['place' => 1])->inRandomOrder()->limit(10)->get();
        $imagesToExport = [];

        foreach ($images as $image) {
            $imageBase64 = 'data:' . mime_content_type($image->location) . ';base64,' . base64_encode(file_get_contents($image->location));
            $imagesToExport[] = ['url' => $image->url, 'type' => $image->type, 'image' => $imageBase64, 'id' => $image->id];
        }
        return $imagesToExport;
    }

    public function getSideBarImages()
    {
        $image = Image::where(['place' => 2])->inRandomOrder()->first();
        $image->update(['views' => ($image->views + 1)]);

        $imageBase64 = 'data:' . mime_content_type($image->location) . ';base64,' . base64_encode(file_get_contents($image->location));
        return ['url' => $image->url, 'type' => $image->type, 'image' => $imageBase64, 'id' => $image->id];
    }

    public function getBottomImages()
    {
        $images = Image::where(['place' => 3])->inRandomOrder()->limit(3)->get();
        $imagesToExport = [];

        foreach ($images as $image) {
            $image->update(['views' => ($image->views + 1)]);
            $imageBase64 = 'data:' . mime_content_type($image->location) . ';base64,' . base64_encode(file_get_contents($image->location));
            $imagesToExport[] = ['url' => $image->url, 'type' => $image->type, 'image' => $imageBase64, 'id' => $image->id];
        }
        return $imagesToExport;
    }

    public function addClick(int $id)
    {
        $image = Image::find($id);
        $image->update(['clicks' => ($image->clicks + 1)]);
    }

    public function addView(int $id)
    {
        $image = Image::find($id);
        $image->update(['views' => ($image->views + 1)]);
    }

    public function all()
    {
        $images = Image::all();
        $imagesToExport = [];

        foreach ($images as $image) {
            $imageBase64 = 'data:' . mime_content_type($image->location) . ';base64,' . base64_encode(file_get_contents($image->location));
            $imagesToExport[] = ['url' => $image->url,
                'place' => $image->place,
                'image' => $imageBase64,
                'id' => $image->id,
                'views' => $image->views,
                'clicks' => $image->clicks
            ];
        }
        return $imagesToExport;
    }
}
