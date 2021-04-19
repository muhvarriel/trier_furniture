part of 'pages.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Stack(
        children: [
          HeaderNav(),
          Container(
            height: double.infinity,
            child: Center(
              child: Text(
                "Hello World",
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
