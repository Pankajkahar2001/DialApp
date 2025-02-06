import 'package:flutter/material.dart';
import '../services/call_service.dart';
import 'package:provider/provider.dart';
import '../providers/call_provider.dart';

class DialPadScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  DialPadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dial Pad')),
      body: Column(
        children: [
          TextField(controller: _controller, keyboardType: TextInputType.phone),
          ElevatedButton(
            onPressed: () {
              String number = _controller.text;
              if (number.isNotEmpty) {
                makeCall(number);
                Provider.of<CallProvider>(context, listen: false).addCall(number);
              }
            },
            child: const Text('Call'),
          ),
        ],
      ),
    );
  }
}
