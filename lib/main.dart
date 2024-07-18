import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    //const Center(
    //  child: Text(
    //    'Hello, world!',
    //    textDirection: TextDirection.ltr,
    //  ),
    //),
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'こんぶ @ Flutter大学',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        body:SingleChildScrollView(
          child:Column(
            children: [
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
              TweetTitle(),
            ],
          ),
        ),
      ),
    );

  }
}

class TweetTitle extends StatelessWidget {
  const TweetTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/flutter-textbook/1510946043718160386/mPJ6v_Xf_400x400.jpg'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('こんぶ @ Flutter大学'),
                  SizedBox(width: 8,),
                  Text('2022/05/05'),
                ],
              ),
              SizedBox(height: 4),
              Text('最高でした。'),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
