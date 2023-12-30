import 'dart:convert';

import 'package:dart_app/configurations.dart';
import 'package:dart_app/data/data.dart';
import 'package:dart_app/models/projects/approvals/approval.dart';
import 'package:dart_app/models/projects/project.dart';
import 'package:firedart/firedart.dart';
import 'package:firedart/generated/google/type/latlng.pb.dart';

Future<Firestore> initApp() async {
  late Firestore app;

  try {
    app = Firestore.instance;
  } catch (e) {
    app = Firestore.initialize(
        Configurations.firebaseConfig['projectId'] as String);
  }

  return app;
}

List<Project> projects = [
  Project(
      approvalFiles: [
        ApprovalFile(
            name: 'File1',
            no: '155455122',
            otherDetails: {'RERA NO': 2424443},
            docLink: 'https://www.google.com/')
      ],
      name: 'Rudraksh',
      location: LatLng(latitude: 23.634501, longitude: 23.634501),
      address: 'Bareilly',
      blocks: blocks)
];
addData() async {
  var ref = await initApp();

  for (var proj in projects) {
    var projMap = proj.toMap();

    projMap.remove('approvalFiles');
    projMap.remove('blocks');

    var projRef = ref.collection('Amiltus').document(proj.name);

    await projRef.set(projMap).catchError((error) => print(error));

    for (var file in proj.approvalFiles) {
      await projRef
          .collection('approvalFiles')
          .document(file.name)
          .set(file.toMap())
          .catchError((error) => print(error));
    }

    for (var block in proj.blocks) {
      block.types;
      var blockMap = block.toMap();
      blockMap.remove('units');
      var blockRef = projRef.collection('blocks').document(block.name);
      await blockRef.set(blockMap).catchError((error) => print(error));

      for (var sale in sales) {
        sale.nominees;
        var saleMap = sale.toMap();
        saleMap.remove('history');
        saleMap.remove('nominees');
        var saleRef = blockRef
            .collection('sales')
            .document(sale.soldOn.toIso8601String());
        await saleRef
            .set(saleMap)
            .whenComplete(() => print('donezFrom'))
            .onError((error, stackTrace) => print(error));
        if (sale.history != null) {
          for (var history in sale.history!) {
            await saleRef
                .collection('history')
                .document(history.updateDetails.updatedOn.toIso8601String())
                .set(history.toMap());
          }
        }

        for (var note in sale.notes) {
          await saleRef
              .collection('notes')
              .document(note.entries.toList().first.toString())
              .set(note);
        }

        for (var nominee in sale.nominees) {
          await saleRef
              .collection('nominees')
              .document(nominee.applicantId)
              .set(nominee.toMap());
        }
      }

      for (var unit in block.units) {
        await blockRef
            .collection('units')
            .document(unit.unitNo)
            .set(unit.toMap())
            .catchError((error) => print(error));
      }
    }
  }
}

addUserData() async {
  var ref = await initApp();
  var projRef = await ref
      .collection('Applicants')
      .document(applicant.contact.mobile)
      .set(applicant.toMap());
}

addPaymentPlans() async {
  var ref = await initApp();
  for (var plan in paymentPlans) {
    var planMap = plan.toMap();

    var payPlanRef = await ref
        .collection('Amiltus')
        .document(projects[0].name)
        .collection('blocks')
        .document('A')
        .collection('Standard Payment Plans')
        .document(plan.name)
        .set(planMap);
  }
}

addPricing() async {
  var ref = await initApp();
  for (var priceBreakup in priceBreakups) {
    var princingRef = await ref
        .collection('Amiltus')
        .document(projects[0].name)
        .collection('blocks')
        .document('A')
        .collection('Pricing')
        .document(priceBreakup.updatedOn.toIso8601String())
        .collection('Types')
        .document(priceBreakup.unitCategory);
    var breakupMap = priceBreakup.toMap();

    await princingRef.set(breakupMap);

    // await princingRef.collection('addons').document(additional.)
  }
}

getData() async {
  var ref = await initApp();
  var resp = await ref.collection('Amiltus').get();
  print(resp);
}

void main() async {
  var apiKey = Configurations.firebaseConfig['apiKey'];

  // print('reaches');
  // getData().then((value) => print('done'));
  // addData().then((value) => print('done'));
  // //addUserData().then((value) => print('done'));
  // addPaymentPlans().then((value) => print('done'));
  // addPricing().then((value) => print('done'));
  // addUserData().then((value) => print('applicant done'));

  // List maps = projects.map((e) => e.toMap()).toList();
  // print({'Amiltus': maps});

  var res = projects[0].toMap();
  res.addAll({'pricing': priceBreakups.map((e) => e.toMap()).toList()});
  res.addAll(
      {'Standart Payment Plans': paymentPlans.map((e) => e.toMap()).toList()});
  res.addAll({'Sales': sales.map((e) => e.toMap()).toList()});
  Map js1 = {'Applicants': applicant.toMap(), 'Amiltus': res};
  print(jsonEncode(js1));
}
