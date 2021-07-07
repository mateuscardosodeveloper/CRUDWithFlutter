import 'package:crud_with_flutter/app/domain/entities/contact.dart';
import 'package:crud_with_flutter/app/domain/services/contact_services.dart';
import 'package:crud_with_flutter/app/my_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

part 'contact_list_back.g.dart';

class ContactListBack = _ContactListBack with _$ContactListBack;

abstract class _ContactListBack with Store{
  var _service = GetIt.I.get<ContactService>();

  //List contacts
  @observable
  Future<List<Contact>> list;

  //method to update the list of contacts
  @action
  refreshList([dynamic value]){
    list = _service.find();
  }

  _ContactListBack(){
    refreshList();
  }

  //method to call the from insert/updated
  goToForm(BuildContext context, [Contact contact]){
    Navigator.of(context).pushNamed(MyApp.CONTACT_FORM, arguments
    :contact).then(refreshList);
  }

  //delete
  remove(int id){
    _service.remove(id);
    refreshList();
  }

}