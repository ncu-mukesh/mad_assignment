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

class warrior extends base with Logger{
  int? strength;
  int? endurance;

  warrior(String playername, int s, int e) : super(playername){
    this.endurance = e;
    this.strength = s;
  }

  insidewarrior(){
    logInfo('$playername is inside warrior class with $strength and $endurance');
  }


}