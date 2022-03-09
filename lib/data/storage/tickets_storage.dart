import 'dart:collection';

import 'package:get_storage/get_storage.dart';
import 'package:mdf/data/storage/storage_extentions.dart';

import '../models/index.dart';

class TicketsStorage {
  GetStorage box = GetStorage();

  void addTicket(Ticket ticket) {
    var savedTicket = box.getTickets();
    savedTicket.removeWhere((element) => element.giverPublicCodeID == ticket.giverPublicCodeID);
    savedTicket.add(ticket);
    box.putTickets(savedTicket);
  }

  void removeTicket(String id) {
    var savedTicket = box.getTickets();
    savedTicket.removeWhere((element) => element.giverPublicCodeID == id);
    box.putTickets(savedTicket);
  }

  List<Ticket> getTickets() {
    return box.getTickets();
  }
}
