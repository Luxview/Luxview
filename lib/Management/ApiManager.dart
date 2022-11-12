import 'package:luxview/Management/DataManager.dart';
import 'package:requests/requests.dart';

//Partially functional

//The api actually connects just fine as long as it is provided with a valid discord user token.
//it does not however want to directly utilize the token from the datamanager as it isn't in the correct format.
//Will fix later on.

//usertoken = DataManager.readData("usertoken");

var usertoken =
    ""; //putting a token in the quotes will get a 200 status code returned as long as the token is valid.

void discordapi() async {
  var url = "https://discord.com/api/v9/users/@me";
  var header = {"authorization": usertoken, "content-type": "application/json"};
  var response = await Requests.get(url, headers: header);
  if (response.statusCode == 200) {
    var jsonResponse = response.json();
  } else {
    Exception(response.statusCode);
  }
}
