import 'package:luxview/Management/DataManager.dart';
import 'package:requests/requests.dart';

//Partially functional

//The api actually connects just fine as long as it is provided with a valid discord user token.
//it does not however want to directly utilize the token from the datamanager as it isn't in the correct format.
//Will fix later on.

//var usertoken = DataManager.readData("d_usertoken");

class discordapi {
  static dynamic user_data(String usertoken) async {
    var response = await Requests.get("https://discord.com/api/v9/users/@me",
        headers: {
          "authorization": usertoken,
          "content-type": "application/json"
        });
    if (response.statusCode == 200) {
      return response.json();
    } else {
      Exception(response.statusCode);
    }
  }

  static Future<dynamic> user_dm(String usertoken) async {
    var response = await Requests.get(
        "https://discord.com/api/v9/users/@me/channels",
        headers: {
          "authorization": usertoken,
          "content-type": "application/json"
        });
    if (response.statusCode == 200) {
      return response.json();
    } else {
      Exception(response.statusCode);
    }
  }

  static Future<dynamic> user_servers(String usertoken) async {
    var response = await Requests.get(
        "https://discord.com/api/v9/users/@me/guilds",
        headers: {
          "authorization": usertoken,
          "content-type": "application/json"
        });
    if (response.statusCode == 200) {
      return response.json();
    } else {
      Exception(response.statusCode);
    }
  }

  static Future<dynamic> user_friends(String usertoken) async {
    var response = await Requests.get(
        "https://discord.com/api/v9/users/@me/relationships",
        headers: {
          "authorization": usertoken,
          "content-type": "application/json"
        });
    if (response.statusCode == 200) {
      return response.json();
    } else {
      Exception(response.statusCode);
    }
  }

  static Future<dynamic> user_gifts(String usertoken) async {
    var response = await Requests.get(
        "https://discord.com/api/v9/users/@me/entitlements/gifts",
        headers: {
          "authorization": usertoken,
          "content-type": "application/json"
        });
    if (response.statusCode == 200) {
      return response.json();
    } else {
      Exception(response.statusCode);
    }
  }

  static Future<dynamic> user_profile(String usertoken, String id) async {
    var response = await Requests.get(
        "https://discord.com/api/v9/users/@me/$id/profile",
        headers: {
          "authorization": usertoken,
          "content-type": "application/json"
        });
    if (response.statusCode == 200) {
      return response.json();
    } else {
      Exception(response.statusCode);
    }
  }
}
