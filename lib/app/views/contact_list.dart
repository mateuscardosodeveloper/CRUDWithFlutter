import 'package:flutter/material.dart';

import '../my_app.dart';

class ContactList extends StatelessWidget {
  final lista = [
    {'nome': 'Irineu', 'telefone': '(11)99412-5555', 'avatar': 'https://cdn.pixabay.com/photo/2021/05/31/05/55/naruto-6297820_960_720.jpg'},
    {'nome': 'Ronaldo', 'telefone': '(11)99412-4545', 'avatar': 'https://cdn.pixabay.com/photo/2021/05/17/06/02/man-6259833_960_720.png'},
    {'nome': 'Amanda', 'telefone': '(11)99412-2834', 'avatar': 'https://cdn.pixabay.com/photo/2021/06/04/07/05/naruto-6309017_960_720.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Lista de contatos'),
        actions: [
          IconButton(       
            icon: Icon(Icons.add),
             onPressed: (){
               Navigator.of(context).pushNamed(MyApp.CONTACt_FORM);
             }
          )
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context,i){
          var contato = lista[i];
          var avatar = CircleAvatar( backgroundImage: NetworkImage(contato['avatar']!),);
          return ListTile(
            leading: avatar,
            title: Text(contato['nome']!),
            subtitle: Text(contato['telefone']!),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(onPressed: null, icon: Icon(Icons.edit)),
                  IconButton(onPressed: null, icon: Icon(Icons.delete)),
                ],
              )
            )
          );
        },
      ),
    );
  }
}