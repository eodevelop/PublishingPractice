import 'package:flutter/material.dart';

void main() {
  runApp(const YayoungLogin());
}

class YayoungLogin extends StatelessWidget {
  const YayoungLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 상단 여백
              SizedBox(height: 1),
              // 중앙 로고 텍스트
              Center(
                child: Text(
                  'YAYoung',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF234032),
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              // 하단 로그인 버튼 영역
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Column(
                  children: [
                    _LoginButton(
                      icon: Icons.chat_bubble_outline,
                      text: '카카오로 로그인',
                      onTap: () {},
                    ),
                    SizedBox(height: 16),
                    _LoginButton(
                      icon: Icons.apple,
                      text: 'Apple로 로그인',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const _LoginButton({
    required this.icon,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: Color(0xFFF7F7FA),
          borderRadius: BorderRadius.circular(16),
        ),
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24, color: Colors.black),
            SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
