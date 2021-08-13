import 'package:flutter/material.dart';
import 'package:flutter_scaffold/blocks/auth_block.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    AuthBlock auth = Provider.of<AuthBlock>(context);
    return Column(
      children: <Widget>[
        if (auth.isLoggedIn)
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/drawer-header.jpg'),
            )),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'data:image/png;base64,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'),
            ),
            accountEmail: Text(auth.user['user_email']),
            accountName: Text(auth.user['user_display_name']),
          ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.home, color: Theme.of(context).accentColor),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket,
                    color: Theme.of(context).accentColor),
                title: Text('Shop'),
                trailing: Text('New',
                    style: TextStyle(color: Theme.of(context).primaryColor)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/shop');
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.category, color: Theme.of(context).accentColor),
                title: Text('Categorise'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/categorise');
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.favorite, color: Theme.of(context).accentColor),
                title: Text('My Wishlist'),
                trailing: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text('4',
                      style: TextStyle(color: Colors.white, fontSize: 10.0)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/wishlist');
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart,
                    color: Theme.of(context).accentColor),
                title: Text('My Cart'),
                trailing: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text('2',
                      style: TextStyle(color: Colors.white, fontSize: 10.0)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/cart');
                },
              ),
              ListTile(
                leading: Icon(Icons.lock, color: Theme.of(context).accentColor),
                title: Text('Login'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/auth');
                },
              ),
              Divider(),
              ListTile(
                leading:
                    Icon(Icons.settings, color: Theme.of(context).accentColor),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/settings');
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app,
                    color: Theme.of(context).accentColor),
                title: Text('Logout'),
                onTap: () async {
                  await auth.logout();
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
