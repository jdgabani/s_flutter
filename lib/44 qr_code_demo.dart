import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeDemo extends StatefulWidget {
  const QrCodeDemo({Key? key}) : super(key: key);

  @override
  State<QrCodeDemo> createState() => _QrCodeDemoState();
}

class _QrCodeDemoState extends State<QrCodeDemo> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text('GENERATE'),
            ),
          ),
        ),
      ),
      body: Center(
        child: QrImageView(
          data: controller.text,
          size: 300,
          gapless: false,
          embeddedImage: const AssetImage('assets/images/my_embedded_image.png'),
          embeddedImageStyle: const QrEmbeddedImageStyle(
            size: Size(80, 80),
          ),
        ),
      ),
    );
  }
}
