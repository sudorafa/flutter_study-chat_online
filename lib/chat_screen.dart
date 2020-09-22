import 'package:chat_online/text_composer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void _sendMennsage(String text) {
    Firestore.instance.collection('messages').add({'text': text});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oi'),
        elevation: 0,
      ),
      body: TextComposer((text) {
        _sendMennsage(text);
      }),
    );
  }
}
