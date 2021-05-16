'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "42c0d2342ad01cfaba11ca5bbb03832f",
"index.html": "537e9b17864e60dc3c57f4e17f1565aa",
"/": "537e9b17864e60dc3c57f4e17f1565aa",
"main.dart.js": "d1cb088f80edfc5ccf397f1508552115",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "3f7673b4831b475b0f7d4ca5ca862a1d",
"assets/AssetManifest.json": "10389291a64bc59bccd9d48d97e52f53",
"assets/NOTICES": "b5c67b636e2ff536cb331e70704183b3",
"assets/FontManifest.json": "870ed345cb48aa407866ef0c52f0a781",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/map_style.txt": "a82dd029c25c24b05b83d9a2a0584ff6",
"assets/assets/stories-items/grid-items-23.png": "d4256547596c457db634d1b65de160ed",
"assets/assets/stories-items/grid-items-22.png": "277224615027241cd731f440e6dbf47d",
"assets/assets/stories-items/grid-items-08.png": "65f716be7c847a294d8ec29f5dad730f",
"assets/assets/stories-items/grid-items-20.png": "274d5f5e1b9bf8a46690c74a84940847",
"assets/assets/stories-items/grid-items-21.png": "86d077dce2498cef9165741335a13113",
"assets/assets/stories-items/grid-items-09.png": "d410a007cd3610dc3737be7144839a68",
"assets/assets/stories-items/grid-items-25.png": "119e0f325d3c8d56e2cc264455f04eac",
"assets/assets/stories-items/grid-items-19.png": "b9b78a791174bbe4fd8bdf72f754e0f7",
"assets/assets/stories-items/grid-items-18.png": "27a9d03c4b5c4d468b5ced7486fd0374",
"assets/assets/stories-items/grid-items-24.png": "559460c7c3e0aafaa00dc235272db62f",
"assets/assets/stories-items/grid-items-26.png": "7732e408e7dd398e6d77f003e90d8122",
"assets/assets/stories-items/grid-items-27.png": "16460708d0de34ae9339643d0084c216",
"assets/assets/stories-items/grid-items-02.png": "5de6bed2af73a2652e7e6bb54f6f8ef0",
"assets/assets/stories-items/grid-items-16.png": "bacd9a2020dcdfb95030460c761c5881",
"assets/assets/stories-items/grid-items-17.png": "33d3c0439d4adc15cf004e82f025eefc",
"assets/assets/stories-items/grid-items-03.png": "398b26afca1255e05288df059baf099f",
"assets/assets/stories-items/grid-items-15.png": "325e1e0605ae33f99696fad712876500",
"assets/assets/stories-items/grid-items-01.png": "cff07ba1732e77f971afb75aace521d4",
"assets/assets/stories-items/grid-items-14.png": "4a1275823a5431043d2a19bff28dd43f",
"assets/assets/stories-items/grid-items-28.png": "a37751f32e6d45db256267182382bd9d",
"assets/assets/stories-items/grid-items-10.png": "2c6c9b60b7b1973f113e4484e736d22f",
"assets/assets/stories-items/grid-items-04.png": "9dd7992f223b16c48f71d700e5d257e0",
"assets/assets/stories-items/grid-items-05.png": "08279d23760bdbb13fa927f08ab9eb59",
"assets/assets/stories-items/grid-items-11.png": "4514cf382ac021bbd4a2f8cf6c4704c8",
"assets/assets/stories-items/grid-items-07.png": "df0db8b355eafb77a67de1acc346f88b",
"assets/assets/stories-items/grid-items-13.png": "64f8423b195163aa80e2839e3fbfc3ec",
"assets/assets/stories-items/grid-items-12.png": "66caf292d8018af4e825e964392323f9",
"assets/assets/stories-items/grid-items-06.png": "a8349f22f6e56a574e51d26064f91cc6",
"assets/assets/images/ic_transaction.png": "c2293506657a3234905510f4b0eda302",
"assets/assets/images/ic_tow_truck.png": "dd8da52b1e473601781f2b1dcef6cbaf",
"assets/assets/images/ic_notification.png": "fdb0f33b85e84972ffa7e1cc546185fd",
"assets/assets/images/anim_notify.json": "5085a21ce4e19ff2c7a259f45b1e79ac",
"assets/assets/images/ic_tire.png": "b90921bce6d29118c0a1ef5278f5846c",
"assets/assets/images/ic_home.png": "c7f6c64ec59d4d4a19245a61ef49555b",
"assets/assets/images/ic_privacy.png": "568ef0defea10e7f2a23f424b0e45bdf",
"assets/assets/images/dollar.png": "d59f34395f64a82ebb5fbdb948c8d8d2",
"assets/assets/images/user.png": "d4638031131a62d00ce7ec0456081526",
"assets/assets/images/ic_feedback.png": "a8ece2d3b5aa8f88b8c0dbd92e7d0084",
"assets/assets/images/ic_profile.png": "6081f3419e14f28dac3c995240fc082f",
"assets/assets/images/anim_empty_box.json": "1364b16f8027360deb948ed969ab0f40",
"assets/assets/images/ic_invite1.png": "f16fcae144af16d83af35abdbe9b7f4b",
"assets/assets/images/top_back.png": "5b3011e049a4cc7c5408b193dd4c53da",
"assets/assets/images/ic_profile1.png": "b53d3f03b2d87775bb32ae85986b654f",
"assets/assets/images/anim_saves.json": "ca164a2eb809cea73f4a1361ce69041e",
"assets/assets/images/ic_logout.png": "9634bd4ccebd60bc912e17a059e148a0",
"assets/assets/images/intro1.png": "dc60be6dbe92bf478afe3dfb883d1e83",
"assets/assets/images/intro0.png": "1ef3c6dd433daf03b375fc43d61ce1e5",
"assets/assets/images/intro2.png": "a1ec6e9e8bb69cb075555cabaf207b93",
"assets/assets/images/ic_how.png": "47a67efa1ed1def446cdb01c3fa707a9",
"assets/assets/images/ic_bank.png": "0a364e16d5706163ce902e8c0d628eb9",
"assets/assets/images/ic_invite.png": "ac5d09863c8fef3c401ae441d4d974c8",
"assets/assets/images/ic_settings.png": "1f05e907edc5f86cb2119eff66d10c85",
"assets/assets/images/tow_truck.png": "ea5257e5e87f2e4688441bf86915cdbe",
"assets/assets/images/ic_launcher.png": "0fa99c362151a1c54a905d43a641bcfc",
"assets/assets/images/ic_safety.png": "fc182e36f3ba6732f2e5757070cc270f",
"assets/assets/images/ic_mechanic.png": "7aa735c65d071dbf485af6465bc41983",
"assets/assets/images/ic_help.png": "5b7b9142abcadba4a80c2640aa427654",
"assets/assets/images/ic_wallet.png": "29d35921810d932c0022346088f300e0",
"assets/assets/images/ic_services.png": "f1999e232a366fb72598f8d1dcd5f298",
"assets/assets/images/ic_earn.png": "f232c73d499f102f9e72af997cc5d697",
"assets/assets/images/ic_payout.png": "11d9aa611beadbbf7f6ba6f3cc1b6af8",
"assets/assets/images/dollar1.png": "eac8eefd9e3e5ff29ad8213736b53cbb",
"assets/assets/images/anim_photos.json": "5ff31330ca213be9047d82c948d76787",
"assets/assets/images/anim_truck.json": "cfe612fa1b112d0021ca455e4900c0ed",
"assets/assets/images/anim_empty_state.json": "6a65a6ec4da50a5a4db16ba1b373db9e",
"assets/assets/images/ic_terms.png": "00f64845e1dbd7778fbd6cd86428cbb8",
"assets/assets/images/ic_car.png": "ac8dc77f5a2f2b2db985f3723f860eb1",
"assets/assets/images/anim_chat.json": "5437f557199f0ea4a961b0bda9b05b26",
"assets/assets/icons/instant.png": "2b7cc224387809e067657b3aac8ffe2a",
"assets/assets/icons/settings.png": "062c3e431498266712c2bee2845ecf62",
"assets/assets/icons/courses.png": "0133a8d239c642bcd6b211eb11a04db1",
"assets/assets/icons/verified-user.png": "b8a4c4030f2c0eb8a2616e6d0836c0cf",
"assets/assets/icons/user.png": "91616bf3664b757ef26f3ea2e7990be0",
"assets/assets/icons/house.png": "32422c64d14222121ea832cd6f0390cf",
"assets/assets/icons/search.png": "b92e04a08f202bac78cb1e4b32bfe5cd",
"assets/assets/icons/video-call.png": "c42bcb05d8d95e8b2c3024163a6dabae",
"assets/assets/icons/menu.png": "40ea87a67935a7bceef51420ebb356e0",
"assets/assets/icons/stories.png": "306cd4ab9eda424b6333224f2dcd6f84",
"assets/assets/icons/write.png": "f8e574dc3a1866448af8c6e558633c76",
"assets/assets/icons/stickers.png": "06d99c9f89041504e582f3e2852e1c22",
"assets/assets/icons/app_full.png": "25938a327e782be454fc7287e051c604",
"assets/assets/icons/attachment.png": "d95da41507650d91cfc5261589400232",
"assets/assets/icons/camera.png": "33d3711c06385a3795cd4eb2303cd15a",
"assets/assets/icons/voice-call.png": "aae59d747f1ca04814dd308b335321db",
"assets/assets/chat-imgs/chat-imgs-07.png": "f635d9f5813b85227ed18f493af37dfc",
"assets/assets/chat-imgs/chat-imgs-06.png": "4ab80f2d22ce81c49d3fac7caa9af94b",
"assets/assets/chat-imgs/chat-imgs-04.png": "2d3632b471853b933e14601e757550e1",
"assets/assets/chat-imgs/chat-imgs-05.png": "c36de4537e518243e31e66b15db8749c",
"assets/assets/chat-imgs/chat-imgs-01.png": "e2a13e07b8fc42f45bcdbe410f05a0c1",
"assets/assets/chat-imgs/chat-imgs-02.png": "b4d1363a7de028d6d491cedf2dca4214",
"assets/assets/chat-imgs/chat-imgs-03.png": "bbf49baa7268ca283360516613dba9aa",
"assets/assets/chat-imgs/chat-imgs-08.png": "97320cf8bd8933eb28b58caa1c210bb0",
"assets/assets/chat-imgs/chat-imgs-09.png": "5aca4a34b71ce928cea4519c4bf27dbe",
"assets/assets/fonts/AssociateSansBold.otf": "7ee4c89b07d508b1fd7483d335506414",
"assets/assets/fonts/SF-Pro-Display-Light.otf": "ac5237052941a94686167d278e1c1c9d",
"assets/assets/fonts/AssociateSansRegular.otf": "45018cf17418310c240e978e39527d27",
"assets/assets/fonts/SF-Pro-Display-Regular.otf": "aaeac71d99a345145a126a8c9dd2615f",
"assets/assets/fonts/SF-Pro-Display-Bold.otf": "644563f48ab5fe8e9082b64b2729b068",
"assets/assets/fonts/SF-Pro-Display-Medium.otf": "51fd7406327f2b1dbc8e708e6a9da9a5",
"assets/assets/fonts/SF-UI-Text-Bold.otf": "89d0374d234764cc5864bada6e5bb6be",
"assets/assets/fonts/SF-Pro-Display-Heavy.otf": "a545fc03ce079844a5ff898a25fe589b",
"assets/assets/fonts/SF-UI-Text-Regular.otf": "e9d00fbc58c8f0ebbe52df3bcbc98bf4",
"assets/assets/fonts/SF-Pro-Display-Semibold.otf": "e6ef4ea3cf5b1b533a85a5591534e3e4",
"assets/assets/fonts/SF-UI-Text-Light.otf": "577cd1ed5ebcffd94378c7cf673e56f6",
"assets/assets/fonts/SF-Pro-Text-Regular.otf": "404e4373cba1344d28a4a257152ac8b8",
"assets/assets/fonts/SF-Pro-Text-Bold.otf": "5b6c7cdfe0acd0fcc93cef7984a08740",
"assets/assets/fonts/SF-Pro-Text-Semibold.otf": "8f079b59ff6659b39b41bc2255c968b8",
"assets/assets/fonts/SF-UI-Text-Medium.otf": "69c74a5383d8c4b52e43e9d00a279f94",
"assets/assets/fonts/SF-UI-Text-Semibold.otf": "31e9db99e2a3cd97642489d7f0c3e8db",
"assets/assets/fonts/SF-Pro-Text-SemiboldItalic.otf": "b006a42590a5809de6231aa535fabea1"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
