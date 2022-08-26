import 'dart:async';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<void> pdfGen() async {
  var pdf = pw.Document();

  
  pdf.addPage(
    pw.Page(
      orientation: pw.PageOrientation.portrait,
      margin: pw.EdgeInsets.all((10),),
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context){
        return pw.Container(
          alignment: pw.Alignment.center,
          decoration: pw.BoxDecoration(
            border: pw.Border.all(color: PdfColors.black,width: 5),
          ),
          child: pw.Container(height: 200,width: 200,color: PdfColors.red),
        );
      }
    ),
  );

}
