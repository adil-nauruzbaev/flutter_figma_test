
import 'package:flutter/material.dart';



class SelectCategoryWidget extends StatefulWidget {
  const SelectCategoryWidget({Key? key}) : super(key: key);

  @override
  State<SelectCategoryWidget> createState() => _SelectCategoryWidgetState();
}

class _SelectCategoryWidgetState extends State<SelectCategoryWidget> {
  int _selectedIndex = 0;

  final List<dynamic> categories = [
    {
      'name': 'Все коды',
    },
    {
      'name': 'Избранное',
    },
    {
      'name': 'Машина',
    },
    {
      'name': 'Добавить +',
    },
    {
      'name': 'Добавить +',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 110,
        width: double.maxFinite,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10, right: 8),
                 
                  height: 35,
                  child: ElevatedButton(
                    
                    onPressed: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                    
                      backgroundColor: _selectedIndex == index ? Color.fromRGBO(33, 31, 31, 1) : Colors.white,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(41))),
                      
                    ),
                    child: Text(
                      '${categories[index]['name']}',
                      style: TextStyle(
                        color:
                            _selectedIndex == index ? Colors.white : Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}