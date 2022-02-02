import 'package:flutter/material.dart';

class ListViewUbruPage extends StatefulWidget {
  ListViewUbruPage({Key? key}) : super(key: key);

  @override
  State<ListViewUbruPage> createState() => _ListViewUbruPageState();
}

class _ListViewUbruPageState extends State<ListViewUbruPage> {
  var titlelist = [
    "อาคาร 6",
    "อาคาร 7",
    "อาคาร 8",
    "อาคาร 9",
    "อาคาร 30",
    "อาคาร 38",
    "อาคาร 42",
    "อาคาร 50",
    "อาคาร 51",
    "อาคาร 52"
  ];
  var facultylist =[
    "คณะมนุษย์ศาสตร์",
    "คณะบริหารธุรกิจและการจัดการ",
    "คณะนิติศาสตร์",
    "คณะวิทยาศาสตร์",
    "คณะวิทยาการคอมพิวเตอร์",
    "บัณฑิตศึกษา",
    "คณะครุศาสตร์",
    "คณะเทคโนโลยีอุตสาหกรรม",
    "คณะเกษตรศาสตร์",
    "คณะพยาบาล"
  ];
  var imagelist = [
    "assets/images/human.jpg",
    "assets/images/mba.jpg",
    "assets/images/niti.jpg",
    "assets/images/sci.jpg",
    "assets/images/cs.jpg",
    "assets/images/bantid.jpg",
    "assets/images/edu.jpg",
    "assets/images/itec.jpg",
    "assets/images/agri.jpg",
    "assets/images/ctam.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('อาคารเรียนมหาวิทยาลัยราชภัฏอุบลราชธานี'),
        leading: const Icon(Icons.business),
      ),
      body: ListView.builder(
        itemCount: imagelist.length,
        itemBuilder: (contex,index){
          return GestureDetector(
            onTap: (){
              showDialogFunc(context, imagelist[index],
              titlelist[index],facultylist[index]);
            },           
          child : Card(
            child: Row(children: <Widget>[
              Container(
                width: 150,
                height: 150,
                child: Image.asset(imagelist[index]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Icon(Icons.business),
                  Text(titlelist[index],
                  style: const TextStyle(
                    fontSize: 25,fontWeight: 
                      FontWeight.bold)),
                 SizedBox(height: 5),
                 Container(
                   width: 300,
                   child: Text(facultylist[index],
                   style: TextStyle(fontSize: 20)),
                 )
                ],
              )
            ]),            
          ),
         );
        }),
    );
  }
}

showDialogFunc(context,img,title,faculty){
  return showDialog(context: context,
   builder: (context){
     return Center(
       child: Container(
         
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
           color: Colors.white),
           width: MediaQuery.of(context).size.width *0.7,
           height: 320,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               ClipRRect(
                 child: Image.asset(img,
                 width: 200,
                 height: 200,),
                                 
               ),
               SizedBox(height: 5,),
               Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
               SizedBox(height: 5,),
               Container(
                 width: 300,
                 child: 
               Text(faculty,style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),))
             ],
           ),
         ),
       );     
   });
}