String makeLinkTail({required int x, required int y, required int zoom}) {
  return 'https://core-carparks-renderer-lots.maps.yandex.net/maps-rdr-carparks/'
      'tiles?l=carparks&x=$x&y=$y&z=$zoom&scale=1&lang=ru_RU';
}
