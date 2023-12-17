import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tour_guide/widgets/app_text.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/mumbai.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.googlePlay),
            title: Text("Rate"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
            onTap: () => null,
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.buysellads),
            title: Text("Advertise"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Privacy Policy"),
            onTap: () => null,
          ),
          Divider(thickness: 1.1,),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      image: AssetImage("assets/rahulbharaskar.jpeg"),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "Rahul Bharaskar", size: 20,),
                    AppText(text: "TEIT Roll No. 03")
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      image: AssetImage("assets/kunaldhanawade.jpeg"),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "Kunal Dhanawade", size: 20,),
                    AppText(text: "TEIT Roll No. 08")
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      image: AssetImage("assets/sanjaypatra.jpeg"),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "Sanjay Patra", size: 20,),
                    AppText(text: "TEIT Roll No. 35")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {

  return ListTile(
    leading: Icon(icon, color: Colors.white,),
    title: Text(text, style: TextStyle(color: Colors.white),),
    hoverColor: Colors.white70,
    onTap: onClicked,
  );
}

