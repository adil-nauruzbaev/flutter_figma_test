import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;


  
GetIt injection = GetIt.instance;

Future<void> initializeDependencies() async {
    

  injection.registerLazySingleton(() => http.Client());

} 
