import 'package:flutter/material.dart';
import 'package:flutter_pengaduan_application/masyarakat_beranda.dart';
import 'package:flutter_pengaduan_application/masyarakat_buat.dart';
import 'package:get/get.dart';

class BerandaUtama extends StatefulWidget {
  const BerandaUtama({super.key});

  @override
  State<BerandaUtama> createState() => _BerandaUtamaState();
}

class _BerandaUtamaState extends State<BerandaUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const BerandaMasyarakat());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 132,
                    width: 132,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 0, 179, 255),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: const Text('Kumpulan masyarakat'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const BuatMasyarakat());
                  },
                  child: Container(
                     margin: const EdgeInsets.only(bottom: 10),
                    height: 132,
                    width: 132,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 179, 255),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: const Text('Buat masyarakat'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
