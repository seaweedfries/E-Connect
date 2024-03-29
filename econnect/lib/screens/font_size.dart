import 'package:flutter/material.dart';
import '../constants.dart';
import '../globals.dart';


class FontSize extends StatefulWidget {
  const FontSize({Key? key}) : super(key: key);

  @override
  State<FontSize> createState() => _FontSizeState();
}

class _FontSizeState extends State<FontSize> {
  double _value = 2;

  int daysBetween(DateTime from, DateTime to) {
  //from = DateTime(from.hour, from.minute, from.second);
  //to = DateTime(to.hour, to.minute, to.second);
  return (to.difference(from).inSeconds).round();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clicknumber += 1;
          endtime = DateTime.now();
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
            title: const Text('Congratulations! You have reached the end of the test.'),
            content: Text('Your time taken is ${daysBetween(starttime, endtime)} seconds. You have clicked $clicknumber times.'),
        ),
      );
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.circle, color: Colors.white),
      ),
      appBar: AppBar(
        title: Text('Adjust the font size', style: TextStyle(fontSize: 20.0+fontvaluefactor)),
        backgroundColor: CustomColors.kPrimaryColor,
      ),
      body: Center(
      child: Column(
        children: <Widget>[
          const SizedBox(),
                Text(
                  'You can slide the slider to adjust the font size.',
                  style: TextStyle(fontSize: 18.0+fontvaluefactor),
                ),
            Slider(
              value: _value,
              
              onChanged: (double s) {
                clicknumber += 1;
                setState(() {
                  _value = s;
                });
              },
              activeColor: Colors.grey,
              thumbColor: Colors.white,
              divisions: 2,
              min: 1,
              max: 3,
              label: '${_value.round()}',
            ),
          SizedBox(
            child: Text("This displayed text is for you to visualize the current font size", style: TextStyle(fontSize: 18 + _value*(_value))),
          ),
          SizedBox(height: 10.0,),
          SizedBox(
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // Foreground color
              onPrimary: Theme.of(context).colorScheme.onPrimary,
              // Background color
              primary: Theme.of(context).colorScheme.primary,
            ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: () {
              clicknumber += 1;
              fontvaluefactor = _value*(_value);
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            child: Text('Save', style: TextStyle(fontSize: 20.0+fontvaluefactor)),
          ),
          ),
        ],
      ),
      )
    );
  }
}
