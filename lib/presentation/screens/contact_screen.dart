import 'package:flutter/material.dart';
import 'package:oz_go_driver/presentation/view/contact_list.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Invite Friends'),
      ),
      body: ContactList(),
    );
  }
}
