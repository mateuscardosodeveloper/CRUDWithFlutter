import 'package:crud_with_flutter/app/domain/entities/contact.dart';
import 'package:crud_with_flutter/app/domain/exception/domain_layer_exception.dart';
import 'package:crud_with_flutter/app/domain/interfaces/contact_dao.dart';
import 'package:get_it/get_it.dart';

class ContactService {
  // var dao = ContactDAOImpl();
  var _dao = GetIt.I.get<ContactDAO>();
  save(Contact contact) {
    validateNome(contact.nome);
    validateEmail(contact.email);
    validateTelefone(contact.telefone);
    _dao.save(contact);
  }

  remove(int id) {
    _dao.remove(id);
  }

  Future<List<Contact>> find() {
    return _dao.find();
  }

// nome deve ser obrigatório, tenha no mínimo 3 caracteres e no máximo 50
  validateNome(String name) {
    var min = 3;
    var max = 50;

    if (name == null) {
      throw new DomainLayerException('O nome é obrigatório.');
    } else if (name.length < min) {
      throw new DomainLayerException(
          'O nome deve possuir pelo menos $min caracteres.');
    } else if (name.length > max) {
      throw new DomainLayerException(
          'O nome deve possuir no máximo $max caracteres.');
    }
  }

// e-mail deve ser obrigatório e tenha @
  validateEmail(String email) {
    if (email == null) {
      throw new DomainLayerException('O e-mail é obrigatório.');
    } else if (!email.contains('@')) {
      throw new DomainLayerException('O e-mail deve possuir @.');
    }
  }

// telefone deve ser obrigatório e tenha o formato (99) 9 9999-9999
  validateTelefone(String phone) {
    var format = RegExp(
        r'^\([1-9]{2}\) [9] [6-9]{1}[0-9]{3}\-[0-9]{4}$'); // (99) 9 9999-9999
    if (phone == null) {
      throw new DomainLayerException('O telefone é obrigatório.');
    } else if (!format.hasMatch(phone)) {
      throw new DomainLayerException(
          'Formato inválido. O formato deve ser (99) 9 9999-9999.');
    }
  }
}
