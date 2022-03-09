import 'dart:collection';

import 'package:get_storage/get_storage.dart';
import 'package:mdf/data/models/index.dart';

extension GetStorageExtentions on GetStorage {
  static const FIRST_NAME_KEY = "first_name";
  static const LAST_NAME_KEY = "last_name";
  static const PHONE_NUMBER_KEY = "phone_number";
  static const EMAIL_KEY = "email_number";
  static const SESSION_STATUS = "session_status";
  static const PASSWORD = "password";
  static const DETAILS = "details";
  static const SERVICES = "services";
  static const LOCATIONS = "locations";
  static const IS_AVAILABLE = "is_available";
  static const TICKETS = "tickets";

  void putFirstName(String value) async {
    await write(FIRST_NAME_KEY, value);
  }

  String getFirstName() {
    return read(FIRST_NAME_KEY);
  }

  void putLastName(String value) async {
    await write(LAST_NAME_KEY, value);
  }

  String getLastName() {
    return read(LAST_NAME_KEY);
  }

  void putEmail(String value) async {
    await write(EMAIL_KEY, value);
  }

  String getEmail() {
    return read(EMAIL_KEY);
  }

  void putPhoneNumber(String value) async {
    await write(PHONE_NUMBER_KEY, value);
  }

  String getPhoneNumber() {
    return read(PHONE_NUMBER_KEY);
  }

  void putSessionStatus(SessionStatus status) async {
    await write(SESSION_STATUS, status.name);
  }

  String getSessionStatus() {
    return read(SESSION_STATUS) ?? SessionStatus.INITIAL.name;
  }

  void putPassword(String password) async {
    await write(PASSWORD, password);
  }

  String getPassword() {
    return read(PASSWORD);
  }

  void putDetails(String details) async {
    await write(DETAILS, details);
  }

  String getDetails() {
    return read(DETAILS);
  }

  void putLocations(List<String> locations) {
    write(LOCATIONS, locations);
  }

  List<String> getLocations() {
    return read(LOCATIONS);
  }

  void putServices(List<String> services) {
    write(SERVICES, services);
  }

  List<String> getServices() {
    return read(SERVICES);
  }

  void putIsAvailable(bool isAvailable){
    write(IS_AVAILABLE, isAvailable);
  }

  bool getIsAvailable(){
    return read(IS_AVAILABLE);
  }

  void putTickets(List<Ticket> tickets){
    write(TICKETS, tickets);
  }

  List<Ticket> getTickets(){
    return read(TICKETS) ?? [Ticket(
        giverPublicCodeID: "333333",
        contactPerson: "Pavle",
        contactPhoneNumber: "+37360229423",
        animals: 0,
        females: 1,
        children: 2,
        males: 3,
        askingText: "sdadsadsa",
        haveTransport: true)];
  }
}

enum SessionStatus { INITIAL, REGISTERED, LOGGED }
