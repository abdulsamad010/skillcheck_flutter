import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {

  final String name;

  const CustomAppBar({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurple,title: Center(child: Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}