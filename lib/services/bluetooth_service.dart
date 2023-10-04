import 'dart:io';
import '../pos_printer_manager.dart';

class BluetoothService {
  static Future<List<BluetoothPrinter>> findBluetoothDevice() async {
    List<BluetoothPrinter> devices = [];
    //  else if (Platform.isIOS) {
    // fblue.FlutterBlue flutterBlue = fblue.FlutterBlue.instance;
    // var results = <fblue.BluetoothDevice>[];
    // await flutterBlue.startScan(timeout: Duration(seconds: 10));

    // flutterBlue.scanResults.listen((stream) {
    //   for (fblue.ScanResult result in stream) {
    //     results.add(result.device);
    //   }
    // });
    // await flutterBlue.stopScan();
    // devices = results
    //     .toSet()
    //     .toList()
    //     .map(
    //       (d) => BluetoothPrinter(
    //         id: d.id.id,
    //         address: d.id.id,
    //         name: d.name,
    //         type: d.type.index,
    //       ),
    //     )
    //     .toList();
    // }
    return devices;
  }
}
