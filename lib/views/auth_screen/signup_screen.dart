import 'package:get/get.dart';

import '../../consts/consts.dart';
import '../../consts/lists.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool? isCheck=false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Center(
          child: Column(
            children: [
              (context.screenHeight*0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              'Join the $appname'.text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  CustomTextField(hint: nameHint,title: name),
                  CustomTextField(hint: emailHint,title: email),
                  CustomTextField(title:password,hint: passwordHint),
                  CustomTextField(title:retypePassword,hint: passwordHint),
                  Align(
                      alignment: Alignment.topRight,
                      child: TextButton(onPressed: (){}, child: forgetPass.text.make())
                  ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: redColor,
                              value: isCheck,
                              onChanged: (newValue){
                              setState(() {
                                isCheck=newValue;
                              });
                              }
                          ),
                          Expanded(
                            child: RichText(text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "I agree to the",style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey
                                )
                                ),
                                TextSpan(
                                    text: termAndCond,style: TextStyle(
                                    fontFamily: bold,
                                    color: redColor,
                                )
                                ),
                                TextSpan(
                                    text: " &",style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                )
                                ),
                                TextSpan(
                                    text: privacyPolicy,style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                )
                                ),
                              ]
                            )),
                          )
                        ],
                      ),
                  5.heightBox,
                  ourButton(title: signUp,color:isCheck==true? redColor:lightGrey,textColor: whiteColor,onPress: (){})
                      .box
                      .width(context.screenWidth -50)
                      .make(),
                  10.heightBox,
                  RichText(text:const TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyHaveAccount,
                        style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey,
                        )
                      ),
                      TextSpan(
                          text: login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          )
                      )
                    ]
                  )).onTap(() {
                    Get.back();
                    }),
                ],
              ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make(),
            ],
          ),
        ),
      ),
    )
    );
  }
}
