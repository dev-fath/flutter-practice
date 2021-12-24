import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListCard extends StatelessWidget {
  final Future<Get> get;
  const ListCard({Key? key, required this.get}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Get>(
      // Future 객체 post를 future 항목에 할당
      future: get,
      // builder는 post값의 변화가 발생할 때마다 호출됨
      builder: (context, snapshot) { // 정상 데이터 수신 시 해당 데이터의 title 출력
        if (snapshot.hasData) {
          return Text(snapshot.data != null ? snapshot.data!.key1 : "");
        } // 에러 수신 시 에러 메시지 출력
        else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } // 상태처리 인디케이터 표시. 앱 초기에 출력
        return const CircularProgressIndicator();
      }
    );
  }

  getFromWeb () async {
    String url = 'https://ui4cfa3it3.execute-api.ap-northeast-2.amazonaws.com/default/GetDataList';

    try{
      http.Response response = await Session().get(url) as dynamic;
      return response.body;
    }catch(e){
      print(e);
    }
  }
}

class Session {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  Map<String, String> cookies = {};

  Future<Get> get(String url) async {
    http.Response? response = await http.get(Uri.parse(url), headers: headers);
    final int statusCode = response.statusCode;
    return Get.fromJson(json.decode(response.body));
  }
}

class Get {
   String key1 = "key1";
   String key2 = "key2";
   String key3 = "key3";

  Get({key1, key2, key3});

  // factory 생성자. Post 타입의 인스턴스를 반환
  factory Get.fromJson(Map<String, dynamic> json) {
    return Get(
        key1: json['key1'],
        key2: json['key2'],
        key3: json['key3']);
  }
}
