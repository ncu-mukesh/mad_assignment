import 'mediaitem.dart';
import 'logger.dart';

class Playlist extends mediaitem with Logger implements Playable {
  String? playlist;
  Playlist(String title, String artist, String playlist) : super(title, artist);
  
  @override
  void play() {
    logInfo('Playing from a playlist $playlist: $title by $artist');
    
  }
}