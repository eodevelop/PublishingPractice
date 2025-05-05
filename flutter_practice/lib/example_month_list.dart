import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleMonthList());
}

class ExampleMonthList extends StatelessWidget {
  const ExampleMonthList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF2C2C33),
      ),
      home: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'label': '개발', 'image': 'https://picsum.photos/400?image=10'},
      {'label': '기획', 'image': 'https://picsum.photos/400?image=20'},
      {'label': '디자인', 'image': 'https://picsum.photos/400?image=30'},
      {'label': '마케팅', 'image': 'https://picsum.photos/400?image=40'},
      {'label': '스타트업', 'image': 'https://picsum.photos/400?image=50'},
      {'label': '기타', 'image': 'https://picsum.photos/400?image=60'},
      // 총 12개로 맞추려면 이미지와 라벨을 추가하세요.
    ];

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          // 헤더 높이를 대략적으로 잡아서 그리드 셀 비율 계산
          const headerHeight = 200.0; // 타이틀, 서브타이틀, 패딩 포함
          final gridHeight = constraints.maxHeight - headerHeight;
          final itemWidth = constraints.maxWidth / 2;
          final itemHeight = gridHeight / 6;
          final ratio = itemWidth / itemHeight;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- Breadcrumbs ------------------------------------------------
                Row(
                  children: const [
                    _Crumb(text: '업무 분야'),
                    Icon(Icons.chevron_right, color: Colors.grey, size: 14),
                    _Crumb(text: '경력'),
                    Icon(Icons.chevron_right, color: Colors.grey, size: 14),
                    _Crumb(text: '카테고리'),
                  ],
                ),
                const SizedBox(height: 20),
                // --- Title ------------------------------------------------------
                const Text(
                  '어떤 일을 하고 계세요?',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '업무 분야와 경력에 맞게 콘텐츠를 추천해드려요😎',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 24),
                // --- Grid -------------------------------------------------------
                Expanded(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: ratio,
                    ),
                    itemBuilder: (context, index) {
                      final cat = categories[index];
                      return _CategoryCard(
                        label: cat['label']!,
                        imageUrl: cat['image']!,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// Helper Widgets
// -----------------------------------------------------------------------------
class _Crumb extends StatelessWidget {
  final String text;
  const _Crumb({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final String label;
  final String imageUrl;
  const _CategoryCard({required this.label, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(imageUrl, fit: BoxFit.cover),
          Container(color: Colors.black.withOpacity(0.45)),
          Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
