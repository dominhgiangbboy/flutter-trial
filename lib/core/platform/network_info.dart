import 'package:connectivity/connectivity.dart';

class NetworkInfo {
  Future<bool> getInternetStatus() async {
    bool isConnected = false;
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      isConnected = true;
      print('using mobile');
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a wifi network.
      isConnected = true;

      print('using wifi');
    }
    return isConnected;
  }
}
