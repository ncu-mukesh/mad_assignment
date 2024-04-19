import 'base.dart';

mixin Logger {
  void logDebug(String message) {
    print('DEBUG: $message');
  }

  void logInfo(String message) {
    print('INFO: $message');
  }

  void logWarning(String message) {
    print('WARNING: $message');
  }

  void logError(String message) {
    print('ERROR: $message');
  }
}


class mage extends base with Logger{
int? arcaneKnowledge;
  int? manaPool;

  mage(String playername, int a, int m) : super(playername){
    this.arcaneKnowledge = a;
    this.manaPool = m;
  }

  void insidemage(){
   logInfo('$playername is inside mage class with $arcaneKnowledge and $manaPool');
  }


}