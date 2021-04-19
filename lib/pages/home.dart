part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
          body: sizingInformation.isMobile
              ? SingleChildScrollView(
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
                    Column(
                        children: [Product(), Product(), Product(), Product()])
                  ],
                ))
              : SingleChildScrollView(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(24),
                            width: MediaQuery.of(context).size.width / 2,
                            child: HeroPart()),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(24),
                          child: Container(
                            width: 500,
                            margin: EdgeInsets.only(left: 80),
                            child: ClipRRect(
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(30)),
                              child: new CachedNetworkImage(
                                imageUrl:
                                    "https://drive.google.com/uc?export=view&id=1XV1ggi7bUQm0jkvFJGJft5uExcSd_oy5",
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          child: Product(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          child: Product(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          child: Product(),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          child: Product(),
                        )
                      ],
                    ),
                    FooterPart()
                  ],
                ))),
    );
  }
}
