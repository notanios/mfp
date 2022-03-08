part of user_dto_model;

@freezed
class Ticket with _$Ticket {
  factory Ticket({
    @JsonKey(name: 'giverPublicCodeID') String? giverPublicCodeID,
    @JsonKey(name: 'contactPerson') String? contactPerson,
    @JsonKey(name: 'contactPhoneNumber') String? contactPhoneNumber,
    @JsonKey(name: 'males') int? males,
    @JsonKey(name: 'females') int? females,
    @JsonKey(name: 'children') int? children,
    @JsonKey(name: 'animals') int? animals,
    @JsonKey(name: 'haveTransport') bool? haveTransport,
    @JsonKey(name: 'helpType') int? helpType,
    @JsonKey(name: 'askingText') String? askingText,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) =>
      _$TicketFromJson(json);
}