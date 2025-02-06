import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/call_provider.dart';

class CallHistoryScreen extends StatelessWidget {
  const CallHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final callLogs = Provider.of<CallProvider>(context).callLogs;
    return Scaffold(
      appBar: AppBar(title: const Text('Call History')),
      body: ListView.builder(
        itemCount: callLogs.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(callLogs[index]));
        },
      ),
    );
  }
}