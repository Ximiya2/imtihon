import 'package:imtihon/states.dart';
import 'models/cotact_model.dart';

List<ContactModel> searcheContact(String searchedStr){
  searchedList.clear();

    contactList.forEach((contact) {
      if(contact.name.toLowerCase().contains(searchedStr.toLowerCase())){
        searchedList.add(contact);
      }
    });

  return searchedList;
}
List<ContactModel> searchedList = [ ];