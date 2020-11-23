import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
String title,url;
  bool isLoading=true;
  final _key = UniqueKey();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Covid-19 Tracker'),
            centerTitle: true,
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: 
          Stack(
            children: [
             
             
            
                WebView(
                key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: 'https://www.bing.com/covid/local/tunisia?form=C19ANS',
onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
            ),
            
             isLoading ? Center( child: CircularProgressIndicator(),)
                    : Stack(),
       
            ],
          )


              
           
        ),
      ),
    );
  }
}

