import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/home/compass.dart';

class FlowChart extends StatefulWidget {
  const FlowChart({super.key});

  @override
  State<FlowChart> createState() => _FlowChartState();
}

class _FlowChartState extends State<FlowChart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu_outlined),
                    Text(
                      "App name",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Text("BA", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),

                Container(
                  height: 30,
                  margin: EdgeInsets.only(top: 20),
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children: [
                      Topbutton("Tab", true),
                      Topbutton("Tab", false),
                      Topbutton("Tab", false),
                      Topbutton("Tab", false),
                      Topbutton("Tab", false),
                      Topbutton("Tab", false),
                    ],
                  ),
                ),
                SizedBox(
                  height: 165,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      boxmodel("45,678.00", '20'),
                      boxmodel("2363.00", '80'),
                      boxmodel("78272.00", '60'),
                      boxmodel("5767.00", '10'),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          "Title",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(
                          right: 15,
                          left: 15,
                          bottom: 15,
                        ),
                        width: 350,
                        height: 320,
                        child: ChartSheet(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),

                Container(
                  width: double.infinity,

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          "Title",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      bottomBox(),
                      bottomBox(),
                      bottomBox(),
                      bottomBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget bottomBox() {
  return Container(
    margin: EdgeInsets.only(right: 15, left: 15, bottom: 15),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.black,
          child: Text("BA", style: TextStyle(color: Colors.white)),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Balachander A",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Text(
              "email@domain.net",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget boxmodel(amount, percentage) {
  return Container(
    width: 230,
    height: 140,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade400),
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.only(top: 30, right: 10),
    child: Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Title",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),

          Text(
            '\$$amount ',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),

          Text(
            '+$percentage% month over month',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    ),
  );
}

class ChartSheet extends StatelessWidget {
  const ChartSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: (value, meta) {
                const style = TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                );
                switch (value.toInt()) {
                  case 0:
                    return const Text("", style: style);
                  case 1:
                    return const Text("Nov 23", style: style);

                  case 2:
                    return const Text("24", style: style);

                  case 3:
                    return const Text("25", style: style);

                  case 4:
                    return const Text("26", style: style);

                  case 5:
                    return const Text("27", style: style);
                  case 6:
                    return const Text("28", style: style);
                  case 7:
                    return const Text("29", style: style);
                  case 8:
                    return const Text("30", style: style);
                }
                return const Text("");
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: (value, meta) {
                return Text(
                  "${value.toInt() * 10}k",

                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                );
              },
            ),
          ),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),

        borderData: FlBorderData(show: false),
        // // minX: 0,
        // // minY: 0,
        // // maxX: 8,
        // // maxY: 8,
        gridData: FlGridData(
          show: true,
          drawHorizontalLine: true,
          drawVerticalLine: false,
        ),

        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 1),
              FlSpot(1, 2),
              FlSpot(2, 4),
              FlSpot(3, 4),
              FlSpot(4, 9),
            ],
            isCurved: true,
            color: Colors.blue,
            barWidth: 3,
            dotData: FlDotData(show: true),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.blue.withOpacity(0.1),
            ),
          ),
        ],

        lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((spot) {
                int value = spot.y.toInt() * 10;
                return LineTooltipItem(
                  '${value.toStringAsFixed(1)}k',
                  const TextStyle(color: Colors.white),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }
}
