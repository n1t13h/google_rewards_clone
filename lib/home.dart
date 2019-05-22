import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as prefix0;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle textStyle = TextStyle(fontFamily: 'Raleway', fontSize: 15.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              height: 35.0,
              image: NetworkImage(
                  "http://pngimg.com/uploads/google/google_PNG19644.png"),
            ),
            Text(
              "Opinion Rewards",
              style: TextStyle(
                  fontSize: 25.0, color: Colors.grey, fontFamily: 'Raleway'),
            )
          ],
        ),
      ),
      drawer: Drawer(
        semanticLabel: "Drawer",
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Image(
                image: NetworkImage(
                    "http://heoc.mohp.gov.np/wp-content/uploads/2019/02/icon_user.png"),
              ),
              title: Text("John Doe"),
              subtitle: Text("johndoe@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home", style: textStyle),
            ),
            ListTile(
              leading: Icon(Icons.replay),
              title: Text("Reward History", style: textStyle),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings", style: textStyle),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help & Feedback", style: textStyle),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Terms of Service", style: textStyle),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
                title: Text(
                  "GOOGLE PLAY BALANCE",
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "₹500",
                  style: TextStyle(fontSize: 25.0, color: Colors.lightGreen),
                ),
                trailing: MaterialButton(
                    onPressed: () {},
                    child: Image(
                        width: 100.0,
                        height: 50.0,
                        image: AssetImage("images/playstore.png")))),
            Card(
              margin: EdgeInsets.all(15.0),
              borderOnForeground: true,
              child: ListTile(
                title: Text(
                  "No Survey at this time",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: "Raleway"),
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  "We'll notify you when a survey is available",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontFamily: "Raleway"),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("images/background.png"),
                  ),
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Share with your friends",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontFamily: "Raleway"),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Share the Google Opinion Rewards app with your friends so they can start earning too.",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontFamily: "Raleway"),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RaisedButton(
                          onPressed: () {},
                          color: Colors.lightBlue[50],
                          child: Text(
                            "Share now",
                            style:
                                TextStyle(color: Color(0xFF192a56), fontSize: 20.0),
                            textAlign: TextAlign.right,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
