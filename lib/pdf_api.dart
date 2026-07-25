

import 'dart:io';
import 'data.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';
//import 'dart:html';

class PDFApi{
  static Future<File> loadFirebase(String url) async{
    //try{
      final refPDF = FirebaseStorage.instance.ref().child(url);
      final bytes = await refPDF.getData();
      return _storeFile(url,bytes as List<int>);
    //}catch(e){
      //return null;
    //}

  }
  static Future<File> _storeFile(String url, List<int> bytes) async{
    final filename = basename(url);
    final dir= await getApplicationDocumentsDirectory();
    final file =File('${dir.path}/$filename');
    await file.writeAsBytes(bytes,flush: true);
    return file;

  }
}