import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../core/utils/spacing.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/common_image_view.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

  final trucks = [
    {
      'title': 'Truck KBK 761C',
      'date': 'April 28, 2025',
      'from': 'Nairobi',
      'to': 'Mombasa'
    },
    {
      'title': 'Truck KBC 163T',
      'date': 'April 20, 2025',
      'from': 'Kisumu',
      'to': 'Eldoret'
    },
  ];

  final machinery = [
    {'title': 'Excavator X100', 'date': 'April 18, 2025', 'site': 'Thika Road'},
    {
      'title': 'Crane Z900',
      'date': 'April 10, 2025',
      'site': 'Naivasha Project'
    },
  ];

  final returnLegs = [
    {
      'title': 'Return #001',
      'date': 'April 15, 2025',
      'from': 'Mombasa',
      'to': 'Nairobi'
    },
    {
      'title': 'Return #002',
      'date': 'April 5, 2025',
      'from': 'Kakamega',
      'to': 'Nakuru'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getVerticalSize(
          56.00,
        ),
        leadingWidth: 20,
        leading: Padding(padding: const EdgeInsets.all(6), child: Container()),
        title: Text(" My History",
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.figtree(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            )),
        actions: [
          Padding(
              padding: const EdgeInsets.all(6),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.delete))),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('🚚 Trucks Used',
              style: GoogleFonts.figtree(
                  fontSize: 16, fontWeight: FontWeight.w400)),
          const SizedBox(height: 8),
          ...trucks.map((t) => HistoryCard(
                title: t['title']!,
                subtitle: '${t['from']} → ${t['to']}',
                date: t['date']!,
              )),
          const SizedBox(height: 20),
          Text('🔧 Machinery Used',
              style: GoogleFonts.figtree(
                  fontSize: 16, fontWeight: FontWeight.w400)),
          const SizedBox(height: 8),
          ...machinery.map((m) => HistoryCard(
                title: m['title']!,
                subtitle: 'Site: ${m['site']}',
                date: m['date']!,
              )),
          const SizedBox(height: 20),
          Text('🔁 Return Legs',
              style: GoogleFonts.figtree(
                  fontSize: 16, fontWeight: FontWeight.w400)),
          const SizedBox(height: 8),
          ...returnLegs.map((r) => HistoryCard(
                title: r['title']!,
                subtitle: '${r['from']} → ${r['to']}',
                date: r['date']!,
              )),
        ],
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;

  const HistoryCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: ListTile(
        leading: const Icon(Icons.history, color: Colors.cyan),
        title: Text(title,
            style: GoogleFonts.figtree(fontWeight: FontWeight.w300)),
        subtitle: Text(subtitle,
            style: GoogleFonts.figtree(
              fontWeight: FontWeight.w300,
            )),
        trailing: Text(date,
            style: GoogleFonts.figtree(
              fontWeight: FontWeight.w300,
            )),
      ),
    );
  }
}
