import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  _launchURL(String nomorTeleponUser) async {
    String url = "https://wa.me/$nomorTeleponUser";
    if (!await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: <Widget>[
            // profile picture
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i1.sndcdn.com/avatars-qyoPctRoQxMBWAEZ-l7ISlw-t500x500.jpg",
              ),
              radius: 80,
            ),

            // INI GANTI JADI CONTAINER, SOALNYA BUTUH DIKASIH MARGIN
            // name
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Martin Garrix",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ),

            // address
            Text(
              "AMSTERDAM, NL",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),

            // "MESSAGE" button
            InkWell(
              child: Container(
                height: 52,
                margin: EdgeInsets.only(top: 20, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "MESSAGE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                _launchURL("6281346283125");
              },
              splashFactory: NoSplash.splashFactory,
            ),

            // "CHANGE PROFILE" button
            InkWell(
              child: Container(
                height: 52,
                margin: EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(
                  child: Text("CHANGE PROFILE"),
                ),
              ),
              onTap: () {},
              splashFactory: NoSplash.splashFactory,
            ),

            // "LOGOUT" button
            InkWell(
              child: Container(
                height: 52,
                margin: EdgeInsets.only(top: 5, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(
                  child: Text("LOGOUT"),
                ),
              ),
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacementNamed(context, '/landing');
              },
              splashFactory: NoSplash.splashFactory,
            ),

            // kumpulan barang user
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: [
                Container(
                  height: 300,
                  width: 165,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro-max.jpg",
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: 165,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro-max.jpg",
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 165,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro-max.jpg",
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 165,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-13-pro-max.jpg",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
