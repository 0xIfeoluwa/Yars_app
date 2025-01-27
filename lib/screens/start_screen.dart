import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yars_app/widgets/custom_button.dart';
import 'package:yars_app/widgets/page_view_widget.dart';

class PageIndicator extends StatefulWidget {
  const PageIndicator({super.key});

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  // To keep track of the page we are on
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: PageView(
              //PageView for each page layout
              controller: _pageController,
              children: const [
                PageViewWidget(text: 'Event Services'),
                PageViewWidget(text: 'Efficient and trusted'),
                PageViewWidget(text: 'Efficient and trusted'),
              ],
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.5),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
            ),
          ),
          CustomButton(
            onPressed: () => context.go('/Sign_up'),
            text: 'Continue',
          ),
        ],
      ),
    );
  }
}
