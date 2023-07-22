import 'package:flutter_demo/helper/app_constant.dart';

import 'helper/export_helper.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.chat_bubble_outline,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, ${AppConstants.userName}!",
                      style: GoogleFonts.lora(
                        textStyle: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      "What do you wanna learn today?",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CategoryCard(
                          icon: categoryCardList[0].icon,
                          title: categoryCardList[0].title,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        CategoryCard(
                          icon: categoryCardList[1].icon,
                          title: categoryCardList[1].title,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        CategoryCard(
                          icon: categoryCardList[2].icon,
                          title: categoryCardList[2].title,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        CategoryCard(
                          icon: categoryCardList[3].icon,
                          title: categoryCardList[3].title,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CardList(
                infoCard: programCardList,
                title: "Programs for you",
              ),
              CardList(
                infoCard: eventCardList,
                title: "Events and experiences",
              ),
              CardList(
                infoCard: lessonCardList,
                title: "Lessons for you",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
