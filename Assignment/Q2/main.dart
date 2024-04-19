import 'dart:io';
import 'album.dart';
import 'song.dart';
import 'playlist.dart';

void main() {
  // Example usage
  print("Enter song title:");
  String name = stdin.readLineSync()!;
  print("Enter song artist name:");
  String artist = stdin.readLineSync()!;
  Song song = Song(name, artist);
   song.play();
  print('want playlist and album name? (Y/N):');
  String ans = stdin.readLineSync()!;
  if(ans=='Y' || ans=='y'){
     print("Enter song ablum name:");
  String alname = stdin.readLineSync()!;
  print("Enter song playlist name:");
  String plname = stdin.readLineSync()!;
  Album album = Album(name, artist, alname);
  Playlist playlist = Playlist(name, artist, plname);
  album.play();
  playlist.play();
  }

  else{
    print("Thank you!");

  }
  
  
}
