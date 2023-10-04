import 'dart:io';
import 'package:pos_printer_manager/helpers/network_analyzer.dart';
import 'package:pos_printer_manager/pos_printer_manager.dart';

class NetworkService {}

Future<List<String>> findNetworkPrinter({int port = 9100}) async {
  return [];
}

Future<List<String>> getAddresses() async {
  var interfaces = await NetworkInterface.list();
  List<String> results = [];
  interfaces.fold(
      results,
      (dynamic pre, e) =>
          results.addAll(e.addresses.map((e) => e.address).toList()));
  return results;
}
