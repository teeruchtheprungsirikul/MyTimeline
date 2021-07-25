import 'package:flutter/foundation.dart';
import 'package:nextflow_personal_post/models/post_model.dart';

//Withกำหนดคุณสมบัติให้กับclassPostProviderเลือกChangeNotifierเป็นfoundation
class PostProvider with ChangeNotifier{
  List<Post> _posts = [];

  List<Post> get posts => _posts;
  
  //=>FatArrowFunctionทำการreturnWidgetให้กับFunctionได้เลย
  //List<String> get posts => _posts;

  addNewPost(String postMessage){
    //_posts.add(post); จะแสดงข้อผ่านที่เข้ามาก่อนอยู่ในบรรทัดบนสุด
    var post = Post(message: postMessage,createdDate:DateTime.now());
    
    
    _posts.insert(0, post);

    notifyListeners();
  }

}