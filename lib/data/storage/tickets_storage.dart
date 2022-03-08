import 'dart:collection';

import 'package:get_storage/get_storage.dart';
import 'package:mdf/data/storage/storage_extentions.dart';

import '../models/index.dart';

class TicketsStorage {
  GetStorage box = GetStorage();

  void addTicket(Ticket ticket) {
    print("addTicket");
    var savedTicket = box.getTickets() ?? HashMap();
    var id = ticket.giverPublicCodeID;
    if(id != null){
      savedTicket.putIfAbsent(id, () => ticket);
      box.putTickets(savedTicket);
    }
  }

  void removeTicket(String id) {
    var savedTicket = box.getTickets() as HashMap<String, Ticket>;
    savedTicket.remove(id);
    box.putTickets(savedTicket);
  }

  Map<String, Ticket>? getTickets() {
    return box.getTickets();
  }
}
