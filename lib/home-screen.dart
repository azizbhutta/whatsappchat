import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chat'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
                const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,) => [
                    const PopupMenuItem(
                        value: 1,
                        child: Text('New Group')),
                    const PopupMenuItem(
                        value:2,
                        child: Text('Setting')),
                    const PopupMenuItem(
                        value: 3,
                        child: Text('LogOut'))
                    ]
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 5,
                  itemBuilder: (context,index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('john Wick'),
                      subtitle: Text('Were Is My Dog'),
                      trailing: Text('5:06 pm'),
                    );
                  }),
              ListView.builder(
                itemCount: 5,
                  itemBuilder: (context, index){
                  if ( index == 0){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('New Update'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.grey,
                                      width: 3
                                  )
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage('https://images.pexels.com/photos/2773977/pexels-photo-2773977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                            title: Text('taylor'),
                            subtitle: Text('25m ago'),
                          ),
                        ],
                      ),
                    );
                  }else{
                    return  ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.grey,
                                width: 3
                            )
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/2773977/pexels-photo-2773977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: Text('taylor'),
                      subtitle: Text('25m ago'),
                    );
                  }

              }),
              ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index){
                    return  ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/678783/pexels-photo-678783.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('carry'),
                      subtitle: Text(index/2 ==0 ?'You have missed call': 'call time is 6:45'),
                      trailing: Icon(index / 2 == 0 ?Icons.phone : Icons.video_call),
                    );
                  })
            ],
          ),
        ));
  }
}
