import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'package:app/Components/background_model.dart';

class TorchLite extends StatefulWidget {
  const TorchLite({super.key});

  @override
  State<TorchLite> createState() => _TorchLiteState();
}

class _TorchLiteState extends State<TorchLite> {
  final bgColor = const Color.fromARGB(100, 208, 193, 172);
  final colorButton = const Color.fromARGB(255, 138, 128, 114);
  final bgColorButton = const Color.fromARGB(90, 211, 187, 154);
  final textColor = const Color(0xffe7f6f2);
  var isActive = false;
  var constoller = TorchController();

  @override
  Widget build(BuildContext context) {
    return BackgroundModel(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      isActive ? 'lamp_light.png' : 'lamp.png',
                      width: 350,
                      height: 350,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      minRadius: 30,
                      maxRadius: 30,
                      backgroundColor: bgColorButton,
                      child: Transform.scale(
                        scale: 1.5,
                        child: IconButton(
                          onPressed: () {
                            constoller.toggle();
                            isActive = !isActive;
                            setState(() {});
                          },
                          color: colorButton,
                          icon: const Icon(Icons.power_settings_new),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
