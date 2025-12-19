import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String image;        // ссылка на картинку
  final String title;        // заголовок новости
  final String subtitle;     // подзаголовок / краткое описание
  final Color gradientColor; // цвет градиента поверх картинки

  const NewsCard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.gradientColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28), // скругления
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 20,
            offset: Offset(0, 10), // смещение тени
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ===== Фото + градиент + заголовок =====
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
            child: Stack(
              children: [
                // Фото
                Image.network(
                  image,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                // Градиент
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        gradientColor.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),

                // Заголовок поверх картинки
                Positioned(
                  left: 16,
                  bottom: 16,
                  right: 16,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 8,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ===== Подзаголовок / краткое описание =====
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
