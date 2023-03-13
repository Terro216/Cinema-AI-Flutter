import 'package:cinema_ai/pages/HomePage.dart';
import 'package:cinema_ai/pages/ProfilePage.dart';
import 'package:cinema_ai/pages/ChatPage.dart';
import 'package:cinema_ai/providers/PageIndexProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Widgets/BottomNav.dart';
import 'pages/AboutAppPage.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pages = [HomePage(), ChatPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    int currentScreenIndex = context.watch<PageIndexProvider>().getCurrentIndex;
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      body: pages[currentScreenIndex],
    );
  }
}
