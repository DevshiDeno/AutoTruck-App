import 'package:connectivity_plus/connectivity_plus.dart';

/// Abstract class for network information
abstract class NetworkInfoI {
  Future<bool> isConnected();

  Future<ConnectivityResult> get connectivityResult;

  Stream<List<ConnectivityResult>> get onConnectivityChanged;
}

/// Implementation using [connectivity_plus]
class NetworkInfo implements NetworkInfoI {
  final Connectivity _connectivity;

  NetworkInfo(this._connectivity);

  /// Checks if the device is connected to the internet
  @override
  Future<bool> isConnected() async {
    final result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  /// Returns the current connectivity result

  /// Emits connectivity changes over time
  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged;

  @override
  // TODO: implement connectivityResult
  Future<ConnectivityResult> get connectivityResult => throw UnimplementedError();
}
