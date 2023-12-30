var data = {
  "Amiltus": {
    "Rudraksh": {
      "name": "Rudraksh",
      "location": {"latitude": 23.634501, "longitude": 23.634501},
      "address": "Bareilly",
      "blocks": [
        {
          "name": "A",
          //add
          // "unitCatergories":[
          //   {
          //     "name":"Type1",
          //      "unitArea": {
          //       "plotArea": "100",
          //       "constructedArea": "50",
          //       "covered": "70",
          //       /*superArea, carpetArea, */
          //     },
          //   },
          //   {
          //     "name":"Type1",
          //      "unitArea": {
          //       "plotArea": "100",
          //       "constructedArea": "50",
          //       "covered": "70",
          //       /*superArea, carpetArea, */
          //     },
          //   }
          // ],
          "created": 1703764744474,
          "types": [],
          "stages": {
            "A": {
              'sno': 2,
              "floor": '1',
            },
            "Lg": {
              'sno': 1,
              "floor": 'Lg',
            }
          },
          "tags": ["2BHK", "3BHK"],
          "plc": [
            {"name": "Road", "enabled": true},
            {"name": "Swimming Pool", "enabled": true},
            {"name": "Park", "enabled": true}
          ],
          //delete     "floors": ["-3", "-2", "-1", "G", "LG", "UG", "1", "2", "3"],
          "units": [
            {
              "unitType": "COMMERCIAL",
              //add    "unitCategory":"Type1",
              "unitArea": {
                "plotArea": "100",
                "constructedArea": "50",
                "covered": "70",
                /*superArea, carpetArea, */
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house2",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25A",
              "roadSize": {"front": 30.0, "corner": 40.0},
              // "plcRoad": {
              //   "corner": "50",
              //   "park": null,
              //   "floor": null,
              //   "other": null
              // },
              // set if plcs from block are available or not, in true or false

              // "extraPlotArea": 0.0,
              //delete
              "notes": [],
              //delete   "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null, // refer floor no from block stages
              //type 1 or type2
              "unitAvailability": "AVAILABLE"
            },
            {
              "unitType": "PLOT",
              "unitArea": {
                "plotArea": "120",
                "constructedArea": "60",
                "covered": "80"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house3",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25B",
              "roadSize": {"front": 35.0, "corner": 45.0},
              "plcRoad": {
                "corner": "55",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            },
            {
              "unitType": "Flat",
              "unitArea": {
                "plotArea": "140",
                "constructedArea": "70",
                "covered": "90"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house4",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25C",
              "roadSize": {"front": 40.0, "corner": 50.0},
              "plcRoad": {
                "corner": "60",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            },
            {
              "unitType": "VILLA",
              "unitArea": {
                "plotArea": "160",
                "constructedArea": "80",
                "covered": "100"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house5",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25D",
              "roadSize": {"front": 45.0, "corner": 55.0},
              "plcRoad": {
                "corner": "65",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            }
          ],
          "pricing": [
            {
              "unitCategory": "Type_II",
              "updatedOn": "2023-12-28T17:29:04.479763",
              "basic_payment_BSP": {
                "name": "Basic Payment",
                "value": 6400000.0,
                "priceValueType": "LUMP_SUM"
              },
              "plc": [
                {
                  "name": "Road",
                  "value": 20000.0,
                  "priceValueType": "PER_AREA"
                },
                {"name": "Road", "value": 30000.0, "priceValueType": "LUMP_SUM"}
                // get all plc defined in block when entering price value
              ],
              "additional": [
                {"name": "IDC", "value": 30000.0, "priceValueType": "LUMP_SUM"}
              ],
              //change additionalParking to Parking  "additionalParking":   {"name": "additionalParking", "value": 30000.0, "priceValueType": "LUMP_SUM"},
              "addons": [
                {
                  "name": "Wooden work",
                  "value": 30000.0,
                  "priceValueType": "LUMP_SUM"
                }
              ]
            }
          ],
          "Standart Payment Plans": [
            {
              "name": "Construction Linked Payment Plan",
              "paymentPlans": [
                {
                  "name": "Upon Booking",
                  "paymentStageType": "TIME_BOUND",
                  "completedPercentage": null,
                  "linkedStage": null
                },
                {
                  "name": "Within 30 days of Booking",
                  "paymentStageType": "TIME_BOUND",
                  "completedPercentage": null,
                  "linkedStage": null
                },
                {
                  "name": "At the Beginning of Construction",
                  "paymentStageType": "STAGE_BOUND",
                  "completedPercentage": null,
                  "linkedStage": "1"
                },
                {
                  "name": "Ground Floor Roof Casting",
                  "paymentStageType": "STAGE_BOUND",
                  "completedPercentage": null,
                  "linkedStage": "1"
                },
                {
                  "name": "1st Floor Roof Casting",
                  "paymentStageType": "STAGE_BOUND",
                  "completedPercentage": null,
                  "linkedStage": "2"
                },
                {
                  "name": "At the time of offer of Possession",
                  "paymentStageType": "STAGE_BOUND",
                  "completedPercentage": null,
                  "linkedStage": "3"
                }
              ]
            },
            {
              "name": "Down Payment Plan",
              "paymentPlans": [
                {
                  "name": "Upon Booking",
                  "paymentStageType": "TIME_BOUND",
                  "completedPercentage": null,
                  "linkedStage": null
                },
                {
                  "name": "Within 30 days of Booking",
                  "paymentStageType": "TIME_BOUND",
                  "completedPercentage": null,
                  "linkedStage": null
                },
                {
                  "name": "At the time of offer of Possession",
                  "paymentStageType": "STAGE_BOUND",
                  "completedPercentage": null,
                  "linkedStage": "3"
                }
              ]
            },
            {
              "name": "Flexi Payment Plan",
              "paymentPlans": [
                {
                  "name": "Upon Booking",
                  "paymentStageType": "TIME_BOUND",
                  "completedPercentage": null,
                  "linkedStage": null
                },
                {
                  "name": "Within 30 days of Booking",
                  "paymentStageType": "TIME_BOUND",
                  "completedPercentage": null,
                  "linkedStage": null
                },
                {
                  "name": "At the Beginning of Construction",
                  "paymentStageType": "STAGE_BOUND",
                  "completedPercentage": null,
                  "linkedStage": "1"
                },
                {
                  "name": "At the time of offer of Possession",
                  "paymentStageType": "STAGE_BOUND",
                  "completedPercentage": null,
                  "linkedStage": "3"
                }
              ]
            }
          ],
          "Sales": [
            {
              "unitNo": "25A",
              "blockName": "A",
              "soldOn": "2023-12-28T17:29:04.486763",
              "costing": 3500000.78,
              "gst": "AS_APPLICABLE",
              "agreementVal": {
                "name": "agreement1",
                "no": "54646464",
                "otherDetails": {},
                "docLink": "https://google.com"
              },
              "supplementaryAgreements": [
                {
                  "name": "supplementary agreement1",
                  "no": "54646464",
                  "otherDetails": {},
                  "docLink": "https://google.com"
                }
              ],
              "loanSanction": 3000000.0,
              "sanctionBank": "HDFC",
              "owners": ["4558855556"],
              "soldBy": {
                "designation": "Sales Representative",
                "name": "Rajiv"
              },
              "approvedBy": {"designation": "UpperManager", "name": "Suresh"},
              "incentiveAllocated": "50000",
              "pointOfContact": {
                "name": "Veer",
                "relationToApplicant": "Brother of Ravi",
                "primaryEmail": "veer@gmail.com",
                "secondaryEmail": "veer123@gmail.com",
                "phoneNo": 5464664
              },
              "notes": [],
              "status": "LIVE",
              "nominees": [
                {
                  "name": "bbbbb",
                  "applicantId": "54464646",
                  "relation_with_applicant": "Brother"
                }
              ],
              "history": [
                {
                  "unitNo": "25A",
                  "blockName": "A",
                  "soldOn": "2023-12-28T17:29:04.485763",
                  "costing": 3500000.78,
                  "gst": "AS_APPLICABLE",
                  "agreementVal": {
                    "name": "agreement1",
                    "no": "54646464",
                    "otherDetails": {},
                    "docLink": "https://google.com"
                  },
                  "supplementaryAgreements": [
                    {
                      "name": "supplementary agreement1",
                      "no": "54646464",
                      "otherDetails": {},
                      "docLink": "https://google.com"
                    }
                  ],
                  "loanSanction": 3000000.0,
                  "sanctionBank": "HDFC",
                  "owners": ["4558855556"],
                  "soldBy": {
                    "designation": "Sales Representative",
                    "name": "Rajiv"
                  },
                  "approvedBy": {
                    "designation": "UpperManager",
                    "name": "Suresh"
                  },
                  "incentiveAllocated": "50000",
                  "pointOfContact": {
                    "name": "Veer",
                    "relationToApplicant": "Brother of Ravi",
                    "primaryEmail": "veer@gmail.com",
                    "secondaryEmail": "veer123@gmail.com",
                    "phoneNo": 5464664
                  },
                  "notes": [],
                  "status": "LIVE",
                  "nominees": [
                    {
                      "name": "bbbbb",
                      "applicantId": "54464646",
                      "relation_with_applicant": "Brother"
                    }
                  ],
                  "updateDetails": {
                    "reason": "changes sanction bank",
                    "updatedBy": {
                      "designation": "Sales Representative",
                      "name": "Rajesh"
                    },
                    "approvedBy": {"designation": "Manager", "name": "Ravi"},
                    "updatedOn": "2023-12-28T17:29:04.485763"
                  }
                }
              ]
            }
          ]
        },
        {
          "name": "B",
          "created": 1703764744475,
          "types": [],
          "stages": [],
          "tags": ["2BHK", "3BHK"],
          "plc": [
            {"name": "Road", "enabled": true},
            {"name": "Swimming Pool", "enabled": true},
            {"name": "Park", "enabled": true}
          ],
          "floors": ["-3", "-2", "-1", "G", "LG", "UG", "1", "2", "3"],
          "units": [
            {
              "unitType": "COMMERCIAL",
              "unitArea": {
                "plotArea": "100",
                "constructedArea": "50",
                "covered": "70"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house2",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25A",
              "roadSize": {"front": 30.0, "corner": 40.0},
              "plcRoad": {
                "corner": "50",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            },
            {
              "unitType": "PLOT",
              "unitArea": {
                "plotArea": "120",
                "constructedArea": "60",
                "covered": "80"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house3",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25B",
              "roadSize": {"front": 35.0, "corner": 45.0},
              "plcRoad": {
                "corner": "55",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            },
            {
              "unitType": "Flat",
              "unitArea": {
                "plotArea": "140",
                "constructedArea": "70",
                "covered": "90"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house4",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25C",
              "roadSize": {"front": 40.0, "corner": 50.0},
              "plcRoad": {
                "corner": "60",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            },
            {
              "unitType": "VILLA",
              "unitArea": {
                "plotArea": "160",
                "constructedArea": "80",
                "covered": "100"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house5",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25D",
              "roadSize": {"front": 45.0, "corner": 55.0},
              "plcRoad": {
                "corner": "65",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            }
          ]
        },
        {
          "name": "C",
          "created": 1703764744475,
          "types": [],
          "stages": [],
          "tags": ["2BHK", "3BHK"],
          "plc": [
            {"name": "Road", "enabled": true},
            {"name": "Swimming Pool", "enabled": true},
            {"name": "Park", "enabled": true}
          ],
          "floors": ["-3", "-2", "-1", "G", "LG", "UG", "1", "2", "3"],
          "units": [
            {
              "unitType": "COMMERCIAL",
              "unitArea": {
                "plotArea": "100",
                "constructedArea": "50",
                "covered": "70"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house2",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25A",
              "roadSize": {"front": 30.0, "corner": 40.0},
              "plcRoad": {
                "corner": "50",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            },
            {
              "unitType": "PLOT",
              "unitArea": {
                "plotArea": "120",
                "constructedArea": "60",
                "covered": "80"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house3",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25B",
              "roadSize": {"front": 35.0, "corner": 45.0},
              "plcRoad": {
                "corner": "55",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            },
            {
              "unitType": "Flat",
              "unitArea": {
                "plotArea": "140",
                "constructedArea": "70",
                "covered": "90"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house4",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25C",
              "roadSize": {"front": 40.0, "corner": 50.0},
              "plcRoad": {
                "corner": "60",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            },
            {
              "unitType": "VILLA",
              "unitArea": {
                "plotArea": "160",
                "constructedArea": "80",
                "covered": "100"
              },
              "unitDimension": {
                "front": 170.0,
                "back": 170.0,
                "left": 120.0,
                "right": 120.0
              },
              "unitDirection": {
                "east": "house5",
                "west": "road",
                "north": "road",
                "south": "park"
              },
              "unitNo": "25D",
              "roadSize": {"front": 45.0, "corner": 55.0},
              "plcRoad": {
                "corner": "65",
                "park": null,
                "floor": null,
                "other": null
              },
              "extraPlotArea": 0.0,
              "notes": [],
              "standardSize": {"plotArea": "70", "coveredArea": "50"},
              "parkings": [],
              "floorNo": null,
              "unitAvailability": "AVAILABLE"
            }
          ]
        }
      ],
      "approvalFiles": [
        {
          "name": "File1",
          "no": "155455122",
          "otherDetails": {"RERA NO": 2424443},
          "docLink": "https://www.google.com/"
        },
        {
          "name": "File1",
          "no": "155455122",
          "otherDetails": {"RERA NO": 2424443},
          "docLink": "https://www.google.com/"
        }
      ],
    }
  }
};

var invoice_data = [
  {
    "createdBy": "",
    "approvedby": "",
    "date": "date",
    "amount": 225545,
    "transaction_completed": "",
    "transaction_status": "Approval Pending      Approved           ",
    "transcation_type":
        "installment  intrest/penalty      customization    refund   other",
    "recieptNo": "545454",
    "source of fund": "self funded   financed",
    "mode of payment":
        "bank_transfer  check  cash  demand_draft in_app payment  pos",
    "gst_rate": "5%",
    "notes": "",
    "documents": "",
    "transaction_details": {
      "bank_name": "",
      "clearance_date": "",
      "check_date": "",
      "transaction_no": "",
    }
  },
];

var kartikey = {
  "name": "sds",
  "access": {
    "Rudraksh": {
      "Sales": {
        "Demand": {"Read": true, "Edit": true},
        "Interests": {}
      }
    }
  }
};
