import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_figma_test/core/utils/constants.dart';
import 'package:http/http.dart' as http;

import 'user.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final List<User> _user = [];

  Future<List<User>> fetchJson() async {
    var reponse = await http.get(Uri.parse(listUrl));

    List<User> ulist = [];

    if (reponse.statusCode == 200) {
      var urjson = json.decode(reponse.body);

      for (var jsondata in urjson) {
        ulist.add(User.fromJson(jsondata));
      }
    }
    return ulist;
  }

  @override
  void initState() {
    fetchJson().then((value) {
      setState(() {
        _user.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: 700,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(7.5),
                child: Container(
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color.fromARGB(60, 67, 133, 246),
                      
                      shadowColor: null,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: () {},
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 14,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 36,
                            height: 37.03,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 36,
                                  height: 37.03,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.28),
                                    color: Color(0xff4c8eff),
                                  ),
                                  child: const Icon(
                                    Icons.qr_code_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 23),
                          Text(
                            _user[index].title.toString(),
                            style: const TextStyle(
                              color: Color(0xff211f1f),
                              fontSize: 18,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: _user.length,
      ),
    );
  }
}
