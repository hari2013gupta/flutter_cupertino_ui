import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage();
  
  final Map<int, Widget> children = const <int, Widget>{
    0: Text('Midnight'),
    1: Text('Viridian'),
    2: Text('Alpha'),
    3: Text('Beta'),
  };

  @override
  Widget build(BuildContext context) {

  // const double _kPickerItemHeight = 32;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Activity Indicator Title'),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5.0),
              SizedBox(
                width: 350,
                child: CupertinoSegmentedControl<int>(
                    children: children,
                    groupValue: 0,
                    onValueChanged: (int newValue) {}),
              ),
              SizedBox(height: 5.0),
              SizedBox(
                width: 350,
                child: CupertinoSlidingSegmentedControl<int>(
                    children: children,
                    groupValue: 0,
                    onValueChanged: (int newValue) {}),
              ),
              SizedBox(height: 5.0),
              CupertinoSwitch(value: true, onChanged: (newValue) {}),
              SizedBox(height: 10.0),
              SizedBox(
                width: 300,
                child: CupertinoSlider(
                    min: 0, max: 100, value: 50, onChanged: (newValue) {}),
              ),
              SizedBox(height: 10.0),
              // SizedBox(
              //   height: 200,
              //   child: CupertinoPicker(
              //     itemExtent: _kPickerItemHeight,
              //     backgroundColor: CupertinoColors.white,
              //     onSelectedItemChanged: (int index){},
              //     children: List<Widget>.generate(coolColorNames.length, (int index){
              //       return Center(
              //         child: Text(coolColorNames[index]),
              //       );
              //     }),
              //     ),
              // ),
              // SizedBox(height: 10.0),
              // SizedBox(
              //     height: 200,
              //     child: CupertinoDatePicker(
              //       mode: CupertinoDatePickerMode.date,
              //       onDateTimeChanged: (newValue) {},
              //     )),
              CupertinoActivityIndicator(radius: 32),

              SizedBox(height: 5.0),
              CupertinoButton(
                  child: Text('Tap Me!'),
                  color: CupertinoColors.activeOrange,
                  onPressed: () {
                    showDesertAlertDialog(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

const List<String> coolColorNames = <String>[
  'ColorA',
  'ColorB',
  'ColorC',
  'ColorD',
  'ColorE',
  'ColorF',
  'ColorG'
];

void showDesertAlertDialog(BuildContext context) {
  showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
            title: const Text('Like Desserts?'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: const Text('Nope'),
                isDestructiveAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoDialogAction(
                child: const Text('Absolutely'),
                isDefaultAction: true,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ));
}
