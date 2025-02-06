import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/contact_provider.dart';

class ContactsScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts')),
      body: Column(
        children: [
          TextField(controller: _controller, decoration: const InputDecoration(labelText: 'Name')),
          ElevatedButton(
            onPressed: () {
              String name = _controller.text;
              if (name.isNotEmpty) {
                Provider.of<ContactProvider>(context, listen: false).addContact(name);
              }
            },
            child: const Text('Add Contact'),
          ),
          Expanded(
            child: Consumer<ContactProvider>(
              builder: (context, contactProvider, child) {
                return ListView.builder(
                  itemCount: contactProvider.contacts.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(contactProvider.contacts[index]));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
