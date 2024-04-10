import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_card.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                  child: const Icon(Icons.edit,color: whiteColor),
              ).onTap(() { }),

              Row(
                children: [
                  Image.asset(imgProfile2,width: 100,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.fontFamily(semibold).white.make(),
                          5.heightBox,
                          "customer@1gmail.com".text.white.make()
                        ],
                      )
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: whiteColor,
                      )
                    ),
                      onPressed:() {},
                      child: "LogOut".text.fontFamily(semibold).white.make())
                ],
              ),
              20.heightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCard(count: '00',title: 'in your cart',width: context.screenWidth/3.5),
                    detailsCard(count: '32',title: 'in your wishlist',width: context.screenWidth/3.5),
                    detailsCard(count: '4',title: 'your orders',width: context.screenWidth/3.5),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  shrinkWrap: true,
                    itemBuilder: (BuildContext context,int index){
                      return ListTile(
                        leading: Image.asset(
                          profileButtonsIcons[index],
                          width: 22,
                        ),
                        title: "${profileButtonsList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                      );
                    },
                    separatorBuilder: (context,index){
                      return const Divider(
                        color: lightGrey,
                      );
                    },
                    itemCount: profileButtonsList.length,
                ).box.white.margin(EdgeInsets.all(12)).rounded.padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make(),
              )
            ],
          ),
        ),
      )
    );
  }
}
