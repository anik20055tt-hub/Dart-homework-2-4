import 'package:flutter/material.dart';
import 'news_card.dart'; // импортируем нашу карточку

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            'Новости',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            // ===== Новость 1 =====
            NewsCard(
              image: 'https://picsum.photos/id/1015/600/400',
              title: 'Экономика сегодня',
              subtitle:
                  'Курс валют изменился. Эксперты объясняют причины роста и падения.',
              gradientColor: Colors.black,
            ),
            SizedBox(height: 20),

            // ===== Новость 2 =====
            NewsCard(
              image: 'https://picsum.photos/id/1025/600/400',
              title: 'Технологии будущего',
              subtitle:
                  'Искусственный интеллект всё активнее внедряется в повседневную жизнь.',
              gradientColor: Colors.blue,
            ),
            SizedBox(height: 20),

            // ===== Новость 3 =====
            NewsCard(
              image: 'https://picsum.photos/id/1035/600/400',
              title: 'Спорт и события',
              subtitle:
                  'Сборная одержала победу в важном матче и вышла в финал.',
              gradientColor: Colors.deepOrange,
            ),
          ],
        ),
      ),
    );
  }
}
