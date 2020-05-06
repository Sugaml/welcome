import 'package:addform/formtest.dart';
import 'package:flutter/material.dart';
import 'Second.dart';
import 'productlisting.dart';
import 'Search.dart';
import 'text.dart';
import 'formtest.dart';
import 'FutureBuilder.dart';
import 'Listtile.dart';
class NavDrawerExample extends StatelessWidget {
  const NavDrawerExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
      ),
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('Add Catagory'),
          onTap: () {
              Navigator.push(  
              context,  
              MaterialPageRoute(builder: (context) =>AddProduct()),  
            );    
          },
        ),
        ListTile(
          title: Text('Product Histroy'),
          onTap: (){
              Navigator.push(  
                context,  
              MaterialPageRoute(builder: (context) =>MyHomePagea()),
              );
          },
        ),
        ListTile(
          title: Text('Text'),
          onTap: () {
             Navigator.push(  
                context,  
              MaterialPageRoute(builder: (context) =>IconExample()),
              );
          },
        ),
         ListTile(
          title: Text('Icon'),
          onTap: () {
             Navigator.push(  
                context,  
              MaterialPageRoute(builder: (context) =>TextExample()),
              );
          },
        ),
         ListTile(
          title: Text('Form'),
          onTap: () {
             Navigator.push(  
                context,  
              MaterialPageRoute(builder: (context) =>FormExample()),
              );
          },
        ),
        ListTile(
          title: Text('Future Builder'),
          onTap: () {
             Navigator.push(  
                context,  
              MaterialPageRoute(builder: (context) =>FutureBuildExample()),
              );
          },
        ),
         ListTile(
          title: Text('About Column'),
          onTap: () {
             Navigator.push(  
                context,  
              MaterialPageRoute(builder: (context) =>FutureBuildExample()),
              );
          },
        ),
         ListTile(
          title: Text('ListTile'),
          onTap: () {
             Navigator.push(  
                context,  
              MaterialPageRoute(builder: (context) =>ArticleDescription()),
              );
          },
        ),
      ],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('HAAT BAJAR'),
        ),
        body: Center(
          child: Text('Swip or click upper-left icon to see drawer.'),
        ),
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}

// <Null> means this route returns nothing.
/*class _NewPage extends MaterialPageRoute<Null> {
  _NewPage(int id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Page $id'),
              elevation: 1.0,
            ),
            body: Center(
              child: Text('Page $id'),
            ),
          );
        });
}*/
