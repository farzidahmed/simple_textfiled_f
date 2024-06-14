import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'This is second app '),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Mysnackbar(messeage,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(messeage))
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffa49b9b),
      appBar: AppBar(title: Text("From"),
        backgroundColor: Colors.green,
        titleSpacing: 30,
        toolbarHeight: 50,
        toolbarOpacity: 0.9,
        elevation: 6,

      ),

      body:SingleChildScrollView(child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          Padding(padding:EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffbfa3a3),
                  style: BorderStyle.solid
                )
            ),
                labelText:'First Name ' ,
                hintText: "FUll Name",hintStyle: TextStyle(fontStyle: FontStyle.italic,
                  color:Colors.brown,fontSize: 15,backgroundColor: Colors.grey,
                )),),),

          Padding(padding:EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffbfa3a3)
                )
            ),
                labelText:'Last name' ,
                hintText: "last name",hintStyle: TextStyle(fontStyle: FontStyle.italic,
                  color:Colors.brown,fontSize: 15,backgroundColor: Colors.grey,
                )),),),



          Padding(padding:EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffbfa3a3)
                )
            ),
                labelText:'Email address' ,
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Email address",hintStyle: TextStyle(fontStyle: FontStyle.italic,
                  color:Color(0xff1da1bd),fontSize: 15,backgroundColor: Colors.grey,
                )),),),
          Padding(padding:EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffbfa3a3)
                )
            ),
                labelText:'Student Reg' ,
                hintText: "Student Reg",hintStyle: TextStyle(fontStyle: FontStyle.italic,
                  color:Color(0xff1da1bd),fontSize: 15,backgroundColor: Colors.grey,
                )),),),
          Padding(padding:EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xffbfa3a3)
                )
            ),
                labelText:'Roll' ,
                hintText: "Roll",hintStyle: TextStyle(fontStyle: FontStyle.italic,
                  color:Color(0xff1da1bd),fontSize: 15,backgroundColor: Colors.grey,
                )),),),

          Padding(padding:EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),

                borderSide: BorderSide(color: Color(0xffbfa3a3)
                )
            ),
                labelText:'Birthday (YYYY-MM-DD)' ,
                hintText: "Dath of birth",
              suffixIcon: Icon(Icons.calendar_month),
                hintStyle: TextStyle(fontStyle: FontStyle.italic,
                  color:Color(0xff1da1bd),fontSize: 15,backgroundColor: Colors.grey,
                )),),),



      ElevatedButton(
        onPressed: () {
          Mysnackbar("yeah its great work", context);

        },
        child: Text('Submit'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
           // Button fill color
          textStyle: TextStyle(fontSize: 18), // Text style
        ),
      ),


        ],


      ),)


      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
