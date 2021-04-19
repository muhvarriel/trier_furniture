part of 'parts.dart';

class HeroPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 180,
          child: Image.network(
              "https://drive.google.com/uc?export=view&id=1dEjgm8lhVK82E4rw-h49m6BNdf68oS-L"),
        ),
        SizedBox(
          height: 60,
        ),
        Text("Welcome to TRIER Furniture",
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: secondaryColor)),
        SizedBox(
          height: 50,
        ),
        Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'sd. typesetting industry. Lorem Ipsum has been the industry'sd",
            overflow: TextOverflow.fade,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: secondaryColor)),
        SizedBox(
          height: 50,
        ),
        GestureDetector(
          child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  )),
              child: Center(
                  child: Text('Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  )),
              child: Center(
                  child: Text('About Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))),
        ),
      ],
    );
  }
}
