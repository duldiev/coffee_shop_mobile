import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      width: double.maxFinite,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            flex: 1,
            child: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              width: 180,
              margin: const EdgeInsets.only(left: 10),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Поиск ивентов",
                ),
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.filter_list,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
