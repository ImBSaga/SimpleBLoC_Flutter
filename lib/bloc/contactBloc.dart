//import
import 'dart:async';
import 'package:BLoC/models/contact.dart';

class ContactBloc {
  //List of Contact
  List<Contact> _contactList = [
    Contact('Cheese', 'assets/cheese.jpg', 'Sweet ~'),
    Contact('Chocolate', 'assets/choco.jpg', 'More than cheese'),
    Contact('Mango', 'assets/mango.jpg', 'Swwweeeetttt'),
    Contact('Ice Cream', 'assets/ice.jpg', 'Colderr'),
    Contact('Smartphone', 'assets/phone.jpg', 'Techs'),
  ];

  //Stream Controller List
  final _contactListStreamController = StreamController<List<Contact>>();

  //Stream For Function
  final _deleteTapStreamController = StreamController<Contact>();

  //Stream List Getter
  Stream<List<Contact>> get contactListStream =>
      _contactListStreamController.stream;

  StreamSink<List<Contact>> get contactListSink =>
      _contactListStreamController.sink;

  //Stream Function Getter
  StreamSink<Contact> get deleteTapSink => _deleteTapStreamController.sink;

  //Constructor - listen to data ; listen changes
  ContactBloc() {
    _contactListStreamController.add(_contactList);
    _deleteTapStreamController.stream.listen(_onTapDelete);
  }

  //Core Function
  _onTapDelete(Contact contact) {
    _contactList.remove(contact);

    contactListSink.add(_contactList);
  }

  //dispose
  void dispose() {
    _contactListStreamController.close();
    _deleteTapStreamController.close();
  }
}
