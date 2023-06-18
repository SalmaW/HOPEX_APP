import 'package:flutter/material.dart';
// import 'package:hopex/config/app_images.dart';
import 'package:hopex/config/app_paths.dart';
// import 'package:hopex/views/screens/02authentication/01welcome/welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);


  //needs to change the text on the button at the end of the screen

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: dataScreen.length,
                  onPageChanged: (index) => {
                    setState(() {
                      _pageIndex = index;
                  }),
                  },
                  itemBuilder: (context, index) => OnBoardContent(
                    picName: dataScreen[index].picName,
                    title: dataScreen[index].title,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    dataScreen.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 3.0),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              FloatingActionButton.extended(
                onPressed: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease,
                  );
                },
                label: const Text('Next'),
                backgroundColor: Colors.green,
                icon: const Icon(Icons.arrow_forward),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      width: isActive ? 12 : 4,
      height: 4,
      decoration: BoxDecoration(
        color: isActive ? Colors.green: Colors.green[200],
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      // child: ,
    );
  }
}

class OnBoard {
  final String picName, title;

  OnBoard({
    required this.picName,
    required this.title,
  });
}

final List<OnBoard> dataScreen = [
  OnBoard(picName: "${AppPaths.main_path}ob1.png", title: "Reduce"),
  OnBoard(picName: "${AppPaths.main_path}ob2.png", title: "Recycle"),
  OnBoard(picName: "${AppPaths.main_path}ob3.png", title: "Cash Back"),
];

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    required this.picName,
    required this.title,
  }) : super(key: key);

  final String picName, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
        // const SizedBox(height: 30),
        Image.asset(
          picName,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
