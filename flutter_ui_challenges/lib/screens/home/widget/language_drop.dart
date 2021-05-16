import 'package:flutter/material.dart';
import 'package:flutter_uii_challenges/constant/layout.dart';

class LanguageDropButton extends StatefulWidget {
  const LanguageDropButton({
    Key key,
  }) : super(key: key);

  @override
  _LanguageDropButtonState createState() => _LanguageDropButtonState();
}

class _LanguageDropButtonState extends State<LanguageDropButton> {
  String _language = "english";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: _language,
          onChanged: (String newLanguage) {
            setState(() {
              _language = newLanguage;
            });
          },
          icon: Icon(Icons.keyboard_arrow_down_rounded),
          items: [
            DropdownMenuItem(
              value: 'vietnam',
              child: LanguageDropItem(
                imgPath: 'assets/images/vietnamese.png',
                label: 'Vietnamese',
              ),
            ),
            DropdownMenuItem(
              value: 'english',
              child: LanguageDropItem(
                imgPath: 'assets/images/english.png',
                label: 'English',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LanguageDropItem extends StatelessWidget {
  final String label, imgPath;

  const LanguageDropItem(
      {Key key, @required this.imgPath, @required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 24, height: 24, child: Image.asset(imgPath)),
        SizedBox(
          width: spacing,
        ),
        Text(label)
      ],
    );
  }
}
