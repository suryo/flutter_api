import '../models/usermodel.dart';
import 'package:http/http.dart' as http;

class UserViewModel {
  Future getUsers() async {
    try {
      http.Response hasil = await http.get(
          //Uri.encodeFull("https://byriza.com/webapi/read.php"),
          Uri.encodeFull("https://api.informatika.academy/vis/read.php"),
          headers: {"Accept": "application/json"});
      if (hasil.statusCode == 200) {
        print("data category success");
        final data = userModelFromJson(hasil.body);
        return data;
      } else {
        print("error status " + hasil.statusCode.toString());
        return null;
      }
    } catch (e) {
      print("error catch $e");
      return null;
    }
  }

  Future postUser(body) async {
    try {
      http.Response hasil = await http.post(
          Uri.encodeFull("https://byriza.com/webapi/create.php"),
          body: body,
          headers: {
            "Accept": "application/json",
          });
      if (hasil.statusCode == 200) {
        print("status 200");
        // final data = json.decode(hasil.body);
        return true;
      } else {
        print("error status " + hasil.statusCode.toString());
        return null;
      }
    } catch (e) {
      print("error catchnya $e");
      return null;
    }
  }
}
