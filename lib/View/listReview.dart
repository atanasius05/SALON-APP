import 'package:flutter/material.dart';

class ListReviewsPage extends StatelessWidget {
  final List<Map<String, String>> reviews = [
    {
      "name": "Jack Sparrow",
      "date": "17-08-2023",
      "review": "Good !!",
      "image": "images/two block.jpg"
    },
    {
      "name": "Elizabeth Swann",
      "date": "18-08-2023",
      "review": "Excellent service!",
      "image": "images/two block.jpg"
    },
    {
      "name": "Will Turner",
      "date": "19-08-2023",
      "review": "Highly recommend!",
      "image": "images/two block.jpg"
    },
    {
      "name": "Captain Barbossa",
      "date": "20-08-2023",
      "review": "Not bad at all.",
      "image": "images/two block.jpg"
    },
    {
      "name": "Davy Jones",
      "date": "21-08-2023",
      "review": "Could be better.",
      "image": "images/two block.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Review',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow.shade700,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            final review = reviews[index];
            return Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Card(
                color: Colors.grey.shade300,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(review["image"]!),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  review["name"]!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  review["date"]!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: List.generate(5, (starIndex) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 16,
                                );
                              }),
                            ),
                            SizedBox(height: 8),
                            Text(
                              review["review"]!,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
