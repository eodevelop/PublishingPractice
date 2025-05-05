import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 12가지 카테고리 라벨과 이미지 URL
    final categories = [
      '개발',
      '기획',
      '디자인',
      '마케팅',
      '스타트업',
      '기타',
      '데이터',
      '운영',
      '영업',
      '고객지원',
      '인사',
      '금융',
    ];
    final images = List.generate(
      categories.length,
      (i) => 'https://picsum.photos/seed/${i + 1}/400/400',
    );

    return Scaffold(
      backgroundColor: const Color(0xFF2C2C33),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // 헤더 높이 감안하여 그리드 셀 비율 계산
            const headerHeight = 160.0;
            final gridHeight = constraints.maxHeight - headerHeight;
            final itemWidth = constraints.maxWidth / 2;
            final itemHeight = gridHeight / 6;
            final aspectRatio = itemWidth / itemHeight;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 크럼비
                  Row(
                    children: const [
                      Text(
                        '업무 분야',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Icon(Icons.chevron_right, size: 14, color: Colors.grey),
                      Text(
                        '경력',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Icon(Icons.chevron_right, size: 14, color: Colors.grey),
                      Text(
                        '카테고리',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // 제목 및 부제
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
                  const SizedBox(height: 16),
                  // 2x6 그리드
                  Expanded(
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: aspectRatio,
                      ),
                      itemCount: categories.length,
                      itemBuilder:
                          (context, index) => ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.network(images[index], fit: BoxFit.cover),
                                Container(color: Colors.black45),
                                Center(
                                  child: Text(
                                    categories[index],
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
    );
  }
}
