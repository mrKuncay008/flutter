import 'package:flutter/material.dart';
//import 'package:flutter_application_1/model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var imgUrl = "https://imamrenaldygumay.com/sipwpusri/api/blogs/";
  var _imageBase64;
  
  void _getImageBase64() async {
    http.Response response = await http.get(Uri.parse(imgUrl));
    if (response.statusCode == 200) {
        // Memeriksa apakah konten adalah gambar
        if (response.headers['content-type']?.contains('image') ?? false) {
          // Mengubah gambar menjadi base64 jika formatnya benar
          setState(() {
            _imageBase64 = base64Encode(response.bodyBytes);
          });
          print('Base64 Image: $_imageBase64'); // Debugging untuk melihat hasil base64
        } else {
          // Jika bukan gambar, tampilkan pesan error
          print('Tidak ada gambar pada respons');
        }
      } else {
        print('Gagal mengambil gambar, status code: ${response.statusCode}');
      }
    } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imgUrl, 
              width: 350,
              height: 200,
              ),
              SizedBox(height: 20),

              ElevatedButton(
                  onPressed: _getImageBase64,

                  child: Text("Convert Image"),
                ),
                
                SizedBox(height: 20),
                
                _imageBase64 == null
                ? Container() 
                : Image.memory(
                  base64Decode(_imageBase64),
                  width: 500,
                  height: 500,
                  ),
            
            const SizedBox(height: 20),
            const Text('Test Api '),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
