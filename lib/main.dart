import 'package:flutter/material.dart';
import 'package:flutter_application_6/pages/list_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
 await Supabase.initialize(
    url: "https://cpstidzwdpifbaygndnf.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNwc3RpZHp3ZHBpZmJheWduZG5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzQzNTg0NDMsImV4cCI6MjA0OTkzNDQ0M30.9DuIN1RgLRhMkWR9YZZa4_P4TahXky2k1vw_UNafY5M",
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListPage()
    );
  }
}