import 'dart:convert';

import 'package:employee_detail/model/usermodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Userservices {
  //get List
  Future<List<Usermodel>> loadData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    List<String>? listString = sharedPreferences.getStringList('list');
    List<Usermodel> list = [];
    if (listString != null) {
      list = listString
          .map((item) => Usermodel.fromMap(json.decode(item)))
          .toList();
    }
    return list;
  }

  //save list
  Future<void> saveData(List<Usermodel> list) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    List<String> usrList =
        list.map((item) => jsonEncode(item.toMap())).toList();
    sharedPreferences.setStringList("list", usrList);
  }

  //add new employeed to list

  //update new employeed to list

  //delete new employeed to list
}

  // void addItem(User usr) {
  //   list.add(usr);
  //   saveData();
  // }
