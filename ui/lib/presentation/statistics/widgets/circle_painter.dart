import 'package:budget_tracker/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:touchable/touchable.dart';

import '../dtos/statistics_dtos.dart';

class SectorsPainter extends CustomPainter {
  final BuildContext context;
  final List<CategorySpentAmount> categories;
  final CategorySpentAmount? selectedCategory;
  final double totalAmount;
  final Function onTap;
  SectorsPainter({
    required this.context,
    required this.categories,
    required this.selectedCategory,
    required this.totalAmount,
    required this.onTap,
  });


  double getArcRadius(double maxAdditionToDiameter,double innerDiameter, double percentage, double biggestPercentage) {
    return ((maxAdditionToDiameter * (percentage / biggestPercentage)) + innerDiameter) / 2;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var myCanvas = TouchyCanvas(context, canvas);

    final Paint paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 3.0
      ..style = PaintingStyle.fill;

    final maxAdditionToDiameter = 150.0;
    final innerDiameter = 150.0;

    const useCenter = true;

    List<Color> sectorColors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
      Colors.pink,
      Colors.amber
    ];
    List<String> colors = [
      "red",
      "orange",
      "yellow",
      "green",
      "teal",
      "blue",
      "indigo",
      "purple",
      "pink",
      "amber",
      "amber"
    ];

    // Draw arcs for each category
    // If category percentage exceeds 100%, draw a segment with bigger diameter
    // and draw the rest of the segment with smaller diameter
    // segment length is the percentage of total amount spent

    double startAngle = 0;
    double biggestPercentage = categories.reduce((a, b) => a.percentage > b.percentage ? a : b).percentage;
    Offset circleOffset = Offset(size.width / 2, size.width / 2);

    for (int i = 0; i < categories.length; i++) {
      final category = categories[i];
      final double sweepAngle = (category.amount / totalAmount) * 6.28319;
      final double endAngle = startAngle + sweepAngle;
      final redColor = category.categoryName == selectedCategory?.categoryName ? cRedColor : cRedColor.withAlpha(((i+10)*15%255));
      final blueColor = category.categoryName == selectedCategory?.categoryName ? cBlueColor : cBlueColor.withAlpha(((i+10)*15%255));

      final arcRect = Rect.fromCircle(
          center: circleOffset, radius: getArcRadius(innerDiameter, maxAdditionToDiameter, category.percentage, biggestPercentage));
      myCanvas.drawArc(arcRect, startAngle, sweepAngle, useCenter,
          paint..color = category.isOverspent ? redColor : blueColor,
          onTapDown: (tapDetail) {
            onTap(category);
          });
      if (category.isLeft) {
        final arcRect = Rect.fromCircle(
            center: circleOffset, radius: getArcRadius(innerDiameter, maxAdditionToDiameter, 1, biggestPercentage));
        myCanvas.drawArc(arcRect, endAngle, startAngle - endAngle, useCenter,
            paint..color = Colors.transparent,
            onTapDown: (tapDetail) {
              onTap(category);
            });
      }
      startAngle = endAngle;
    }


    // Draw budget circle
    Paint budgetPaint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = 3.0
      ..style = PaintingStyle.fill
      ..color = cLightBlueColor.withAlpha(50);
    canvas.drawCircle(
        circleOffset, getArcRadius(innerDiameter, maxAdditionToDiameter, 1, biggestPercentage), budgetPaint);

    // Draw inner circle
    myCanvas.drawCircle(
        circleOffset, innerDiameter / 2, paint..color = Colors.white, onTapDown: (tapDetail) {
      onTap(null);
    });

    // Add a line with selected category name
    // Add a line with the amount spent and the budget amount
    // 2 lines text
    TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: selectedCategory?.categoryName.getOrCrash() ?? "Tap on segment",
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout(
        minWidth: 0,
        maxWidth: innerDiameter,
    );
    textPainter.paint(
      canvas,
      Offset(
        (size.width - textPainter.width) / 2,
        (size.height - textPainter.height) / 2 - 10,
      ),
    );

    textPainter = TextPainter(
      text: TextSpan(
        text: selectedCategory == null
            ? "to see details"
            : "${selectedCategory!.amount.toStringAsFixed(0) ?? ""}${selectedCategory?.budgetAmount != null ? " / ${selectedCategory!.budgetAmount?.getOrElse(0).toStringAsFixed(0)}" : ""} RON",
        style: TextStyle(
          color: selectedCategory != null
              ? selectedCategory!.isOverspent ? cRedColor : cLightBlueColor
              : cBlackColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    textPainter.paint(
      canvas,
      Offset(
        (size.width - textPainter.width) / 2,
        (size.height - textPainter.height) / 2 + 10,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
