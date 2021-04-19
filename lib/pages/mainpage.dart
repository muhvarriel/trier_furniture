part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: new Icon(Icons.home), title: new Text('Home')),
      BottomNavigationBarItem(
          icon: new Icon(Icons.shop), title: new Text('Catalogue')),
      BottomNavigationBarItem(
        icon: new Icon(Icons.person),
        title: new Text('About'),
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomePage(),
        CataloguePage(),
        AboutPage(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
            body: sizingInformation.isMobile
                ? Scaffold(
                    body: buildPageView(),
                    bottomNavigationBar: BottomNavigationBar(
                      backgroundColor: Colors.white,
                      currentIndex: bottomSelectedIndex,
                      onTap: (index) {
                        bottomTapped(index);
                      },
                      items: buildBottomNavBarItems(),
                    ),
                  )
                : Container(
                    color: bgColor,
                    child: Stack(
                      children: [
                        HomePage(),
                        HeaderNav(),
                      ],
                    ),
                  )));
  }
}
