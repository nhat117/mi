import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: MainBody(),
        ),
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://media.licdn.com/dms/image/D5603AQGymM9nBfxojA/profile-displayphoto-shrink_800_800/0/1686995239842?e=1708560000&v=beta&t=-dprMFD5mvubc50qkq9-gvA9pcva-1SqoQS3Cj19FHY"),
          radius: 50.0,
        ),
        Text(
          "Bui Minh Nhat",
          style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
        ),
        SizedBox(
          height: 20,
          width: 150,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
          "Software Engineer",
          style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 2.5),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: ListTile(
              leading: Icon(Icons.phone, color: Colors.black),
              title: Text(
                "+84 765184635",
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: 'Poppins'),
              ),
            ),
          ),
        ),
        Card(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: ListTile(
              leading: Icon(Icons.email, color: Colors.black),
              title: Text(
                "nhat117@gmail.com",
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: 'Poppins'),
              ),
            ),
          ),
        )
      ],
    );
  }
}

// Row(
// children: [
// Icon(
// Icons.phone,
// color: Colors.black,
// ),
// Text(
// "+84 765184635",
// style: TextStyle(
// color: Colors.black, fontSize: 20, fontFamily: 'Poppins'),
// )
// ],
// ),
