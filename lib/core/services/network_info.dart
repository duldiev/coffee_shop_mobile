import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:network_info_plus/network_info_plus.dart' as n;

abstract class INetworkInfo {
  Future<bool> get isConnected;
  Future<String?> get getWifiIP;
}

@LazySingleton(as: INetworkInfo)
class NetworkInfo implements INetworkInfo {
  final Connectivity connectivity;
  final n.NetworkInfo info;

  NetworkInfo({required this.connectivity, required this.info});

  @override
  Future<bool> get isConnected async {
    ConnectivityResult result = await connectivity.checkConnectivity();
    return (result != ConnectivityResult.none);
  }

  @override
  Future<String?> get getWifiIP async {
    return await info.getWifiIP();
  }
}
