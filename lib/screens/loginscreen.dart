import 'package:facebook_login/screens/mainscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  bool rememberMe = false;
  Checkbox checkbox;

  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;

    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.


    } else {
      // TODO: Forget the user
    }
  });


  AnimationController animationController;
  Animation animation;

  void initState() {
    super.initState();

    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 8),
    );

//    animationController.repeat();
    (
        animation=ColorTween(begin: Colors.blueGrey,end:Colors.blue ).animate(CurvedAnimation(curve: Curves.easeInOut,parent: animationController))).addListener(() { setState(() {


    });});


    animationController.forward();

    animationController.addStatusListener((status) {
      if(status==AnimationStatus.completed)
      {
        animationController.reverse();
      }
      else
      if(status==AnimationStatus.dismissed)
      {
        animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Scaffold(
            body: Container(
              child: ListView(
                children: [





                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(animation.value, BlendMode.hardLight),
                            image: AssetImage(
                              "images/logo.jpg",
                            )
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Card(
                        elevation: 20,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width-20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "Username",
                                  ),

                                ),

                                TextField(
                                  decoration: InputDecoration(
                                    labelText: "Passward",
                                  ),

                                ),

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Forgot password ? ",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w400),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:48.0,right: 48,top: 8),
                    child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Checkbox(value: false,
                          onChanged: _onRememberMeChanged,

                        ),
                        Text("Remember me") ,

                        Spacer(),

                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)
                            ),
                            child: Container(
                              height: 55,
                              width: 180,
                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(18),
                                  gradient: LinearGradient(colors: [Colors.tealAccent,Colors.blue])
                              ),
                              child: Center(child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Center(child: Text("-------------------  Social Login  --------------------",style: TextStyle(color: Colors.grey,fontSize: 20),)),

                  SizedBox(
                    height: 15,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Icon(FlutterIcons.facebook_f_faw,size: 25,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),

                      CircleAvatar(
                        radius: 25,

                        backgroundColor: Colors.red,
                        child: Icon(FlutterIcons.google__ent,size: 25
                        ),
                      ),

                      SizedBox(
                        width: 12,
                      ),
                      CircleAvatar(
                        radius: 25,

                        backgroundColor: Colors.blue,
                        child: Icon(FlutterIcons.twitter_ant,size: 25
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CircleAvatar(
                        radius: 25,

                        child: Icon(FlutterIcons.linkedin_ent,size: 25
                        ),
                      ),


                    ],
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Center(child: Text("New user ? Signup",style: TextStyle(color: Colors.purple,fontSize: 18),)),
                  )
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
