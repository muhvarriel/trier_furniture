part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 90,
        ),
        Container(padding: EdgeInsets.all(24), child: HeroPart()),
        SizedBox(
          height: 100,
        ),
        Container(
          padding: EdgeInsets.all(24),
          child: Text('See our featured product',
              style: TextStyle(
                  color: secondaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700)),
        ),
        Column(children: [Product(), Product(), Product(), Product()])
      ],
    ));
  }
}
