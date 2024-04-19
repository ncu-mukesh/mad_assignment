mixin AuthorizationManager {
  bool authorizeAccess(String role, String resource) {
    
    if (role == 'admin') {
      return true; 
    } 
    else if (role == 'user' && resource == 'profile') {
      return true; 
    } 
    else {
      return false; 
    }
  }
}