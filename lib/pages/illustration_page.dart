part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String buttonTitle2;
  final Function() buttonTap1;
  final Function() buttonTap2;

  const IllustrationPage(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.picturePath,
      required this.buttonTap1,
      required this.buttonTap2,
      required this.buttonTitle1,
      required this.buttonTitle2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            margin: const EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(picturePath))),
          ),
          Text(
            title,
            style: blackFontStyle3.copyWith(fontSize: 20),
          ),
          Text(
            subtitle,
            style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 12),
            child: ElevatedButton(
              onPressed: buttonTap1,
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 45),
                  backgroundColor: mainColor,
                  shape: const StadiumBorder()),
              child: Text(
                buttonTitle1,
                style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
          (buttonTap2 == null)
              ? const SizedBox()
              : Container(
            margin: const EdgeInsets.only(top: 30, bottom: 12),
            child: ElevatedButton(
              onPressed: buttonTap2,
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 45),
                  backgroundColor: greyColor,
                  shape: const StadiumBorder()),
              child: Text(
                buttonTitle2,
                style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
