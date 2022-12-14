
import 'package:flutter/material.dart';

import 'package:super_app/constant/color.dart';

// import 'package:mb_app_luu_dong_mobile/models/user_info_model.dart';
// import 'package:mb_app_luu_dong_mobile/screens/main_page.dart';

class LoginPage extends StatefulWidget 
{
  const LoginPage
  ({
    Key? key
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> 
{
  TextEditingController controllerID = TextEditingController();
  TextEditingController controllerPW = TextEditingController();
  late bool isObscured;
  late String username;
  late String password;
  @override
  void initState()
  {
    super.initState();
    isObscured = true;
    username="";
    password="";
  }
  @override
  Widget build(BuildContext context) 
  {
    double widgetHeight = MediaQuery.of(context).size.height;
    double widgetWidth = MediaQuery.of(context).size.width;
    return GestureDetector
    (
      onTap: ()
      {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold
      (
        resizeToAvoidBottomInset: false,
        backgroundColor:  Colors.transparent,
        body: Stack
        (
          alignment: AlignmentDirectional.center,
          children: 
          [
            Container
            (
              decoration: const BoxDecoration
              (
                image: DecorationImage
                (
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                )
              ),
            ),
          
            Column
            (
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: 
              [
                Container
                (
                  margin: EdgeInsets.fromLTRB(0, widgetHeight*0.1, 0, widgetHeight*0.05),
                  child: const Image(image: AssetImage("assets/images/logo.png"))
                ),
                const Text
                (
                  "Super App",
                  style: TextStyle
                  (
                    color: colorWhiteTypoTitle,
                    fontFamily: "Averta Std CY",
                   
                  ),
                ),
                const SizedBox(height: 5,),
                const Text
                (
                  "???ng d???ng cho ...",
                  style: TextStyle
                  (
                    color: colorWhiteTypoTextBody,
                    fontFamily: "Averta Std CY",
                    
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30,),
                Container
                (
                  width: widgetWidth*0.87,
                  margin: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                  decoration: BoxDecoration
                  (
                    color: colorBlock,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Form
                  (
                    child: TextFormField
                    (
                      controller: controllerID,
                      decoration: const InputDecoration
                      (
                        hintText: "T??n ????ng nh???p",
                        hintStyle: TextStyle
                        (
                          color: colorBlackTypoDisable,
                          fontFamily: "Averta Std CY",
                        
                        ),
                        prefixIcon: Icon
                        (
                          Icons.person,
                          size: 30,
                          color: colorPrimary1,
                        ),
                        fillColor: colorBlock
                      ),
                      onChanged: (value) 
                      {
                        username=value;
                      },
                    ),
                  )
                ),
                Container
                (
                  width: widgetWidth*0.87,
                  margin: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  decoration: BoxDecoration
                  (
                    color: colorBlock,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Form
                  (
                    child: TextFormField
                    (
                      controller: controllerPW,
                      obscureText: isObscured,
                      decoration: const InputDecoration
                      (
                        hintText: "M???t kh???u",
                        hintStyle: TextStyle
                        (
                          color: colorBlackTypoDisable,
                          fontFamily: "Averta Std CY",
                         
                        ),
                        prefixIcon: Icon
                        (
                          Icons.lock,
                          size: 30,
                          color: colorPrimary1,
                        ),
                        fillColor: colorBlock
                      ),
                      onChanged: (value) 
                      {
                        password=value;
                      },
                    ),
                  )
                ),
                TextButton
                (
                  style: TextButton.styleFrom
                  (
                    minimumSize:
                    Size(widgetWidth*0.87, 48),
                    backgroundColor: const Color(0xFF9BE6C8),
                  ),
                  onPressed: () 
                  {
                    print("G???i API ?????y $username v?? $password v?? tr??? v??? true or false");
                    if(username == "admin" && password == "123456")
                    {
                      controllerID.text="";
                      controllerPW.text="";
                      // Navigator.push
                      // (
                      //   context,
                      //   MaterialPageRoute
                      //   (
                      //     builder: (context) => const MainPage(),
                      //   ),
                      // );
                    }
                    else
                    {
                      print("Pop up th??ng b??o sai m???t kh???u");
                    }
                  },
                  child: const Text
                  (
                    "????ng nh???p",
                    style: TextStyle
                    (
                      color: colorPrimary1,
                      fontFamily: "Averta Std CY",
                      
                    )
                  )
                ),
                const SizedBox(height: 24,),
                GestureDetector
                (
                  onTap: ()
                  {
                    // print("??i ?????n trang qu??n m???t kh???u");
                    // Navigator.push
                    //   (
                    //     context,
                    //     MaterialPageRoute
                    //     (
                    //       builder: (context) => const MainPage(),
                    //     ),
                    //   );
                  },
                  child: const Text
                  (
                    "Qu??n m???t kh???u?",
                    style: TextStyle
                    (
                      color: colorWhiteTypoTitle,
                      fontFamily: "Averta Std CY",
                     
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ])
      ),
    );
  }
}