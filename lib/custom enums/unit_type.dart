class UnitType {
  static var FLAT = 'Flat';
  static var VILLA = 'VILLA';
  static const PLOT = 'PLOT';
  static const COMMERCIAL = 'COMMERCIAL';
  static const COMMERCIAL_PLOT = 'COMMERCIAL_PLOT';
}

// class FlatType {
//   final DEFAULT = 'FLAT';
//   var ESSENTIAL_MODEL = 'FLAT_ESSENTIAL_MODEL';
//   var ELITE_MODEL = 'FLAT_ELITE_MODEL';
//   var LUXURY_MODEL = 'FLAT_LUXURY_MODEL';
//   var OPULENCE_MODEL = 'FLAT_OPULENCE_MODEL';

//   dynamic fromString(String type) {
//     switch (type) {
//       case 'FLAT_ESSENTIAL_MODEL':
//         return ESSENTIAL_MODEL;
//       case 'FLAT_ELITE_MODEL':
//         return ELITE_MODEL;
//       case 'FLAT_LUXURY_MODEL':
//         return LUXURY_MODEL;
//       case 'FLAT_OPULENCE_MODEL':
//         return OPULENCE_MODEL;
//       default:
//         throw Exception('Invalid flat type');
//     }
//   }
// }

// class VillaType {
//   final DEFAULT = 'VILLA';
//   var ESSENTIAL_MODEL = 'VILLA_ESSENTIAL_MODEL';
//   var ELITE_MODEL = 'VILLA_ELITE_MODEL';
//   var LUXURY_MODEL = 'VILLA_LUXURY_MODEL';
//   var OPULENCE_MODEL = 'VILLA_OPULENCE_MODEL';

//   dynamic fromString(String type) {
//     switch (type) {
//       case 'VILLA_ESSENTIAL_MODEL':
//         return ESSENTIAL_MODEL;
//       case 'VILLA_ELITE_MODEL':
//         return ELITE_MODEL;
//       case 'VILLA_LUXURY_MODEL':
//         return LUXURY_MODEL;
//       case 'VILLA_OPULENCE_MODEL':
//         return OPULENCE_MODEL;
//       default:
//         throw Exception('Invalid villa type');
//     }
//   }
// }

class UnitAvailability {
  static String AVAILABLE = 'AVAILABLE';
  static String HOLD = 'HOLD';
  static String PROVISIONAL_BOOKING = 'PROVISIONAL_BOOKING';
  static String BOOKED = 'BOOKED';
  static String MORTAGE = 'MORTAGE';
}
