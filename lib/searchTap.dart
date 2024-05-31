import 'package:figma_design/variables.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SearchTap extends StatefulWidget {
  const SearchTap({super.key});

  @override
  State<SearchTap> createState() => _SearchTapState();
}

class _SearchTapState extends State<SearchTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
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
          InkWell(
              onTap: ()
              {
                setState(() {
                  bool searchtap=false;
                });
              },
              child: Text('Cancel')
          ),
          for(int i=0;i<10;i++)
            listwidget(),

        ],

      )
    );
  }
}


listwidget()
{
  return ListTile(

    leading: CircleAvatar(
      backgroundImage: AssetImage('Assets/girlimage.jpg'),
    ),
    title: Text('Yashika',
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,

      ),),
    subtitle: Text('29, India',
      style: TextStyle(
        fontSize: 13,
        color: Colors.grey,
      ),),
    trailing:  Padding(
      padding:  EdgeInsets.all(2.0),
      child: Container(
        height:30,
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

