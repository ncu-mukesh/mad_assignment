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

class rouge extends base with Logger{
  int? stealthLevel;
  int? agility;

  rouge(String playername, int s, int a) : super(playername){
    this.stealthLevel = s;
    this.agility = a;
  }

  insiderouge(){
    logInfo('$playername is inside rouge class with $stealthLevel and $agility');
  }


}