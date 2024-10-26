'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "fc65bf7740489f51437a71021738df60",
"version.json": "1ccee9e2d812a849d29529c7a829aeb8",
"index.html": "f90c4c7a0334a08021816341e8b924ad",
"/": "f90c4c7a0334a08021816341e8b924ad",
"main.dart.js": "cc36cae0e52c3257d7c20b54c9f4076d",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "30fe8fa53c70449129e50e048330b607",
"assets/AssetManifest.json": "903dcd7ce7c563e3d07ae67190b2be5c",
"assets/NOTICES": "946409712a93fb504460a067b7a782eb",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "ed7934e3d980d4950943a01174b6a4d8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "2b78c6984d09e7c34db4d8a356586032",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/assets/s4-4.png": "de2fc8bca68939f41909c4371d8581f1",
"assets/assets/s12-2.png": "c3a91e5317b8071136501263e3ded933",
"assets/assets/s2-2.png": "fa2872e8fc27163a3aa6e1e8f8afffdb",
"assets/assets/s10-0.png": "578e11e3a3b450dd8c04f62d67b45c4f",
"assets/assets/s0-0.png": "68c8cdb3ccd518e1143eb3828067899e",
"assets/assets/s0-1.png": "5a401de582b3e1062548d4858c9c8a11",
"assets/assets/s10-1.png": "1feb65c8cb02c5e1d1a15a49f9d2041a",
"assets/assets/s2-3.png": "1503839f2fc244e0fe37cde8e37ba6ea",
"assets/assets/s12-3.png": "dadaeb1283e8c684eef566fa9a548e06",
"assets/assets/s4-5.png": "3eaf28cd8d4eda68240889aa99d7cfe0",
"assets/assets/o8.png": "56cc849477a9d7ac547fa7b300944342",
"assets/assets/s12-1.png": "da91855a3a5b4453bea633a4669c4596",
"assets/assets/s2-1.png": "31762f4cf07775ca5708558c8b8b7254",
"assets/assets/s0-2.png": "bd85f229b8c8a54dae1bc815d6c7b3a9",
"assets/assets/wa1.png": "75d230763968604b5584a5edc997f497",
"assets/assets/s2-0.png": "f12105c5fcb5474e55d292fef6fce666",
"assets/assets/s12-0.png": "5ec968bd92bb807f7abfe20f557eaf09",
"assets/assets/s4-6.png": "68c1870ba5021cd0f01260cf8f4541ec",
"assets/assets/o9.png": "1d82aa2349c85dfbf657b75d9bdbf11d",
"assets/assets/s6-4.png": "3783ab8c123b0da9bf9c9a6f2b4444cf",
"assets/assets/s6-0.png": "d65df0540e4c7028b833f11b7c167e4c",
"assets/assets/o10.png": "3bd9f7f84dfb1c8337358beb93bba527",
"assets/assets/s14-2.png": "68b56688471567da69fb67da471dc317",
"assets/assets/s4-2.png": "ed24353fb1f1df0127eaf22ea99203b6",
"assets/assets/s12-4.png": "5c088e2d6629b01ef09eeba857050858",
"assets/assets/s2-4.png": "d2b1ed4aedf668dec393dc41d5e34a94",
"assets/assets/s12-5.png": "bfb2b77817eac7a206aa4da6234ee358",
"assets/assets/s4-3.png": "49cae5a8862f2c36e240d6cffe35d637",
"assets/assets/s14-3.png": "cc13d0687709d00b4a028ef0bba7ef25",
"assets/assets/o11.png": "9b5e84354337524e23004e973b808141",
"assets/assets/s6-1.png": "cb186c8211a8ad9fd7bdca771bb929a0",
"assets/assets/s6-3.png": "2a769ff0021c5d97e765bf35b4470620",
"assets/assets/s14-1.png": "400b4d4c430b1eaa1c00d9a278bd05c9",
"assets/assets/s4-1.png": "f5476674ff8bd524e2a2cd6a7a7b9466",
"assets/assets/s12-7.png": "24730be1cb18071cd82456324be6694c",
"assets/assets/s12-6.png": "bc358118161b8d6c6ee178a5073a3477",
"assets/assets/s4-0.png": "96df064f3198bdaed9247b36a4c0a8a4",
"assets/assets/s14-0.png": "5375e4968d3f01677f102173a9df495a",
"assets/assets/o12.png": "be981049a42af520f915f942bb9eee5f",
"assets/assets/s6-2.png": "f6e8d88f34e6ff627d8194bdc132adf4",
"assets/assets/in.svg": "84d9854446e26dbbc9acc7ca4ceb1ac3",
"assets/assets/s1-3.png": "3ca4141e715fd7cc5b80554a8dacbc10",
"assets/assets/s13-1.png": "20318eed6e63743f58768bee3ec4c9da",
"assets/assets/s3-1.png": "55ee124af8b20c30d08b629cd2ebec7a",
"assets/assets/s7-5.png": "3a26cd68ffbd0bef46e7f9815832594b",
"assets/assets/s7-4.png": "187d930eb61d7d0f839e2d1aae933c84",
"assets/assets/s3-0.png": "c109fcb760bfaaaa39a0bead0ec376f3",
"assets/assets/s13-0.png": "cb7ec05ac63b5ed97f93a72c2448180a",
"assets/assets/s1-2.png": "5a62de9103e7c76c1cd9400cc9007429",
"assets/assets/s11-0.png": "f85322eb864d6f15d24c226fe0a71405",
"assets/assets/s1-0.png": "037d74c6d46082798988583fe1aca084",
"assets/assets/s13-2.png": "05aa2a217e0914d6755bacba0d56ba15",
"assets/assets/s3-2.png": "ceb4204e52560747570e13a7e790859d",
"assets/assets/Group%252011.png": "a189fee34978feff86f62c6a757ea4ba",
"assets/assets/s13-3.png": "0eb1541c303a46702850640f56f10485",
"assets/assets/s1-1.png": "33babf4cc30c53a01968f53570eb4de0",
"assets/assets/s4.png": "f3681ee9e643668362ed4db1752cc487",
"assets/assets/s13-7.png": "b8fb853a89be5f45e038ebaec9774315",
"assets/assets/s5-1.png": "d105665d1c7cbc3238dc04271637ce9d",
"assets/assets/s7-3.png": "309482b129cd5493014493a490457408",
"assets/assets/s7-2.png": "fa0707226718302fc7881982b6467915",
"assets/assets/s5-0.png": "a08b09e58556735bb88c21bfa8cbea53",
"assets/assets/tel.svg": "e34f849b50c7e4c329ca8f6363092dee",
"assets/assets/s13-6.png": "a5c63cdbb7c224e350f0a5fad68da7d2",
"assets/assets/s1.png": "c13559c7bcda7fe08345ba1dab92a2e1",
"assets/assets/s3.png": "c598d366cfa31b1f94a91ac8c1ff8828",
"assets/assets/s13-4.png": "c45814ed6e032728b3b650fee5ce5b00",
"assets/assets/s5-2.png": "81bca11467cfa7b0365993c0d18da94d",
"assets/assets/s7-0.png": "589ad9ef9bbac0b77489bd02134e6e2a",
"assets/assets/s7-1.png": "8dfdcbf5fe35703f9f34e0c66e316aed",
"assets/assets/s5-3.png": "842e4ad9a2962941fa979741032943cf",
"assets/assets/icon-i.png": "a189fee34978feff86f62c6a757ea4ba",
"assets/assets/s13-5.png": "cff16eda4708bb47957e4acd7b2ae7d5",
"assets/assets/s13-8.png": "6de7ed9f6824f1d0905dd647a57c2f73",
"assets/assets/s9-3.png": "6e3b9d247c162e8cca02c4aae52ef698",
"assets/assets/s9-2.png": "0c6c22ecf7b0bf5c16826576d2073910",
"assets/assets/in1.png": "a43a436f97a0a15f2594eff3f0343aa9",
"assets/assets/s9-0.png": "7a080a8bc44c738d9e2d10d135c3a339",
"assets/assets/s9-1.png": "c8f95b1d870a1575b767640e2816884d",
"assets/assets/union.svg": "945c12978353b58012d069f921755133",
"assets/assets/ssss.svg": "7d72d71ea40e6027d2f0ad0feea8ecfe",
"assets/assets/s8-0.png": "019b93037f7a336f835536f2965c35bb",
"assets/assets/ss11.png": "3905fe4fc9568287942d647693a9e564",
"assets/assets/o2.png": "67c788f519927d7bf6aad4fff1a022c3",
"assets/assets/o3.png": "de5680753d747242838ea50bef1a4283",
"assets/assets/s8-1.png": "55a195293625db8fbba4cd0672dba213",
"assets/assets/wa.png": "2a26a1f9690a607f829c74dd29025219",
"assets/assets/s8-3.png": "974d0e9e0a1254d4d7a44fe9f333dafa",
"assets/assets/o1.png": "90ae9f89b53f8b16927023ccfd31d599",
"assets/assets/s12-8.png": "ad1397bd225943aee63531814ed5f0ff",
"assets/assets/union.png": "fc08f8251ec95d36af06df1836db9106",
"assets/assets/s8-2.png": "86795da9deb54f9dd1de965d44bc3a6c",
"assets/assets/h-1.png": "424e9cefe0472db731c3d4f00713d361",
"assets/assets/o4.png": "2c46383fe6db08b20cdb1fdf9e0163c4",
"assets/assets/o5.png": "cfa43a452015d44b05eb73566581fdf9",
"assets/assets/back.png": "fe26c9d1ae677ad6756899bcb41a41d1",
"assets/assets/h-2.png": "0d29d5ea181020de8ef820681c27aa9b",
"assets/assets/o7.png": "c35854041dbe6bfb510bcdc7944455e7",
"assets/assets/o6.png": "d6075999e12f0e50e3da05b7147eea10",
"assets/assets/s8-4.png": "a2d583a4a44fbea3cb127900b8fb0a99",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
