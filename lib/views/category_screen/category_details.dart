import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/category_screen/items_details.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
       Scaffold(
        appBar: AppBar(
          title:title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                children: List.generate(
                    6,
                        (index) => "Baby Clothing"
                            .text
                            .size(20)
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .makeCentered()
                            .box.white.size(120, 60)
                            .rounded
                            .margin(EdgeInsets.symmetric(horizontal: 4)).make()),
                ),
              ),

              20.heightBox,
              
              Expanded(child:Container(
                color: lightGrey,
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8),
                    itemBuilder: (context,index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                                Image.asset(imgP5,width: 200,height: 150,fit: BoxFit.cover),
                                "laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                10.heightBox,
                                "\$800".text.fontFamily(bold).color(redColor).size(16).make(),
                              ],
                            ).box.
                            outerShadowSm.
                            white.
                            margin(EdgeInsets.symmetric(horizontal: 4)).
                            padding(EdgeInsets.all(8)).
                            roundedSM.
                            make().onTap(() {
                              Get.to(()=>ItemDetails(title: "Dummy Item"));
                            });
                    }),
              ) )
            ],
          ),
        ),
      ),
    );
  }
}