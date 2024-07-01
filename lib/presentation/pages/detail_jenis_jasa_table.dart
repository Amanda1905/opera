import 'package:flutter/material.dart';
import 'package:opera/presentation/constant/theme.dart';

class DetailJenisJasaTable extends StatefulWidget {
  const DetailJenisJasaTable({super.key});

  @override
  State<DetailJenisJasaTable> createState() => _DetailJenisJasaTableState();
}

class _DetailJenisJasaTableState extends State<DetailJenisJasaTable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Detail Jenis Jasa',
                      style: boldBlackTextStyle.copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // mengatur posisi bayangan
              ),
            ],
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 25),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Detail Jenis Jasa')),
                  DataColumn(label: Text('Jenis Pelayanan')),
                  DataColumn(label: Text('Nama Jasa')),
                ],
                rows: const[
                  DataRow(
                    cells: [
                      DataCell(Text('Jasa Labuh Kapal Niaga')),
                      DataCell(Text('Dalam Negri')),
                      DataCell(Text('Jasa Labuh')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}