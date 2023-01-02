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
      width: 400,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0x334385f6),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
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
                            child: const Icon(Icons.qr_code_outlined),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 23),
                    Text(
                      _user[0].title.toString(),
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
            ],
          );
        },
        itemCount: _user.length,
      ),
    );
  }
}
