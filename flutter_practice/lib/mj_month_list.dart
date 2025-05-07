import 'package:flutter/material.dart';

void main() {
  runApp(const MjMonthList());
}

class MjMonthList extends StatelessWidget {
  const MjMonthList({super.key});

  static const months = [
    '1월',
    '2월',
    '3월',
    '4월',
    '5월',
    '6월',
    '7월',
    '8월',
    '9월',
    '10월',
    '11월',
    '12월',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2C2C33),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              const headerHeight = 120.0;
              final gridHeight = constraints.maxHeight - headerHeight;
              final itemWidth = constraints.maxWidth / 2;
              final itemHeight = gridHeight / 6;
              final aspectRatio = itemWidth / itemHeight;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 120),
                    Expanded(
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: aspectRatio,
                        ),
                        itemCount: months.length,
                        itemBuilder:
                            (context, index) => ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Container(color: Colors.black45),
                                  Center(
                                    child: Text(
                                      months[index],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
