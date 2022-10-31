import 'dart:ffi';

import 'package:awesonestyle/awesonestyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("AlertDialog example!!!"),
          backgroundColor: Colors.white,
          content: Text(
              "Este es un ejemplo del AlertDialog. esto es un texto de prueba"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  showMyAlert2(BuildContext context) {
    AwsScreenSize(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          icon: Container(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                child: Icon(Icons.usb_rounded),
              )),
          title: const Text(
            'Blog post published',
            textAlign: TextAlign.left,
          ),
          titlePadding: const EdgeInsets.symmetric(horizontal: 25),
          backgroundColor: Colors.white,
          content: const Text("""This blog post has been published. Team members
will be able to edit this post and republish changes."""),
          actionsAlignment: MainAxisAlignment.center,
          actionsPadding: const EdgeInsets.all(0),

          //buttonPadding: EdgeInsets.all(0),
          actions: [
            SizedBox(
              width: AwsScreenSize.width(35),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancelar",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              width: AwsScreenSize.width(35),
              child: OutlinedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.purple),
                ),
                child: const Text(
                  "Aceptar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  showMyAlert3(BuildContext context) {
    AwsScreenSize(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          icon: Container(
              alignment: Alignment.center,
              height: 200,
              width: AwsScreenSize.width(100),
              child: FadeInImage(
                  placeholder: AssetImage('assets/images/loading.gif'),
                  image: NetworkImage('https://picsum.photos/500/300'))),
          title: const Text(
            'Your video has been uploaded!',
            textAlign: TextAlign.center,
          ),
          titlePadding: const EdgeInsets.symmetric(horizontal: 25),
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("""You' re video has finished uploading and is livo."""),
              Row(
                children: [
                  SizedBox(
                      width: AwsScreenSize.width(28),
                      height: 39,
                      child: TextField(
                        decoration: InputDecoration(
                            label: Text('untitle.com/total/promo'),
                            border: OutlineInputBorder()),
                      )),
                  SizedBox(
                    width: AwsScreenSize.width(35),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.link,
                            color: Colors.blue,
                          ),
                          Text(
                            "Copy Link",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actionsAlignment: MainAxisAlignment.center,
          actionsPadding: const EdgeInsets.all(0),
          actions: [
            SizedBox(
              width: AwsScreenSize.width(35),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              width: AwsScreenSize.width(35),
              child: OutlinedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.purple),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: const Text("Alert 1"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: const Text("Alert 2"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert3(context);
              },
              child: const Text("Alert 3"),
            ),
          ],
        ),
      ),
    );
  }
}
