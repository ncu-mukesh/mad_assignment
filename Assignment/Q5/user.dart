import 'Authenticator.dart';
import 'AuthorizationManager.dart';

class User with Authenticator, AuthorizationManager {
  String username;
  String role;

  User(this.username, this.role);

  
  bool login(String password) {
    return authenticateUser(username, password);
  }

 
  bool hasAccess(String resource) {
    return authorizeAccess(role, resource);
  }
}

void main() {
  
  User user = User('admin', 'user');


  bool isAuthenticated = user.login('password');
  print('Authentication status: $isAuthenticated');

 
  bool hasAccessToProfile = user.hasAccess('profile');
  print('Access to profile: $hasAccessToProfile');
}