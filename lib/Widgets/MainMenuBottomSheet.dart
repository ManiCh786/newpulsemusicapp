import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:newpulsemusicapp/Screens/Screens.dart';
import 'package:newpulsemusicapp/Widgets/AppSpacers.dart';

class MainMenuScreenBottomSheet extends StatefulWidget {
  const MainMenuScreenBottomSheet({Key? key}) : super(key: key);

  @override
  _MainMenuScreenBottomSheetState createState() =>
      _MainMenuScreenBottomSheetState();
}

class _MainMenuScreenBottomSheetState extends State<MainMenuScreenBottomSheet> {
  final storage = GetStorage();
  var name = '';

  @override
  void initState() {
    if (storage.read('nameKey') == null) {
      storage.write('nameKey', 'User');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      clipBehavior: Clip.antiAlias,
      onClosing: () {},
      builder: (context) => Container(
        width: double.infinity,
        height: 290,
        color: Colors.white10,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 12, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    minRadius: 30,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                          BottomSheet(
                            enableDrag: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20)),
                            ),
                            onClosing: () {},
                            builder: (context) {
                              return Container(
                                height: 250,
                                width: double.infinity,
                                color: Colors.white10,
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      VerticalSpacer(space: 15),
                                      Text(
                                        'Enter your name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                            fontSize: 20),
                                      ),
                                      VerticalSpacer(space: 30),
                                      TextFormField(
                                        cursorColor: Colors.purple,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          labelText: 'Enter your name',
                                          hintText: 'Enter your name',
                                          fillColor: Colors.purple,
                                          focusColor: Colors.purple,
                                        ),
                                        onChanged: (value) {
                                          name = value;
                                        },
                                      ),
                                      VerticalSpacer(space: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'CANCEL',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.purple),
                                            ),
                                          ),
                                          HorizontalSpacer(space: 15),
                                          TextButton(
                                            onPressed: () {
                                              if (name.isNotEmpty) {
                                                this.setState(() {
                                                  storage.write(
                                                      'nameKey', name);
                                                });

                                                Navigator.pop(context);
                                              } else {
                                                Get.snackbar('Error',
                                                    'Name cannot be empty',
                                                    snackPosition:
                                                        SnackPosition.BOTTOM,
                                                    backgroundColor:
                                                        Colors.red);
                                              }
                                            },
                                            child: Text(
                                              'UPDATE',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.purple),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
// Name Update Bottom Sheet Ends here
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // HorizontalSpacer(space: 12),
                              Text(
                                'Welcome,',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    storage.read('nameKey'),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Icon(Icons.edit),
                                ],
                              ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              VerticalSpacer(space: 40.0),
              _AllListTiles(
                title: 'Settings',
                Iconz: Icons.settings,
                fontWeight: FontWeight.w100,
                onaTap: () {
                  // ),
                  Get.to(() => SettingScreen());
                },
              ),
              _AllListTiles(
                title: 'Equilizer',
                Iconz: Icons.equalizer_outlined,
                fontWeight: FontWeight.w100,
                onaTap: () {},
              ),
              VerticalSpacer(space: 7),
              Center(
                child: Text(
                  'Made with ❤ in Pakistan',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AllListTiles extends StatelessWidget {
  _AllListTiles(
      {Key? key,
      required this.title,
      required this.Iconz,
      required this.onaTap,
      this.textColor: Colors.black,
      this.fontWeight: FontWeight.w600})
      : super(key: key);
  final String title;
  final IconData Iconz;
  final Color textColor;
  final FontWeight fontWeight;
  final void Function()? onaTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onaTap,
      title: Text(
        this.title,
        style: TextStyle(color: this.textColor, fontWeight: this.fontWeight),
      ),
      leading: Icon(this.Iconz),
    );
  }
}
//
