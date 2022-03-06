import  'data_injection_container.dart' as di_data;


Future<void> initDi() async {
  await di_data.initData();
}
