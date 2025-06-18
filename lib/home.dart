import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget Chats(Widget,String name,String lastMessage,String time ){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: Widget,
        radius: 30,

      ),
      title: Text('$name'),
      subtitle: Text('$lastMessage'),
      trailing: Text('$time'),
    );
  }

  Widget Calls(Widget,String name,String lastMessage,String time,Widget Icon){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: Widget,
        radius: 30,

      ),
      title: Text('$name'),
      subtitle: Text('$lastMessage'),
      trailing: Column(
        children: [
          Text('$time'),
          SizedBox(height: 5,),
          Icon,
        ],
      ),
    );
  }

  Widget Status (String text, String time){
    return ListTile(
        leading: CircleAvatar(
        backgroundColor: Colors.teal,
        radius: 55,
        child: CircleAvatar(
        backgroundImage: AssetImage('images/img11.jpg'),
    radius: 25,
    ),
    ),
    title: Text(
    '$text',
    ),
    subtitle: Text(
    '$time',
    ),
        trailing: Icon(Icons.remove_red_eye),
    );
  }

  Widget OthersStatus (String text, String time, String trail,int num){
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        radius: 55,
        child: CircleAvatar(
          backgroundImage: AssetImage('images/img$num.jpg'),
          radius: 26,
        ),
      ),
      title: Text(
        '$text',
      ),
      subtitle: Text(
        '$time',
      ),
      trailing: Text('$trail'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Whatsapp',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,

                ),
              ),
            ),
            actions: [
              Icon(Icons.search,color: Colors.white,),
             PopupMenuButton(
               iconColor: Colors.white,
                 itemBuilder: (context) => [
                   PopupMenuItem(
                       child: Text('New Group'),
                   ),
                   PopupMenuItem(
                     child: Text('Settings'),
                   ),
                   PopupMenuItem(
                     child: Text('Logout'),
                   ),
                 ]
             ),


            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
                tabs: [
                  Text('Chats',style: TextStyle(fontSize: 19,color: Colors.white),),
                  Text('Status',style: TextStyle(fontSize: 19,color: Colors.white),),
                  Text('Calls',style: TextStyle(fontSize: 19,color: Colors.white),),
                ],

            ),
          ),

          body: TabBarView(
            children: [
             ListView(
               children: [
                 Chats(AssetImage('images/img1.jpg'), 'Ahmad', 'how are you', '7:00 pm'),
                 Chats(AssetImage('images/img2.jpg'), 'Alishba', 'where?', '12:28 am'),
                 Chats(AssetImage('images/img3.jpg'), 'Ali', 'hello!!', '3:45 pm'),
                 Chats(AssetImage('images/img4.jpg'), 'Sunny', 'let\'s go', '4:05 pm'),
                 Chats(AssetImage('images/img5.jpg'), 'Bilal', 'Aao jalse te', '9:50 am'),
                 Chats(AssetImage('images/img6.jpg'), 'Tehman', 'oye kdhr ha?', '8:00 pm'),
                 Chats(AssetImage('images/img9.jpg'), 'Zohaib', 'biryani khasaa', '10:55 am'),
                 Chats(AssetImage('images/img1.jpg'), 'Mehdi', 'Meow Meow', '11:09 pm'),
                 Chats(AssetImage('images/img8.jpg'), 'Noor', 'how are you', '7:00 pm'),
                 Chats(AssetImage('images/img10.jpg'), 'Shayan', 'Vote ko izzat do', '6:10 pm'),
                 Chats(AssetImage('images/img12.jpg'), 'Ali Sher', 'Grade btao', '2:34 am'),
                 Chats(AssetImage('images/img11.jpg'), 'Saba', 'hahaha...', '11:30 pm'),
                 Chats(AssetImage('images/img7.jpg'), 'Halima', 'happy!!', '12:00 am'),
                 Chats(AssetImage('images/img1.jpg'), 'Nimra', 'kese ho bhai?', '10:26 pm'),
                 Chats(AssetImage('images/img13.jpg'), 'Urwa', 'choti bachi ho kya', '1:53 pm'),

               ],
             ),

              ListView(
                children: [
                  SizedBox(height: 10,),
                  Status('My Status', '35 minutes ago'),
                  SizedBox(
                    height: 40,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30,bottom: 10),
                    child: Text(
                      'Recent Updates',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  OthersStatus('Nimra', '7:20pm','1 hour ago',1),
                  OthersStatus('Ahmad', '9:34pm','10 minutes ago',4),
                  OthersStatus('Ali', '1:12pm','4 hours ago',8),
                  OthersStatus('Noor', '10:50am','yesterday',3),



                ]



              ),


              ListView(
                children: [
                  // Calls(AssetImage('images/img1.jpg'), 'Ahmad', 'missed call ', '7:00 pm',Icon(Icons.call,size: 18,),),
                  // Calls(AssetImage('images/img2.jpg'), 'Alishba', 'missed video call ', '12:28 am',Icon(Icons.video_call_rounded,size: 18,),),
                  // Calls(AssetImage('images/img3.jpg'), 'Ali', 'missed video call ', '3:45 pm',Icon(Icons.video_call_rounded,size: 18,),),
                  // Calls(AssetImage('images/img4.jpg'), 'Sunny', 'missed call ', '4:05 pm',Icon(Icons.call,size: 18,),),
                  // Calls(AssetImage('images/img5.jpg'), 'Bilal', 'missed call ', '9:50 am',Icon(Icons.call,size: 18,),),
                  // Calls(AssetImage('images/img6.jpg'), 'Tehman', 'missed call ', '8:00 pm',Icon(Icons.call,size: 18,),),
                  // Calls(AssetImage('images/img9.jpg'), 'Zohaib', 'missed video call ', '10:55 am',Icon(Icons.video_call_rounded,size: 18,),),
                  Calls(AssetImage('images/img1.jpg'), 'Mehdi', 'missed call ', '11:09 pm',Icon(Icons.video_call_rounded,size: 20,),),
                  Calls(AssetImage('images/img8.jpg'), 'Noor', 'missed call ', '7:00 pm',Icon(Icons.call,size: 20,),),
                  Calls(AssetImage('images/img10.jpg'), 'Shayan', 'missed video call ', '6:10 pm',Icon(Icons.video_call_rounded,size: 20,),),
                  Calls(AssetImage('images/img12.jpg'), 'Ali Sher', 'missed call ', '2:34 am',Icon(Icons.call,size: 20,),),
                  Calls(AssetImage('images/img11.jpg'), 'Saba', 'missed call ', '11:30 pm',Icon(Icons.call,size: 20,),),
                  Calls(AssetImage('images/img7.jpg'), 'Halima', 'missed video call ', '12:00 am',Icon(Icons.video_call_rounded,size: 20,),),
                  Calls(AssetImage('images/img1.jpg'), 'Nimra', 'missed call ', '10:26 pm',Icon(Icons.call,size: 20,),),
                  Calls(AssetImage('images/img13.jpg'), 'Urwa', 'missed call ', '1:53 pm',Icon(Icons.call,size: 20,),),
                ],
              ),

            ],
          ),

          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.teal,
            onPressed: (){},
            child: Icon(Icons.add,size: 30,color: Colors.white,),
          ),

        )
    );
  }
}
