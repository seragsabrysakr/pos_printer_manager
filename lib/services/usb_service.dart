import 'dart:io';
import 'package:pos_printer_manager/models/usb_printer.dart';
import 'package:pos_printer_manager/pos_printer_manager.dart';
import 'package:printing/printing.dart';

class USBService {
  static Future<List<USBPrinter>> findUSBPrinter() async {
    List<USBPrinter> devices = [];
    if (Platform.isWindows || Platform.isMacOS) {
      var results = await Printing.listPrinters();
      devices = [
        ...results
            .where((entry) => entry.isAvailable)
            .toList()
            .map((e) => USBPrinter(
                  name: e.name,
                  address: e.url,
                ))
            .toList()
      ];
    } else if (Platform.isAndroid) {
    } else {
      /// no support
    }

    return devices;
  }
}
