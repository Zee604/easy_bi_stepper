import 'package:easy_bi_stepper/easy_bi_stepper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Bi Stepper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Easy Bi Stepper'),
    );
  }
}

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
