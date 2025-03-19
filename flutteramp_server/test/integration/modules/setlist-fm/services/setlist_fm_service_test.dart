import 'package:flutteramp_server/src/modules/setlist-fm/services/SetlistFmService.dart';
import 'package:test/test.dart';

void main() {
  final setlistFmService = SetlistFmService("aaa",
      baseUrl: "http://localhost:8009/setlist-fm/rest/1.0");

  test('get Artist by name', () async {
    var artist = await setlistFmService.getArtist("Shadow of Intent");
    expect(artist.name, "Shadow of Intent");

    artist = await setlistFmService.getArtist("Animal ДжаZ");
    expect(artist.name, "Animal Jazz");
  });

  test('get setlists by artist', () async {
    var setlist =
        await setlistFmService.getSetlistsForArtist(name: "Shadow of Intent");
    expect(setlist, isNotEmpty);

    var artist = setlist[0].artist;
    expect("Shadow of Intent", artist.name);

    setlist =
        await setlistFmService.getSetlistsForArtist(name: "Shadow of Intent");
    expect(setlist, isNotEmpty);

    setlist = await setlistFmService.getSetlistsForArtist(
        mbid: artist.mbid, date: DateTime(2025, 02, 23));
    expect(1, setlist.length);
    expect(setlist[0].venue.name, 'Poppodium 013');
    expect(setlist[0].venue.city.name, 'Tilburg');

  });
    test('get multiple setlists/sets', () async {

    var artist = await setlistFmService.getArtist("Metallica");
    expect(artist.name, "Metallica");

    var setlist = await setlistFmService.getSetlistsForArtist(mbid: artist.mbid);
    expect(setlist, isNotEmpty);

    setlist = await setlistFmService.getSetlistsForArtist(name: "Hans Zimmer", date: DateTime(2025, 2, 7));
    print((setlist));
    // TODO: get a set where there are multiple sets
  });

  test('get setlists by artist Cyrillic', () async {
    var artist = await setlistFmService.getArtist("Animal ДжаZ");
    expect(artist.name, "Animal Jazz");
  });
}
