import 'package:flutter/material.dart';

void main() {
  runApp(const CoovBioLogin());
}

class CoovBioLogin extends StatelessWidget {
  const CoovBioLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 120, 30, 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "생체인증을\n사용하시겠어요?",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "생체인증을 이용해 로그인해보세요!",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Center(
                          child: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.blue,
                            size: 250,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(26),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text("나중에 하기"),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Colors.blue, // 테두리 색상
                        width: 1.0, // 테두리 두께
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10), // 버튼 사이 간격
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text("사용하기"),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.blue, // 주요 버튼 색상
                    foregroundColor: Colors.white, // 텍스트 색상
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
