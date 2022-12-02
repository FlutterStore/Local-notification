import 'package:flutter/material.dart';
import 'package:local_notification_/notification_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Localnotification(),
    );
  }
}

class Localnotification extends StatefulWidget {
  const Localnotification({super.key});

  @override
  State<Localnotification> createState() => _LocalnotificationState();
}

class _LocalnotificationState extends State<Localnotification> {

  NotificationsServices notificationsServices = NotificationsServices();

  @override
  void initState() {
    super.initState();
    notificationsServices.initialiseNotification();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Local Notification",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(),
            Center(
              child: OutlinedButton(
                style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  notificationsServices.sendNotification("Successoft Infotech", "Flutter Store");
                }, 
                child: const Text("Get Notification",style: TextStyle(color: Colors.white),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}