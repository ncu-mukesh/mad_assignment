mixin Authenticator {
  bool authenticateUser(String username, String password) {

    return username == 'admin' && password == 'password';
  }
}