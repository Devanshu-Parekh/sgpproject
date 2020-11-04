import 'package:firstproject/pages/ClgDetails.dart';
import 'package:flutter/material.dart';

class CollegeDetailPage extends StatefulWidget {
  @override
  _CollegeDetailPageState createState() => _CollegeDetailPageState();
}

class _CollegeDetailPageState extends State<CollegeDetailPage> {

  List<ClgDetails> clgDetail;

  @override
  void initState(){
    clgDetail = ClgDetails.getClgDetail();
    super.initState();
  }

  DataTable clgbody(){
    return DataTable(
      columns: [
        DataColumn(label: Text(" Branch",style: TextStyle(fontWeight: FontWeight.bold),)),
        DataColumn(label: Text("General",style: TextStyle(fontWeight: FontWeight.bold),)),
        DataColumn(label: Text("SC/ST",style: TextStyle(fontWeight: FontWeight.bold),)),
        DataColumn(label: Text("OBC",style: TextStyle(fontWeight: FontWeight.bold),)),
        // DataColumn(label: Text("Civil Engineering",style: TextStyle(fontWeight: FontWeight.bold),)),
        // DataColumn(label: Text("Electrical Engineering",style: TextStyle(fontWeight: FontWeight.bold),)),
        // DataColumn(label: Text("Chemical Engineering",style: TextStyle(fontWeight: FontWeight.bold),)),

      ],
      rows:[
        DataRow(
            cells: [
              DataCell(Text("CE")),
              DataCell(Text("2000")),
              DataCell(Text("3000")),
              DataCell(Text("4000")),
            ].toList()),
        DataRow(
            cells: [
              DataCell(Text("IT")),
              DataCell(Text("5000")),
              DataCell(Text("6000")),
              DataCell(Text("7000")),
            ].toList()
        ),
        DataRow(
            cells: [
              DataCell(Text("Mechanical")),
              DataCell(Text("5000")),
              DataCell(Text("6000")),
              DataCell(Text("7000")),
            ].toList()
        ),
        DataRow(
            cells: [
              DataCell(Text("Civil")),
              DataCell(Text("5000")),
              DataCell(Text("6000")),
              DataCell(Text("7000")),
            ].toList()
        ),
        DataRow(
            cells: [
              DataCell(Text("Electrical")),
              DataCell(Text("5000")),
              DataCell(Text("6000")),
              DataCell(Text("7000")),
            ].toList()
        ),
        DataRow(
            cells: [
              DataCell(Text("EC")),
              DataCell(Text("5000")),
              DataCell(Text("6000")),
              DataCell(Text("7000")),
            ].toList()
        ),


      ]
      // rows: clgDetail.map((ClgDetails) => DataRow(
      //     cells: [
      //   DataCell(Text("CE",style: TextStyle(fontWeight: FontWeight.bold),)),
      //   DataCell(Text("500-7000",style: TextStyle(fontWeight: FontWeight.bold),)),
      //   DataCell(Text(ClgDetails.rank.toString())),
      //   DataCell(Text("1500-2569",style: TextStyle(fontWeight: FontWeight.bold),)),
      //
      //   ],
      // ),
      // ).toList()
    );
  }


// TableRow makeTableRow(String listofNames){
//     return TableRow(
//       children: listofNames.split(',').map((name) {
//         return Container(
//           alignment: Alignment.center,
//           child: Text(name,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
//           padding: EdgeInsets.all(10.0),
//         );
//       }).toList()
//     );
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("College Details"),
      ),
      body: clgbody(),
      // body: Table(
      //   children: [
      //     makeTableRow("Branch,General,SC/ST,OBC,XYZ"),
      //     makeTableRow("CE,200,300,400,500"),
      //     makeTableRow("IT,500,600,700,800"),
      //     makeTableRow("Mechanical,8,9,10,11"),
      //
      //   ],
      // ),
    );
  }
}
