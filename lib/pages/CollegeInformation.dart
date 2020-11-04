
import 'package:firstproject/pages/CollegeDetailPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firstproject/pages/ClgNames.dart';


import 'package:url_launcher/url_launcher.dart';
class CollegeInformation extends StatefulWidget {
  @override
  _CollegeInformationState createState() => _CollegeInformationState();
}

class _CollegeInformationState extends State<CollegeInformation> {

  List<ClgNames> clgName;
  bool isSearching = false;
  String url = "";

  @override
  void initState(){
    clgName = ClgNames.getClgs();
    super.initState();
  }

  DataTable dataBody(){
    return DataTable(
      sortAscending: true,
      sortColumnIndex: 1,
        columns: [
          DataColumn(
              label: Text("College Names",style: TextStyle(fontWeight: FontWeight.bold),),
            tooltip: "This is college name",
          ),
          DataColumn(
            label: Text("College Official Sites",style: TextStyle(fontWeight: FontWeight.bold),),
            tooltip: "This is last name",
            // onSort: (columnIndex,ascending){
            //
            // }
          ),

        ],
        rows: clgName.map((ClgNames) => DataRow(
            cells: [
              DataCell(
                Text(ClgNames.firstname,style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                onTap: collegebody,
              ),
              DataCell(
                  Text(ClgNames.lastname),
                onTap: (){
                    this.url = ClgNames.lastname;
                    launch(this.url);
                }
              ),

            ]),

        ).toList(),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching ?Text("College Information",
          style: TextStyle(wordSpacing: 2.0,letterSpacing: 2.0,color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),)
        :TextField(decoration: InputDecoration(
            icon: Icon(Icons.search,color: Colors.white,),
            hintText: "Search College Here",
          hintStyle: TextStyle(color: Colors.white),
        ),
        ),
        actions: <Widget>[
          isSearching ?
          IconButton(icon: Icon(Icons.cancel),
            onPressed:() {
              setState(() {
                this.isSearching = false;
              });
            } ,
          )

          : IconButton(icon: Icon(Icons.search),
          onPressed:() {
            setState(() {
              this.isSearching = true;
            });
          } ,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: dataBody(),
            )
          ],
        ),
      ),
    );
  }
  void collegebody() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => CollegeDetailPage()));
  }
}
