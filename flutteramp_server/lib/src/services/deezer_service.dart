import 'package:flutteramp_server/src/generated/artist.dart';
import 'package:flutteramp_server/src/modules/deezer/services/deezer_client.dart';
import 'package:flutteramp_server/src/modules/setlist-fm/models/setlist.dart';
import 'package:serverpod/server.dart';

import '../modules/deezer/models/artist.dart' as da;
import '../modules/deezer/models/track.dart';

class DeezerService {
  DeezerClient client;

  Session session;

  DeezerService(this.client, this.session);

  Future<bool> syncArtistsToDatabase(List<da.Artist> artists) async {
    // final artists = await client.getArtists();

    List<DeezerArtist> toUpdateArtists = [];
    for (da.Artist deezerArtist in artists) {
      toUpdateArtists.add(fromDeezerArtist(deezerArtist));
    }

    await DeezerArtist.db.insert(session, toUpdateArtists);

    return true;
  }

  Future<bool> updateArtists() async {
    var artists = await DeezerArtist.db.find(session);
    for (DeezerArtist artist in artists) {
      var deezerArtist = (await client.getArtistById(artist.did))!;
      DeezerArtist newArtist = fromDeezerArtist(deezerArtist);
      newArtist.id = artist.id;
      await DeezerArtist.db.update(session, [artist]);
    }

    return true;
  }

  Future<List<Track>> getDeezerTracksFromSetlistFmSetlist(
      Setlist setlists) async {
    List<Track> tracks = [];
    for (var setlist in setlists.setlist.entries) {
      for (var song in setlist.value) {
        var track = await client.getTrack(song, setlists.artist.name);

        if (track != null) {
          tracks.add(track);
        } else {
          // TODO: add to logger with debug
        }
      }
    }
    return tracks;
  }

  DeezerArtist fromDeezerArtist(da.Artist artist) {
    return DeezerArtist(
        did: artist.id!,
        name: artist.name,
        link: artist.link,
        share: artist.share,
        picture: artist.picture,
        pictureSmall: artist.pictureSmall,
        pictureMedium: artist.pictureMedium,
        pictureBig: artist.pictureBig,
        pictureXl: artist.pictureXl,
        nbAlbum: artist.nbAlbum,
        nbFan: artist.nbFan,
        radio: artist.radio,
        tracklist: artist.tracklist,
        type: artist.type);
  }
}
