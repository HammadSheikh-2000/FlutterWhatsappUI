import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String id='home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                )
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context)=>[

                const PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text('Settings'),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text('Log Out'),
                    )
              ]
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body:  TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 100,
                  itemBuilder: (context,index){
                  return const ListTile(
                    title: Text('John Wick'),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/profile.jpg')),
                    subtitle: Text('How are you?'),
                    trailing: Text('3:45 PM'),
                  );
              }),
              const Text('Status'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return const ListTile(
                      title: Text('John Wick'),
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ),
                      subtitle: Align(
                        alignment: Alignment.topLeft,
                          child: Icon(Icons.call)),
                      trailing: Text('3:45 PM'),
                    );
                  }),
            ],
          ),
        )
    );
  }
}
