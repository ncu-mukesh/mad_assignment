import 'mediaitem.dart';
import 'logger.dart';

class Album extends mediaitem with Logger implements Playable  {
  String? album;
  Album(String title, String artist, String album) : super(title, artist);
  
  @override
  void play() {
    logInfo('Playing from a album $album: $title by $artist');
    
    }
  }
