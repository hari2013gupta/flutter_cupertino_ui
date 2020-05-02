import 'package:flutter/cupertino.dart';
import 'package:flutter_hari_ui_test/home_page.dart';

class HomeNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book),
            title: Text('Log'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.create),
            title: Text('List'),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      tabBuilder: (context, index) {
        assert(index >= 0 && index <= 2);
        switch (index) {
          case 0:
            return CupertinoTabView(
                builder: (BuildContext context) => HomePage()
                // buildPage('Home'),
                );
            break;
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => LogScreen(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => ListScreen(),
            );
            break;
          default:
            return CupertinoTabView(
              builder: (BuildContext context) => buildPage('Home'),
            );
            break;
        }
      },
    );
  }

  Widget buildPage(String title) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(title),
        ),
        child: Center(
          child: CupertinoActivityIndicator(
            radius: 32,
          ),
        ));
  }
}

class LogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Log Screen'),
      ),
      child: Center(
        child: Text(
          'Log Screen',
          style: TextStyle(fontSize: 22, color: CupertinoColors.white),
        ),
      ),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Veggie List'),
      ),
      child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(
              builder: (BuildContext context) => AddToLogScreen(),
            ));
          },
          child: Center(
            child: Text(
              'List Screen',
              style: TextStyle(fontSize: 22, color: CupertinoColors.white),
            ),
          )),
    );
  }
}

class AddToLogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Eat Some Vaggies!'),
      ),
      child: Center(
        child: Text(
          'Add To Log Screen',
          style: TextStyle(fontSize: 22, color: CupertinoColors.white),
        ),
      ),
    );
  }
}
