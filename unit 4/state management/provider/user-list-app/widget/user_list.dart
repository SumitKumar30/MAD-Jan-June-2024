import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:third_app/controller/user_notifier.dart';
import 'package:third_app/model/user.dart';

class UserList extends StatelessWidget {
//  final List<User> users;
//   final Function(User) onDelete;

  UserList();

  // const UserList({ Key? key, required this.users, required this.onDelete }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // only using it for printing the userlist length
     UserNotifier userNotifier = Provider.of<UserNotifier>(context);


    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => Card(
        elevation: 8,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Consumer<UserNotifier>(builder: (_,notifier,__) => 
                  Text(
                    'Name: ${notifier.userList[index].name}',
                    style: TextStyle(fontSize: 18),
                  ),
                  ),
                  
                  Consumer<UserNotifier>(builder: (_,notifier,__) => 
                  Text(
                    'City: ${notifier.userList[index].city}',
                    style: TextStyle(fontSize: 18),
                  ),
                  ),
                ],
              ),
              Consumer<UserNotifier>(
                builder: (_, notifier, __)=>
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => notifier.deleteUser(index),
                ),
              )
            ],
          ),
          ),
      ),
      itemCount: userNotifier.userList.length,
      );
  }
}