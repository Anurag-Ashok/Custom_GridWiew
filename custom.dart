import 'package:flutter/material.dart';

class custom extends StatefulWidget {
  const custom({super.key});

  @override
  State<custom> createState() => _customState();
}

class _customState extends State<custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView.custom Sample")),
      body: Stack(
        children: [
          GridView.custom(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _buildGridItem(index);
                },
              ))
        ],
      ),
    );
  }
}

Widget _buildGridItem(int index) {
  return Container(
    margin: EdgeInsets.all(10),
    color: Colors.amber,
    alignment: Alignment.center,
    child: Text(
      "$index",
      style: TextStyle(color: Colors.black, fontSize: 39),
    ),
  );
}
