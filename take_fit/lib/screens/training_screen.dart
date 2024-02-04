import 'package:flutter/material.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:take_fit/screens/responsive.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  Screen device = Screen.mobile;

  Widget drawScreen() {
    switch (device) {
      case Screen.mobile:
        return Mobile();
      case Screen.tablet:
        return Row(
          children: [
            SizedBox(width: 480, height: double.infinity, child: Mobile()),
            Expanded(child: ConversationsFrame()),
          ],
        );
      case Screen.desktop:
        return Row(
          children: [
            SizedBox(width: 480, child: Mobile()),
            Expanded(child: ConversationsFrame()),
            SizedBox(width: 350, child: Desktop()),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      device = detectScreen(MediaQuery.of(context).size);
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Antrenman"),
      ),
      body: drawScreen(),
    );
  }

  Widget Mobile() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  "assets/images/spor1.jpg",
                  width: 350,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/spor2.jpg",
              width: 350,
            ),
          ),
          SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/spor3.jpg",
              width: 350,
            ),
          ),
          SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/spor4.jpg",
              width: 350,
            ),
          ),
          SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/spor5.jpg",
              width: 350,
            ),
          ),
          SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/spor6.jpg",
              width: 350,
            ),
          ),
          SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/spor7.jpg",
              width: 350,
            ),
          ),
          SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/spor8.jpg",
              width: 350,
            ),
          ),
          SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "assets/images/spor9.jpg",
              width: 350,
            ),
          ),

          

          SizedBox(height: 15),
        ],
      ),
    );
  }

  ListView ConversationsFrame() {
    return ListView(
      children: [
        BubbleSpecialThree(
          text: 'En yeni içerikler için takipte kalın',
          color: Color.fromARGB(255, 118, 118, 118),
          tail: false,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Bizleri tercih ettiğiniz için teşekkür ederiz',
        color: Color.fromARGB(255, 118, 118, 118),
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Hocam antrenman programı yazabilirmiyiz',
          color: Color(0xFFE8E8EE),
          tail: false,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: "Ne zaman müsaitsiniz",
          color: Color(0xFFE8E8EE),
          tail: false,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: "Bugün?",
          color: Color(0xFFE8E8EE),
          tail: true,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: 'Tabii..',
         color: Color.fromARGB(255, 118, 118, 118),
          tail: false,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Bugün olabilir',
       color: Color.fromARGB(255, 118, 118, 118),
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Hangi bölge için program oluşturalım',
      color: Color.fromARGB(255, 118, 118, 118),
          tail: false,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: 'En yeni içerikler için takipte kalın',
          color: Color.fromARGB(255, 118, 118, 118),
          tail: false,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Bizleri tercih ettiğiniz için teşekkür ederiz',
        color: Color.fromARGB(255, 118, 118, 118),
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Hocam antrenman programı yazabilirmiyiz',
          color: Color(0xFFE8E8EE),
          tail: false,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: "Ne zaman müsaitsiniz",
          color: Color(0xFFE8E8EE),
          tail: false,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: "Bugün?",
          color: Color(0xFFE8E8EE),
          tail: true,
          isSender: false,
        ),
        BubbleSpecialThree(
          text: 'Tabii..',
         color: Color.fromARGB(255, 118, 118, 118),
          tail: false,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Bugün olabilir',
       color: Color.fromARGB(255, 118, 118, 118),
          tail: true,
          textStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        BubbleSpecialThree(
          text: 'Hangi bölge için program oluşturalım',
      color: Color.fromARGB(255, 118, 118, 118),
          tail: false,
          isSender: false,
        ),
       
      ],
    );
  }

  Padding Desktop() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: 400,
          height: 1100,
          color: Color.fromARGB(206, 242, 242, 242),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sağlıklı Yaşam Rehberi",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Image.asset("assets/images/elma.jpeg",width: 400,)
                  ],
                ),
                Divider(),
                
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/koc.jpeg",width: 400,),
                Divider(),
                
                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/images/golge.jpeg",width: 400,),
                Divider(),
                Image.asset("assets/images/kadin.jpeg",width: 400,),
                Divider(),
                Image.asset("assets/images/adam.jpeg",width: 400,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

