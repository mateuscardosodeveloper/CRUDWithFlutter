import 'package:crud_with_flutter/app/domain/entities/contact.dart';
import 'package:crud_with_flutter/app/views/contact_details_back.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class ContactDetails extends StatelessWidget {

  showModalError(BuildContext context){
    var alert = AlertDialog( 
      title: Text('Alerta!'),
      content: Text('Não foi possível encontrar um APP compatível.'),
    );
    showDialog(
      context: context, 
      builder: (BuildContext context){
        return alert;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    var _back = ContactDetailsBack(context);
    Contact contact = _back.contact;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var width = constraints.biggest.width;
        var radius = width / 3;

        return Scaffold(
          body: ListView(
            padding: EdgeInsets.all(30),
            children: [
              (Uri.tryParse(contact.urlAvatar).isAbsolute)
                  ? CircleAvatar(
                      backgroundImage: NetworkImage(contact.urlAvatar),
                      radius: radius,
                    )
                  : CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: width /2,
                      ),
                      radius: radius,
                    ),
              Center(
                child: Text(
                  '${contact.nome}',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Card( 
                child: ListTile( 
                  title: Text('Telefone:'), 
                  subtitle: Text('${contact.telefone}'),
                  trailing: Container( 
                    width: width/4 ,
                    child:  Row(
                      children: [
                        IconButton(
                          color: Colors.blue,
                          icon: Icon(Icons.message), 
                          onPressed: (){
                            _back.launchSMS(showModalError);
                          }
                        ),
                        IconButton(
                          color: Colors.blue,
                          icon: Icon(Icons.phone), 
                          onPressed: (){
                            _back.launchPhone(showModalError);
                          }
                        )
                      ]
                      ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Email:'),
                  onTap: () {
                    _back.launchEmail(showModalError);
                  },
                  subtitle: Text('${contact.email}'),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: () {
              _back.goToBack();
            },
          ),
        );
      },
    );
  }
}
