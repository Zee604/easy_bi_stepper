## Easy-Bi-Stepper

The Easy-Bi-Stepper Flutter package provides a simple and easy-to-use bidirectional stepper widget.

## Screenshots

<img src="https://i.postimg.cc/JhC4VGvH/vertical-stepper.png" width="300" />
<img src="https://i.postimg.cc/pXgPzm2c/horizontal-stepper.png" width="300" />


## Features
• Bidirectional Stepper: Provides a stepper widget that allows both horizontal and vertical steps.<br>
• Customizable Range: Users can specify the minimum and maximum values for the stepper.<br>
• Step Value: Users can define the increment or decrement step value for the stepper.<br>
• Cross-platform Compatibility: Works seamlessly on all mentioned platforms.<br>
• Lightweight: Minimal package size and efficient performance for smooth user experience.

## Installation
To use the Easy-Bi-Stepper package, follow these steps:

1. Add the package to your pubspec.yaml file:
```yaml
 dependencies:
   easy_bi_stepper: <latest version>
```

2. Run the following command to fetch the package:
```yaml
 flutter pub get
```
3. Import the package in your Dart code:
```yaml
import 'package:easy_bi_stepper/easy_bi_stepper.dart';
```

## Usage
To use the Easy-Bi-Stepper in your Flutter app, see example:

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int activeIndex = 0;


  @override
  Widget build(BuildContext context) {

    List<StepperData> stepperData = [
      StepperData(
          title: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.ac_unit,
                  size: 36.0,
                ),
              ),
              const SizedBox(
                height: .0,
                width: 10.0,
              ),
              const Text("Title Goes Here",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0
                ),)
            ],
          )

      ),
      StepperData(
          title: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.ac_unit,
                  size: 36.0,
                ),
              ),
              const SizedBox(
                height: .0,
                width: 10.0,
              ),
              const Text("Title Goes Here",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0
                ),)
            ],
          )

      ),
      StepperData(
          title: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.ac_unit,
                  size: 36.0,
                ),
              ),
              const SizedBox(
                height: .0,
                width: 10.0,
              ),
              const Text("Title Goes Here",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0
                ),)
            ],
          )

      ),
      StepperData(
          title: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.ac_unit,
                  size: 36.0,
                ),
              ),
              const SizedBox(
                height: .0,
                width: 10.0,
              ),
              const Text("Title Goes Here",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0
                ),)
            ],
          )
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            EasyBiStepper(
                stepperList: stepperData,
                activeBarColor: Colors.green,
                activeIndex: activeIndex,
                stepperDirection: Axis.vertical),

            const SizedBox(
              height: 20.0,
              width: 0.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      activeIndex--;
                    });
                  },
                  child: Container(
                    height: 40.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 0.0,
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      activeIndex++;
                    });
                  },
                  child: Container(
                    height: 40.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),

    );
  }
}
```

## Contributions and Support
We welcome your feedback and contributions to make Easy-Bi-Stepper even better. If you encounter any issues or have ideas for improvements, please open an issue on our GitHub repository. [Open Issue](https://github.com/Zee604/easy_bi_stepper.git).

## License
**This project is licensed under the [MIT License](https://opensource.org/license/mit/).**
