import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uii_challenges/constants/layout.dart';

class BannerAddress extends StatelessWidget {
  final Color color;

  const BannerAddress({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Card(
        elevation: 10,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Container(
          padding: EdgeInsets.all(spacing),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(width: spacing,),
              Column(
                children: [
                  Icon(Icons.location_on_rounded,color: color,),
                  Expanded(
                    child: Container(
                      width: 2,
                      height: 50,
                      color: Colors.grey,
                    ),
                  ),
                  Icon(Icons.location_on_rounded,color: color,),
                ],
              ),
              SizedBox(width: spacing,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("From", style: Theme.of(context).textTheme.bodyText2,),
                    Text("From Trung kinh", style: Theme.of(context).textTheme.bodyText2.copyWith(
                      fontWeight: FontWeight.bold
                    ),),
                    Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    Text("To", style: Theme.of(context).textTheme.bodyText2,),
                    Text("To Hai Ba Trung", style: Theme.of(context).textTheme.bodyText2.copyWith(
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
