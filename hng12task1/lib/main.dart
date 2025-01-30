import 'package:flutter/material.dart';
import 'package:hng12task1/hngxhire.dart';
import 'package:hng12task1/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
   
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  // _openWebView(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => Homepage()),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('HNGX12 Task One' ,style: TextStyle(fontSize: 20),),),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('WELCOME TO HNG12 TASK ONE',),
              const SizedBox(height: 30,),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage()));
              },
                  
               child: Container(height: 50,width: double.infinity,color: Colors.green, child: 
               Center(child: Text('Go To Github Repository',style: TextStyle(color: Colors.white),),),),),
          
                const SizedBox(height: 20,),
               GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HirePage()));
              },
                  
               child: Container(height: 50,width:  double.infinity,color: Colors.green, child: 
               Center(child: Text('HNGX Mobile Developer Hire Page',style: TextStyle(color: Colors.white),),),),),
            ],),
        ),
      ),
    );
  }
}