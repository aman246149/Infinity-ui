import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("My Docs"),
          backgroundColor: Colors.black,
          actions: [
            Icon(
              FlutterIcons.search1_ant,
              color: Colors.white,
            ),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.only(left:18.0,right: 22),
              child: Icon(
                FlutterIcons.storage_mdi,
                color: Colors.white,
              ),
            )
          ],
        ),
        drawer: new Drawer(
          elevation: 20,
          child: Container(
            color: Colors.black87,
            child: new ListView(
              children: <Widget>[
                new ListTile(
                  title: new Text(
                    "CamScanner",
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                  leading: new Icon(
                    FlutterIcons.camera_ant,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.green,
                  height: 8,
                  thickness: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: new ListTile(
                    title: new Text(
                      "Sign in/Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    leading: new Icon(
                      FlutterIcons.user_circle_faw,
                      color: Colors.white,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 5,
                ),
                new ListTile(
                  title: new Text(
                    "My Docs",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  leading: new Icon(
                    FlutterIcons.folder_faw5,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 5,
                ),
                new ListTile(
                  title: new Text(
                    "Shared with Me",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  leading: new Icon(
                    FlutterIcons.share_alt_faw,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 5,
                ),
                new ListTile(
                  title: new Text(
                    "Tags",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  leading: new Icon(
                    FlutterIcons.tags_ant,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 5,
                ),
                new ListTile(
                  title: new Text(
                    "Cloud Space",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  leading: new Icon(
                    FlutterIcons.cloud_ant,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 5,
                ),
                new ListTile(
                  title: new Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  leading: new Icon(
                    FlutterIcons.setting_ant,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(

          children: <Widget>[
            Container(

              height: ScreenUtil().setHeight(250),

              child: GestureDetector(
                onTap: (){

                },
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(),
                    Material(
                      elevation: 3.0,
                      child: Container(
                        height: ScreenUtil().setHeight(220),

                        margin: EdgeInsets.only(left: ScreenUtil().setWidth(400.0)),
                        child:Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("New Doc 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  ScreenUtil()
                                      .setSp(32, allowFontScalingSelf: true)),),
                                ],
                              ),
                              Text("14-07-15 13:50",style: TextStyle(color: Colors.grey,fontSize:  ScreenUtil()
                                  .setSp(35, allowFontScalingSelf: true))),

                              Text("Document id 1234",style: TextStyle(color: Colors.grey,fontSize:  ScreenUtil()
                                  .setSp(35, allowFontScalingSelf: true))),


                            ],
                          ),
                        ),

                      ),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          width: ScreenUtil().setWidth(310),
                          height: ScreenUtil().setHeight(220),


                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://images.pexels.com/photos/4085642/pexels-photo-4085642.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
                            )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),



            Container(

              height: ScreenUtil().setHeight(250),

              child: GestureDetector(
                onTap: (){

                },
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(),
                    Material(
                      elevation: 3.0,
                      child: Container(
                        height: ScreenUtil().setHeight(220),

                        margin: EdgeInsets.only(left: ScreenUtil().setWidth(400.0)),
                        child:Padding(
                          padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("New Doc 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize:  ScreenUtil()
                                      .setSp(32, allowFontScalingSelf: true)),),
                                ],
                              ),
                              Text("14-07-15 13:50",style: TextStyle(color: Colors.grey,fontSize:  ScreenUtil()
                                  .setSp(35, allowFontScalingSelf: true))),

                              Text("Document id 1234",style: TextStyle(color: Colors.grey,fontSize:  ScreenUtil()
                                  .setSp(35, allowFontScalingSelf: true))),

                            ],
                          ),
                        ),

                      ),
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          width: ScreenUtil().setWidth(310),
                          height: ScreenUtil().setHeight(220),


                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("https://images.pexels.com/photos/945966/pexels-photo-945966.jpeg?cs=srgb&dl=pexels-alex-fu-945966.jpg&fm=jpg")
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
    );
  }
}
