import 'package:figma_design/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:figma_design/searchTap.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  ScrollController _scrollController = ScrollController();
  bool _showAppBar = false;
  bool switchValue = false;
  bool dotTap = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset > 300) {
      setState(() {
        _showAppBar = true;
      });
    } else {
      setState(() {
        _showAppBar = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body:  SafeArea(
              child: searchtap==false ?Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          controller: _scrollController,
                          child: Column(
                            children: [
                              Image.asset('Assets/weekend2.png'),
                              Container(
                                height: 150,
                                color: Colors.red,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'The weeknd',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Text(
                                          'Community . +11K Members',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 15.0),
                                      child: Icon(Icons.share,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),

                              // Add more widgets here
                              Container(
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                                    'Ipsum consequat nisl vel pretium lectus quam. Ut consequat semper viverra nam libero justo. Erat velit scelerisque in dictum non consectetur a erat. ... Read more',
                                    style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                   outDoorConatiner(),
                                    outDoorConatiner(),
                                    outDoorConatiner(),
                                    outDoorConatiner(),
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                color: Colors.black)),
                                        child: Center(
                                          child: Text('+ 1'),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 20.0, left: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Media,docs and links',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child:
                                          Icon(Icons.chevron_right, size: 30),
                                    )
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    photoContainer(),
                                    photoContainer(),
                                    photoContainer(),
                                    photoContainer(),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Mute Notifications',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    CupertinoSwitch(
                                      value: switchValue,
                                      onChanged: (bool value) {
                                        setState(() {
                                          switchValue = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.delete_outline,
                                      size: 30,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Clear chat',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.lock_outline,
                                      size: 30,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 8, bottom: 8),
                                      child: Text(
                                        'Encryption',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.exit_to_app_rounded,
                                      size: 30,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 8, bottom: 8),
                                      child: Text(
                                        'Exit community',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.thumb_down_alt_outlined,
                                      size: 30,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, bottom: 8),
                                      child: Text(
                                        'Report',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, bottom: 8),
                                      child: Text(
                                        'Members',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          searchtap = true;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.search_outlined,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: const CircleAvatar(
                                        backgroundImage:
                                            AssetImage('Assets/girlimage.jpg'),
                                      ),
                                      title: const Text(
                                        'Yashika',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: const Text(
                                        '29, India',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      trailing: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border:
                                                Border.all(color: Colors.black),
                                            color: Colors.grey,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Following',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    for (int i = 0; i < 10; i++)
                                      listwidget(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  _showAppBar
                      ? Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            color: Colors.red,
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('Assets/weekend.png'),
                              ),
                              title: Text(
                                'The weeknd',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Text(
                                'Community . +11K Members',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                              trailing: InkWell(
                                onTap: () {
                                  showMaterialModalBottomSheet(
                                      elevation: 10,
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          height: 180,
                                          child: const Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.link,
                                                      size: 30,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        'Invite',
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.person_2_outlined,
                                                      size: 30,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        'Add member',
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.groups_3_outlined,
                                                      size: 30,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        'Add Group',
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ))
                      : SizedBox(),
                ],
              ):
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.red,
                      child: ListTile(

                        leading: CircleAvatar(
                          backgroundImage: AssetImage('Assets/weekend.png'),
                        ),
                        title: Text('The weeknd',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                        subtitle: Text('Community . +11K Members',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),),
                        trailing: InkWell(
                          onTap: ()
                          {

                            showMaterialModalBottomSheet(
                                elevation: 10,
                                context: context,
                                builder: (context)
                                {
                                  return Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    height:180,
                                    child: const Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.link,
                                                size: 30,),
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Invite',
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                  ),),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.person_2_outlined,
                                                size: 30,),
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Add member',
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                  ),),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(Icons.groups_3_outlined,
                                                size: 30,),
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text('Add Group',
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                  ),),
                                              )
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Icon(Icons.more_vert,
                            color: Colors.white,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 260,
                            height: 40,
                            child: TextField(

                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "Search member",
                                fillColor: Colors.lightBlue[66],
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: ()
                              {
                                setState(() {
                                  searchtap=false;
                                });
                              },
                              child: Text('Cancel',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                              ),)
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('Assets/girlimage.jpg'),
                      ),
                      title: Text(
                        'Yashika',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '29, India',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black),
                            color: Colors.grey,
                          ),
                          child: Center(
                            child: Text(
                              'Following',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    for(int i=0;i<10;i++)
                      listwidget(),

                  ],

                ),
              ),
            ),
          );

  }
}

 listwidget() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage('Assets/girlimage.jpg'),
    ),
    title: Text(
      'Yashika',
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: Text(
      '29, India',
      style: TextStyle(
        fontSize: 13,
        color: Colors.grey,
      ),
    ),
    trailing: Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black),
          color: Colors.pinkAccent,
        ),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

outDoorConatiner()
{
  return Padding(
    padding: const EdgeInsets.only(
        left: 8.0, right: 2),
    child: Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(15),
          border: Border.all(
              color: Colors.black)),
      child: Center(
        child: Text('OutDoor'),
      ),
    ),
  );
}

photoContainer()
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        height: 150,
        width: 150,
        child: ClipRRect(
          borderRadius:
          BorderRadius.circular(20),
          child: SizedBox.fromSize(
            size: const Size.fromRadius(48),
            child: Image.asset(
              'Assets/weekend.png',
              fit: BoxFit.cover,
            ),
          ),
        )),
  );
}
