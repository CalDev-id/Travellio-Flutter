part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          children: const [
            HomePage(),
            Center(
              child: Text('Search Page'),
            ),
            Center(
              child: Text('Favorite Page'),
            ),
            Center(
              child: Text('Profile Page'),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomBottomNavbar(
            selectedIndex: selectedPage,
            onTap: (index) {
              setState(() {
                selectedPage = index;
              });
              pageController.jumpToPage(selectedPage);
            },
          ),
        ),
      ]),
    );
  }
}
