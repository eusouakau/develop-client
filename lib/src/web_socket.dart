import 'dart:html';

import 'base_client.dart';

/// Web Socket client for Users microservice
class UsersWebSocket extends BaseClient {
  // the Web Socket Object from dart:html package
  WebSocket _websocket;

  /// instatiate a UsersWebService object.
  /// [bool enableSecurity] indicates is the client will work with http or https
  ///
  /// [bool devMode] modify the service URL to operates in dev mode. In development
  /// mode, Open liberty modifies the service URL eliminating When we are the application
  /// name orion-users-service
  ///
  /// [String tockenChannel] indicates the token a program (optional)
  UsersWebSocket(bool enableSecurity, bool devMode, [String tokenChannel])
      : super(enableSecurity, devMode) {
    token = tokenChannel;
  }

  /// connects to channel using a [String token]
  void connect(String token) {
    _websocket = WebSocket(socketURL + token);
  }

  /// registers a [Function listener] of the connected
  void registerListener(Function listener) {
    _websocket.onMessage.listen(listener);
  }

  /// sends a [String message] to a program
  void send(String message) {
    _websocket.send(message);
  }

  /// closes the connection with a program
  void close() {
    _websocket.close();
  }
}
