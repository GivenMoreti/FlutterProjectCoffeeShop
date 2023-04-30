import 'package:flutter/material.dart';

import 'auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
         
          title: const Text('C O F F E E'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.discount,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        body: Column(
        
          children: [
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const AuthPage();
                        },
                      ),
                    );
                  },
                  child: const Text('login'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const AuthPage();
                        },
                      ),
                    );
                  },
                  child: const Text('Register page'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
