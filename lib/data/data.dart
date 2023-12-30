import 'package:dart_app/custom%20enums/unit_type.dart';
import 'package:dart_app/models/applicants/applicant.dart';
import 'package:dart_app/models/applicants/contact.dart';
import 'package:dart_app/models/projects/blocks/blocks.dart';
import 'package:dart_app/models/projects/blocks/categories.dart';
import 'package:dart_app/models/projects/blocks/plc.dart';
import 'package:dart_app/models/projects/blocks/payment_schedule/custom_payment_plan.dart';
import 'package:dart_app/models/projects/blocks/pricing/price_breakup.dart';
import 'package:dart_app/models/projects/blocks/pricing/pricing.dart';
import 'package:dart_app/models/projects/approvals/approval.dart';
import 'package:dart_app/models/projects/blocks/sales/authority.dart';
import 'package:dart_app/models/projects/blocks/sales/nominee.dart';
import 'package:dart_app/models/projects/blocks/sales/poc.dart';
import 'package:dart_app/models/projects/blocks/sales/sale_history.dart';
import 'package:dart_app/models/projects/blocks/sales/sales.dart';
import 'package:dart_app/models/unit/pls_road.dart';
import 'package:dart_app/models/unit/road_size.dart';
import 'package:dart_app/models/unit/std_size.dart';
import 'package:dart_app/models/unit/unit.dart';
import 'package:dart_app/models/unit/unit_area.dart';
import 'package:dart_app/models/unit/unit_dimension.dart';
import 'package:dart_app/models/unit/unit_direction.dart';
import 'package:firedart/auth/user_gateway.dart';

List<Unit> units = [
  Unit(
    unitCategory: UnitCategory.Type_II,
    floorNo: 2,
    unitNo: '25A',
    unitType: UnitType.FLAT,
    unitArea: UnitArea(
        carpetArea: 54554,
        plotArea: 46464,
        constructedArea: 446,
        covered: 5456,
        superArea: 255455),
    unitDimension: UnitDimension(left: 120, right: 120, back: 170, front: 170),
    roadSize: RoadSize(front: 40, corner: 50),
    unitDirection: UnitDirection(
      east: 'house4',
      west: 'road',
      south: 'park',
      north: 'road',
    ),
    plc: {"Road": true, "Swimming pool": true, "Parking": true},
    notes: [],
    unitAvailability: UnitAvailability.AVAILABLE,
    parkings: [],
  ),
  Unit(
    unitCategory: UnitCategory.Type_II,
    floorNo: 2,
    unitNo: '25B',
    unitType: UnitType.VILLA,
    unitArea: UnitArea(
        carpetArea: 54554,
        plotArea: 46464,
        constructedArea: 446,
        covered: 5456,
        superArea: 255455),
    unitDimension: UnitDimension(left: 120, right: 120, back: 170, front: 170),
    roadSize: RoadSize(front: 45, corner: 55),
    unitDirection: UnitDirection(
      east: 'house5',
      west: 'road',
      south: 'park',
      north: 'road',
    ),
    plc: {"Road": true, "Swimming pool": true, "Parking": true},
    notes: [],
    unitAvailability: UnitAvailability.AVAILABLE,
    parkings: [],
  ),
  Unit(
    unitCategory: UnitCategory.Type_II,
    floorNo: 2,
    unitNo: '25C',
    unitType: UnitType.FLAT,
    unitArea: UnitArea(
        carpetArea: 54554,
        plotArea: 46464,
        constructedArea: 446,
        covered: 5456,
        superArea: 255455),
    unitDimension: UnitDimension(left: 120, right: 120, back: 170, front: 170),
    roadSize: RoadSize(front: 40, corner: 50),
    unitDirection: UnitDirection(
      east: 'house4',
      west: 'road',
      south: 'park',
      north: 'road',
    ),
    plc: {"Road": true, "Swimming pool": true, "Parking": true},
    notes: [],
    unitAvailability: UnitAvailability.AVAILABLE,
    parkings: [],
  ),
  Unit(
    unitCategory: UnitCategory.Type_II,
    floorNo: 2,
    unitNo: '25D',
    unitType: UnitType.VILLA,
    unitArea: UnitArea(
        carpetArea: 54554,
        plotArea: 46464,
        constructedArea: 446,
        covered: 5456,
        superArea: 255455),
    unitDimension: UnitDimension(left: 120, right: 120, back: 170, front: 170),
    roadSize: RoadSize(front: 45, corner: 55),
    unitDirection: UnitDirection(
      east: 'house5',
      west: 'road',
      south: 'park',
      north: 'road',
    ),
    plc: {"Road": true, "Swimming pool": true, "Parking": true},
    notes: [],
    unitAvailability: UnitAvailability.AVAILABLE,
    parkings: [],
  )
];

List<Blocks> blocks = [
  Blocks(
      categories: [
        Category(
            unitArea: UnitArea(
                carpetArea: 54554,
                plotArea: 46464,
                constructedArea: 446,
                covered: 5456,
                superArea: 255455),
            unitCategory: UnitCategory.Type_II)
      ],
      stages: [],
      name: 'A',
      created: DateTime.now(),
      types: [],
      tags: ['2BHK', '3BHK'],
      plc: {"Road": true, "Swimming pool": true, "Parking": true},
      units: units),
  Blocks(
      categories: [
        Category(
            unitArea: UnitArea(
                carpetArea: 54554,
                plotArea: 46464,
                constructedArea: 446,
                covered: 5456,
                superArea: 255455),
            unitCategory: UnitCategory.Type_II)
      ],
      stages: [],
      name: 'B',
      created: DateTime.now(),
      types: [],
      tags: ['2BHK', '3BHK'],
      plc: {"Road": true, "Swimming pool": true, "Parking": true},
      units: units),
  Blocks(
      categories: [
        Category(
            unitArea: UnitArea(
                carpetArea: 54554,
                plotArea: 46464,
                constructedArea: 446,
                covered: 5456,
                superArea: 255455),
            unitCategory: UnitCategory.Type_II)
      ],
      stages: [],
      name: 'C',
      created: DateTime.now(),
      types: [],
      tags: ['2BHK', '3BHK'],
      plc: {"Road": true, "Swimming pool": true, "Parking": true},
      units: units),
];

List<Sales> sales = [
  Sales(
    history: [
      SaleHistory(
        unitNo: '25A',
        blockName: 'A',
        soldOn: DateTime.now(),
        costing: 3500000.78,
        gst: GstType.AS_APPLICABLE,
        agreementVal: ApprovalFile(
            docLink: 'https://google.com',
            no: '54646464',
            name: 'agreement1',
            otherDetails: {}),
        supplementaryAgreements: [
          ApprovalFile(
              docLink: 'https://google.com',
              no: '54646464',
              name: 'supplementary agreement1',
              otherDetails: {}),
        ],
        loanSanction: 3000000.00,
        sanctionBank: 'HDFC',
        owners: ['4558855556'],
        soldBy: Authority(designation: 'Sales Representative', name: 'Rajiv'),
        approvedBy: Authority(designation: 'UpperManager', name: 'Suresh'),
        incentiveAllocated: '50000',
        pointOfContact: Poc(
            relationToApplicant: 'Brother of Ravi',
            name: 'Veer',
            primaryEmail: 'veer@gmail.com',
            secondaryEmail: 'veer123@gmail.com',
            phoneNo: 5464664),
        notes: [],
        status: SaleStatus.LIVE,
        nominees: [
          Nominee(
              applicantId: '54464646',
              name: 'bbbbb',
              relation_with_applicant: 'Brother')
        ],
        updateDetails: UpdateDetails(
            updatedOn: DateTime.now(),
            approvedBy: Authority(designation: 'Manager', name: 'Ravi'),
            updatedBy:
                Authority(designation: 'Sales Representative', name: 'Rajesh'),
            reason: 'changes sanction bank'),
      )
    ],
    unitNo: '25A',
    blockName: 'A',
    soldOn: DateTime.now(),
    costing: 3500000.78,
    gst: GstType.AS_APPLICABLE,
    agreementVal: ApprovalFile(
        docLink: 'https://google.com',
        no: '54646464',
        name: 'agreement1',
        otherDetails: {}),
    supplementaryAgreements: [
      ApprovalFile(
          docLink: 'https://google.com',
          no: '54646464',
          name: 'supplementary agreement1',
          otherDetails: {}),
    ],
    loanSanction: 3000000.00,
    sanctionBank: 'HDFC',
    owners: ['4558855556'],
    soldBy: Authority(designation: 'Sales Representative', name: 'Rajiv'),
    approvedBy: Authority(designation: 'UpperManager', name: 'Suresh'),
    incentiveAllocated: '50000',
    pointOfContact: Poc(
        relationToApplicant: 'Brother of Ravi',
        name: 'Veer',
        primaryEmail: 'veer@gmail.com',
        secondaryEmail: 'veer123@gmail.com',
        phoneNo: 5464664),
    notes: [],
    status: SaleStatus.LIVE,
    nominees: [
      Nominee(
          applicantId: '54464646',
          name: 'bbbbb',
          relation_with_applicant: 'Brother')
    ],
  )
];

var applicant = Applicant(
    prefixType: PrefixTypes.MR,
    name: 'Ramesh',
    relativeType: RelativeType.SON_OF,
    relativeName: 'Rajeev',
    dateOfBirth: DateTime.parse('2002-07-22'),
    aadharNo: '45684565522',
    panNo: 'ASJK54544',
    residentialAddress: 'Rampur',
    profession: 'Income Tax Officer',
    officeAddress: 'Rampur',
    officeName: 'RV',
    contact: Contact(
        mobile: '4558855556',
        telephoneNo: '0581966696',
        officeNo: '8744445454'),
    preferredCorrespondenceAddress: PreferredAddress.RESIDENCE,
    documents: [
      ApprovalFile(
          name: 'Adhaar',
          no: '45684565522',
          otherDetails: {},
          docLink: 'https://google.com'),
      ApprovalFile(
          name: 'Pan Card',
          no: 'ASJK54544',
          otherDetails: {},
          docLink: 'https://google.com')
    ]);

PaymentPlan construction_linked_payment =
    PaymentPlan(name: 'Construction Linked Payment Plan', paymentPlans: [
  PaymentStage(
      name: 'Upon Booking',
      paymentStageType: PaymentStageType.TIME_BOUND,
      linkedStage: '0'),
  PaymentStage(
      name: 'Within 30 days of Booking',
      paymentStageType: PaymentStageType.TIME_BOUND,
      linkedStage: '1'),
  PaymentStage(
      name: 'At the Beginning of Construction',
      paymentStageType: PaymentStageType.STAGE_BOUND,
      linkedStage: '1'),
  PaymentStage(
      name: 'Ground Floor Roof Casting',
      paymentStageType: PaymentStageType.STAGE_BOUND,
      linkedStage: '1'),
  PaymentStage(
      name: '1st Floor Roof Casting',
      paymentStageType: PaymentStageType.STAGE_BOUND,
      linkedStage: '2'),
  PaymentStage(
      name: 'At the time of offer of Possession',
      paymentStageType: PaymentStageType.STAGE_BOUND,
      linkedStage: '3'),
]);

PaymentPlan downPaymentPlan =
    PaymentPlan(name: 'Down Payment Plan', paymentPlans: [
  PaymentStage(
      name: 'Upon Booking',
      paymentStageType: PaymentStageType.TIME_BOUND,
      linkedStage: '0'),
  PaymentStage(
      name: 'Within 30 days of Booking',
      paymentStageType: PaymentStageType.TIME_BOUND,
      linkedStage: '1'),
  PaymentStage(
      name: 'At the time of offer of Possession',
      paymentStageType: PaymentStageType.STAGE_BOUND,
      linkedStage: '3'),
]);

PaymentPlan flexiPaymentPlan =
    PaymentPlan(name: 'Flexi Payment Plan', paymentPlans: [
  PaymentStage(
      name: 'Upon Booking',
      paymentStageType: PaymentStageType.TIME_BOUND,
      linkedStage: '0'),
  PaymentStage(
      name: 'Within 30 days of Booking',
      paymentStageType: PaymentStageType.TIME_BOUND,
      linkedStage: '1'),
  PaymentStage(
      name: 'At the Beginning of Construction',
      paymentStageType: PaymentStageType.STAGE_BOUND,
      linkedStage: '1'),
  PaymentStage(
      name: 'At the time of offer of Possession',
      paymentStageType: PaymentStageType.STAGE_BOUND,
      linkedStage: '3'),
]);

List<PaymentPlan> paymentPlans = [
  construction_linked_payment,
  downPaymentPlan,
  flexiPaymentPlan
];

PriceBreakup priceBreakup1 = PriceBreakup(
    unitCategory: UnitCategory.Type_II,
    updatedOn: DateTime.now(),
    basic_payment_BSP: PricingField(
        name: 'Basic Payment',
        value: 6400000,
        priceValueType: PriceValueTypes.LUMP_SUM),
    plc: [
      PricingField(
        name: 'Road',
        value: 20000,
        priceValueType: PriceValueTypes.PER_AREA,
      ),
      PricingField(
        name: 'Road',
        value: 30000,
        priceValueType: PriceValueTypes.LUMP_SUM,
      )
    ],
    additional: [
      PricingField(
        name: 'IDC',
        value: 30000,
        priceValueType: PriceValueTypes.LUMP_SUM,
      )
    ],
    addons: [
      PricingField(
          name: 'Wooden work',
          value: 30000,
          priceValueType: PriceValueTypes.LUMP_SUM)
    ]);

List<PriceBreakup> priceBreakups = [priceBreakup1];
