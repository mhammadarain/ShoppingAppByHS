import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.google.com/search?q=imran+khan+pic&oq=imran&gs_lcrp=EgZjaHJvbWUqBggBEEUYOzIGCAAQRRg5MgYIARBFGDsyBggCEEUYOzIJCAMQIxgnGIoFMg0IBBAAGIMBGLEDGIAEMg0IBRAuGIMBGLEDGIAEMg0IBhAAGIMBGLEDGIoFMgoIBxAuGLEDGIAEMgoICBAAGLEDGIAEMg0ICRAuGIMBGLEDGIAE0gEJNzY5MmowajE1qAIAsAIA&sourceid=chrome&ie=UTF-8#vhid=jT9BvKvyiarv2M&vssid=l";

    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text(
                  "M HAMMAD ARAIN",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: const Text("mahammadarain11@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.white,
              ),
              title: Text(
                "Inbox",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.radar,
                color: Colors.white,
              ),
              title: Text(
                "Target",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.white,
              ),
              title: Text(
                "Share",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
