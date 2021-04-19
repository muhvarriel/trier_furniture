part of 'parts.dart';

class FooterPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 24,
            child: new CachedNetworkImage(
              imageUrl:
                  "https://drive.google.com/uc?export=view&id=1dEjgm8lhVK82E4rw-h49m6BNdf68oS-L",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Column(
            children: [Text("data")],
          )
        ],
      ),
    );
  }
}
