import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {

  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: ( BuildContext context, int index ){
                return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage('https://picsum.photos/600/300?image=${index+1}')
                );
            }
        ),
      )
      );
  }
}
