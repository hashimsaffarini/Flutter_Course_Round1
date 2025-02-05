import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/models/category_model.dart';
import 'package:notes_app/utils/app_styles.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int selectCategoryIndex = 0;
  int selectedTab = 0;
  // List Of Days ???????  10
  final List<DateTime> dates = List.generate(10, (index) {
    return DateTime.now().add(Duration(days: index));
  });
//Wedenesday
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 91,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dates.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedTab = index;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 8,
                    left: index == 0 ? 20 : 0,
                  ),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    width: 51,
                    decoration: BoxDecoration(
                      color: index != selectedTab
                          ? Colors.white
                          : const Color(0xff181818),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: const Color(0xffE6E6E6),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          DateFormat('E').format(dates[index]),
                          style: AppStyles.regular12.copyWith(
                            color: index != selectedTab
                                ? const Color(0xff181818)
                                : Colors.white,
                          ),
                        ),
                        Text(
                          DateFormat('d').format(dates[index]),
                          style: AppStyles.bold24.copyWith(
                            color: index != selectedTab
                                ? const Color(0xff181818)
                                : Colors.white,
                          ),
                        ),
                        Text(
                          DateFormat('MMM').format(dates[index]),
                          style: AppStyles.regular12.copyWith(
                            color: index != selectedTab
                                ? const Color(0xff181818)
                                : Colors.white,
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
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          height: 27,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectCategoryIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.only(
                    right: 8,
                    left: index == 0 ? 20 : 0,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    color: selectCategoryIndex != index
                        ? Colors.white
                        : const Color(0xFF0A0A0A),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectCategoryIndex != index
                          ? const Color(0xffE6E6E6)
                          : Colors.transparent,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        categories[index].name,
                        style: selectCategoryIndex != index
                            ? AppStyles.regular12.copyWith(
                                color: const Color(0xFF7C7C7C),
                              )
                            : AppStyles.bold14.copyWith(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        MasonryGridView.builder(
          itemCount: notes.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 24,
              ),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.primaries[index % Colors.primaries.length],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xffE6E6E6),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Meeting',
                    style: AppStyles.bold14.copyWith(
                      color: const Color(0xff181818),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    notes[index],
                    style: AppStyles.regular12.copyWith(
                      color: const Color(0xff7C7C7C),
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}

List<String> notes = [
  'Review of Previous Action Items\nProduct Development Update\nUser Feedback and Customer Insights\nCompetitive Analysis\nRoadmap Discussion ',
  'Reply to emails\nPrepare presentation slides for the marketing meeting\nConduct research on competitor products\nSchedule and plan customer interviews\nTake a break and recharge ',
  'Rice\nPasta\nCereal\nYogurt\nCheese\nButter',
  'Share insights and findings from recent competitive analysis.',
];
