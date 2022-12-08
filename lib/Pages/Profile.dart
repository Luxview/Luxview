import "package:flutter/material.dart";
import 'package:luxview/Management/global.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        centerTitle: true,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(d_profileimg, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ListTile(
                    tileColor: const Color(0x00ffffff),
                    title: const Text(
                      "Username",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                      d_username,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    dense: true,
                    contentPadding: const EdgeInsets.all(0),
                    selected: false,
                    selectedTileColor: const Color(0x42000000),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    leading: const Icon(Icons.person),
                    trailing: const Icon(Icons.edit)),
              ),
              const Divider(
                color: Color(0xffdddddd),
                height: 30,
                thickness: 0,
                indent: 50,
                endIndent: 0,
              ),
              ListTile(
                tileColor: const Color(0x00ffffff),
                title: const Text(
                  "Email Address",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                subtitle: Text(
                  d_email,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                ),
                dense: true,
                contentPadding: const EdgeInsets.all(0),
                selected: false,
                selectedTileColor: const Color(0x42000000),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                leading: const Icon(Icons.info_outline),
                trailing: const Icon(Icons.edit),
              ),
              const Divider(
                color: Color(0xffdddddd),
                height: 20,
                thickness: 0,
                indent: 50,
                endIndent: 0,
              ),
              ListTile(
                tileColor: const Color(0x00ffffff),
                title: const Text(
                  "Phone Number",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                ),
                subtitle: Text(
                  d_phone,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                ),
                dense: true,
                contentPadding: const EdgeInsets.all(0),
                selected: false,
                selectedTileColor: const Color(0x42000000),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                leading: const Icon(Icons.call),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
