<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<form class="mt-10" method="post" action="/api/upload" enctype="multipart/form-data">
    <label class="text-indigo-500 text-xl" for="img">Select image to upload</label>
    <input type="file" id="image" name="image" accept="image/jpeg, image/png" required>
    <button class="border border-indigo-500 bg-indigo-500 text-white rounded-md px-4 py-2 m-2 transition duration-500 ease select-none hover:bg-indigo-600 focus:outline-none focus:shadow-outline"
            type="submit">Upload
    </button>
</form>
</body>
</html>
