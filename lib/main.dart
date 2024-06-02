import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(BloodDonationAndHIVRiskFormApp());
}

class BloodDonationAndHIVRiskFormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blood Donation & HIV Risk Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CombinedFormScreen(),
    );
  }
}

class CombinedFormScreen extends StatefulWidget {
  @override
  _CombinedFormScreenState createState() => _CombinedFormScreenState();
}

class _CombinedFormScreenState extends State<CombinedFormScreen> {
  bool hadSurgeryTransfusionTransplant = false;
  bool beenVaccinated = false;
  bool takingMedication = false;
  TextEditingController medicationController = TextEditingController();
  bool receivedDentalCare = false;
  bool changedSexualPartners = false;
  bool usingDrugs = false;
  bool partnerUsingDrugs = false;
  bool homosexual = false;
  bool bittenBySomeone = false;
  bool injuryWithUsedObject = false;
  bool givingbirth = false;
  bool miscarriage = false;
  bool manypregnancies = false;
  bool menstrualperiod = false;

  bool undergoneScarificationsTattoosPiercings = false;
  bool stayedAbroad = false;

  TextEditingController countryController = TextEditingController();
  TextEditingController _manypreg = TextEditingController();

  TextEditingController returnDateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // Define form fields controllers
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _donorCardNumberController =
      TextEditingController();
  final TextEditingController _placeOfCollectionController =
      TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  String? _gender;

  final TextEditingController _donationFrequencyController =
      TextEditingController();
  TextEditingController otherDiseasesController = TextEditingController();

  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _stayedAbroad = TextEditingController();
    final TextEditingController samplingController = TextEditingController();
    final TextEditingController bagNumberController = TextEditingController();
    final TextEditingController medicalExaminationController = TextEditingController();
    final TextEditingController previousDonationsController = TextEditingController();
    final TextEditingController donationsThisYearController = TextEditingController();
        final TextEditingController examinerController = TextEditingController();
                final TextEditingController samplerController = TextEditingController();








  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _ethnicityController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final TextEditingController _educationLevelController =
      TextEditingController();
  final TextEditingController _neighborhoodController = TextEditingController();
  final TextEditingController _workplaceController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emergencyContactNameController =
      TextEditingController();
  final TextEditingController _emergencyContactPhoneController =
      TextEditingController();
  final TextEditingController _signatureController = TextEditingController();

  final TextEditingController transfusionDateController =
      TextEditingController();
  final TextEditingController vaccineController = TextEditingController();
  final TextEditingController abroadCountryController = TextEditingController();
  final TextEditingController numberofpregnancies = TextEditingController();
  final TextEditingController lastmenstrual = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController pulseController = TextEditingController();

  final TextEditingController skinController = TextEditingController();
  final TextEditingController mucousMembranesController = TextEditingController();
  final TextEditingController palmsController = TextEditingController();
  final TextEditingController mouthController = TextEditingController();
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController endTimeController = TextEditingController();
  final TextEditingController volumeController = TextEditingController();
  final TextEditingController rejectionReasonController = TextEditingController();

  bool donorCompleted = false;
  bool donorRejected = false;


  TimeOfDay? startTime;
  TimeOfDay? endTime;




  Map<String, bool> diseaseYesControllers = {};
  Map<String, bool> diseaseNoControllers = {};
  final List<String> donors = ['Volunteer', 'Family'];
  final List<String> bagTypes = ['Single', 'Pediatric', 'Autotransfusion', 'Double', 'Triple', 'Quadruple'];
  String? selectedDonor;
  String? selectedBagType;



  // Checkboxes

  DateTime? _selectedDate;

  String _receivedTransfusion = 'No';
  final TextEditingController _transfusionDateController =
      TextEditingController();
  String _donatedBlood = 'No';
  bool? _lastDonationWentWell;
  bool? hadSurgeryTransfusedTransplant;

  // Additional fields for medical questionnaire
  bool hadSurgery = false;
  bool hadDentalCare = false;
  bool changedPartners = false;

  String? vaccine;
  String? medication;

  // HIV Risk Assessment fields
  int? numberOfPartners;
  bool hasHIVPositivePartner = false;
  bool hadUnprotectedSex = false;
  bool sharedNeedles = false;

  bool receivedTransfusion = false;
  bool donatedBlood = false;
  bool lastDonationWentWell = false;
  // bool hadSurgery = false;
  // bool beenVaccinated = false;
  // bool takingMedication = false;
  // bool hadDentalCare = false;
  // bool changedPartners = false;
  bool drugUser = false;
  bool partnerDrugUser = false;
  bool scarificationsTattoosPiercings = false;
  bool epilepsy = false;
  bool sexuallyTransmittedInfection = false;
  bool skinEruptionsRashes = false;
  bool chestPain = false;
  bool mouthUlcers = false;
  bool asthma = false;
  bool jaundice = false;
  bool jointPain = false;
  bool fainting = false;
  bool diabetes = false;
  bool bloodDisease = false;
  bool anemia = false;
  bool bloodyUrine = false;
  bool hypertension = false;
  bool limbTremors = false;
  bool heartDisease = false;
  bool diarrhea = false;
  bool hemorrhoids = false;
  bool excessiveFatigue = false;
  bool swollenLymphNodes = false;
  bool fever = false;
  bool cancer = false;
  bool ulcer = false;
  bool dizziness = false;
  bool coughLastingMoreThanMonth = false;
  bool sickleCellDisease = false;
  bool otherDiseases = false;
  bool usedrugs = false;
  bool partnerusedrugs = false;
  bool homosexuals = false;
  bool bettensomeone = false;
  bool injurypreviousproject = false;
  bool undergoneScarifications = false;
  bool dentalcare = false;

// Define controllers for other fields

  bool drugUse = false;
  bool partnerDrugUse = false;

  @override
  void dispose() {
    // Dispose controllers to free up resources
    _dateController.dispose();
    weightController.dispose();
    heightController.dispose();
    pulseController.dispose();
    _donorCardNumberController.dispose();
    _placeOfCollectionController.dispose();
    _bloodGroupController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    _dobController.dispose();
    _manypreg.dispose();
    samplingController.dispose();
    bagNumberController.dispose();
    medicalExaminationController.dispose();
    previousDonationsController.dispose();
    donationsThisYearController.dispose();

    _ethnicityController.dispose();
    _addressController.dispose();
    _professionController.dispose();
    _educationLevelController.dispose();
    _neighborhoodController.dispose();
    _workplaceController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _emergencyContactNameController.dispose();
    _emergencyContactPhoneController.dispose();
    _transfusionDateController.dispose();
    _signatureController.dispose();
    super.dispose();
  }

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
      _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
    }
  }

  InputDecoration _buildInputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Donation & HIV Risk Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Subheading for Donor's Identity
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Donor\'s Identity',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
                SizedBox(height: 10),

                // Basic Information
                TextFormField(
                  controller: _dateController,
                  decoration: _buildInputDecoration('Date').copyWith(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () => _selectDate(context),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the date';
                    }
                    return null;
                  },
                  readOnly: true,
                  onTap: () => _selectDate(context),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _donorCardNumberController,
                  decoration: _buildInputDecoration('Donor Card Number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the donor card number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _placeOfCollectionController,
                  decoration: _buildInputDecoration('Place of Collection'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the place of collection';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _bloodGroupController,
                  decoration: _buildInputDecoration('Blood Group'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the blood group';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _firstNameController,
                  decoration: _buildInputDecoration('First Name(s)'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the first name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _lastNameController,
                  decoration: _buildInputDecoration('Last Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the last name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),

                // Gender Selection
                Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                _gender == 'Male' ? Colors.teal : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          color: _gender == 'Male'
                              ? Colors.teal
                              : Colors.transparent,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _gender = 'Male';
                            });
                          },
                          child: Center(
                            child: Text(
                              'Male',
                              style: TextStyle(
                                color: _gender == 'Male'
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                _gender == 'Female' ? Colors.teal : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          color: _gender == 'Female'
                              ? Colors.teal
                              : Colors.transparent,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _gender = 'Female';
                            });
                          },
                          child: Center(
                            child: Text(
                              'Female',
                              style: TextStyle(
                                color: _gender == 'Female'
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                _gender == 'Other' ? Colors.teal : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          color: _gender == 'Other'
                              ? Colors.teal
                              : Colors.transparent,
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _gender = 'Other';
                            });
                          },
                          child: Center(
                            child: Text(
                              'Other',
                              style: TextStyle(
                                color: _gender == 'Other'
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _ageController,
                  decoration: _buildInputDecoration('Age'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _dobController,
                  decoration: _buildInputDecoration('Date of Birth').copyWith(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () => _selectDate(context),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your date of birth';
                    }
                    return null;
                  },
                  readOnly: true,
                  onTap: () => _selectDate(context),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _ethnicityController,
                  decoration: _buildInputDecoration('Ethnicity'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your ethnicity';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _addressController,
                  decoration: _buildInputDecoration('Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _professionController,
                  decoration: _buildInputDecoration('Profession'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your profession';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _educationLevelController,
                  decoration: _buildInputDecoration('Education Level'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your education level';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _neighborhoodController,
                  decoration: _buildInputDecoration('Neighborhood'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your neighborhood';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _workplaceController,
                  decoration: _buildInputDecoration('Workplace'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your workplace';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emailController,
                  decoration: _buildInputDecoration('Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _phoneController,
                  decoration: _buildInputDecoration('Phone Number'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emergencyContactNameController,
                  decoration: _buildInputDecoration('Emergency Contact Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the emergency contact name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emergencyContactPhoneController,
                  decoration: _buildInputDecoration('Emergency Contact Phone'),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the emergency contact phone';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _signatureController,
                  decoration: _buildInputDecoration('Signature'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your signature';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Medical History Section
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Medical History',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
                SizedBox(height: 10),

                // Blood Transfusion Question
                Text(
                  'Have you received a blood transfusion?',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text('Yes'),
                        leading: Radio<String>(
                          value: 'Yes',
                          groupValue: _receivedTransfusion,
                          onChanged: (value) {
                            setState(() {
                              _receivedTransfusion = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<String>(
                          value: 'No',
                          groupValue: _receivedTransfusion,
                          onChanged: (value) {
                            setState(() {
                              _receivedTransfusion = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                if (_receivedTransfusion == 'Yes')
                  TextFormField(
                    controller: _transfusionDateController,
                    decoration:
                        _buildInputDecoration('Date of Last Transfusion')
                            .copyWith(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () => _selectDate(context),
                      ),
                    ),
                    readOnly: true,
                    onTap: () => _selectDate(context),
                  ),
                SizedBox(height: 10),

                // Donation Question
                Text(
                  'Have you donated blood before?',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text('Yes'),
                        leading: Radio<String>(
                          value: 'Yes',
                          groupValue: _donatedBlood,
                          onChanged: (value) {
                            setState(() {
                              _donatedBlood = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio<String>(
                          value: 'No',
                          groupValue: _donatedBlood,
                          onChanged: (value) {
                            setState(() {
                              _donatedBlood = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                if (_donatedBlood == 'Yes')
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Did your last donation go well?',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Text('Yes'),
                              leading: Radio<bool>(
                                value: true,
                                groupValue: _lastDonationWentWell,
                                onChanged: (value) {
                                  setState(() {
                                    _lastDonationWentWell = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              title: Text('No'),
                              leading: Radio<bool>(
                                value: false,
                                groupValue: _lastDonationWentWell,
                                onChanged: (value) {
                                  setState(() {
                                    _lastDonationWentWell = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                SizedBox(height: 10),

                // Donation Frequency Question
                Text(
                  'How often do you donate blood?',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _donationFrequencyController,
                  decoration: _buildInputDecoration('Donation Frequency'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your donation frequency';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),

                Text(
                  'Have you suffered from or are you currently suffering from any of the following diseases/symptoms?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Text(
                    'Have you ever had surgery, been transfused, or had a transplant?'),
                Row(
                  children: <Widget>[
                    Radio<bool>(
                      value: true,
                      groupValue: hadSurgeryTransfusedTransplant,
                      onChanged: (value) {
                        setState(() {
                          hadSurgeryTransfusedTransplant = value;
                        });
                      },
                    ),
                    Text('Yes'),
                    Radio<bool>(
                      value: false,
                      groupValue: hadSurgeryTransfusedTransplant,
                      onChanged: (value) {
                        setState(() {
                          hadSurgeryTransfusedTransplant = value;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),

                SizedBox(height: 16.0),

                SizedBox(height: 16.0),
                Text('Are you currently taking any medication(s)?'),
                Row(
                  children: <Widget>[
                    Radio<bool>(
                      value: true,
                      groupValue: takingMedication,
                      onChanged: (value) {
                        setState(() {
                          takingMedication = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    Radio<bool>(
                      value: false,
                      groupValue: takingMedication,
                      onChanged: (value) {
                        setState(() {
                          takingMedication = value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),

                if (takingMedication ?? false)
                  TextFormField(
                    controller: medicationController,
                    decoration: InputDecoration(
                      labelText: 'Which medication(s)?',
                      border: OutlineInputBorder(),
                    ),
                  ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Have you ever had surgery, been transfused, or had a transplant?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: hadSurgeryTransfusionTransplant,
                      onChanged: (bool? value) {
                        setState(() {
                          hadSurgeryTransfusionTransplant = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !hadSurgeryTransfusionTransplant,
                      onChanged: (bool? value) {
                        setState(() {
                          hadSurgeryTransfusionTransplant = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Have you been vaccinated in the last three (03) months?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: beenVaccinated,
                      onChanged: (bool? value) {
                        setState(() {
                          beenVaccinated = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !beenVaccinated,
                      onChanged: (bool? value) {
                        setState(() {
                          beenVaccinated = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Are you currently taking any medication(s)?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: takingMedication,
                      onChanged: (bool? value) {
                        setState(() {
                          takingMedication = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !takingMedication,
                      onChanged: (bool? value) {
                        setState(() {
                          takingMedication = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                if (takingMedication)
                  TextFormField(
                    controller: medicationController,
                    decoration: InputDecoration(
                      labelText: 'Which medication(s)?',
                      border: OutlineInputBorder(),
                    ),
                  ),
                SizedBox(height: 16.0),
                Text(
                  'Have you received dental care in the last three months?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: receivedDentalCare,
                      onChanged: (bool? value) {
                        setState(() {
                          receivedDentalCare = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !receivedDentalCare,
                      onChanged: (bool? value) {
                        setState(() {
                          receivedDentalCare = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Have you changed sexual partners?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: changedSexualPartners,
                      onChanged: (bool? value) {
                        setState(() {
                          changedSexualPartners = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !changedSexualPartners,
                      onChanged: (bool? value) {
                        setState(() {
                          changedSexualPartners = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Epilepsy',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: epilepsy,
                      onChanged: (bool? value) {
                        setState(() {
                          epilepsy = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !epilepsy,
                      onChanged: (bool? value) {
                        setState(() {
                          epilepsy = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Sexually Transmitted Infection',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: sexuallyTransmittedInfection,
                      onChanged: (bool? value) {
                        setState(() {
                          sexuallyTransmittedInfection = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !sexuallyTransmittedInfection,
                      onChanged: (bool? value) {
                        setState(() {
                          sexuallyTransmittedInfection = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Skin Eruptions/Rashes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: skinEruptionsRashes,
                      onChanged: (bool? value) {
                        setState(() {
                          skinEruptionsRashes = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !skinEruptionsRashes,
                      onChanged: (bool? value) {
                        setState(() {
                          skinEruptionsRashes = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Chest Pain',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: chestPain,
                      onChanged: (bool? value) {
                        setState(() {
                          chestPain = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !chestPain,
                      onChanged: (bool? value) {
                        setState(() {
                          chestPain = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Mouth Ulcers',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: mouthUlcers,
                      onChanged: (bool? value) {
                        setState(() {
                          mouthUlcers = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !mouthUlcers,
                      onChanged: (bool? value) {
                        setState(() {
                          mouthUlcers = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Anemia',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: anemia,
                      onChanged: (bool? value) {
                        setState(() {
                          anemia = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !anemia,
                      onChanged: (bool? value) {
                        setState(() {
                          anemia = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Blood Disease',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: bloodDisease,
                      onChanged: (bool? value) {
                        setState(() {
                          bloodDisease = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !bloodDisease,
                      onChanged: (bool? value) {
                        setState(() {
                          bloodDisease = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),

                Text(
                  'Diabetes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: diabetes,
                      onChanged: (bool? value) {
                        setState(() {
                          diabetes = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !diabetes,
                      onChanged: (bool? value) {
                        setState(() {
                          diabetes = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),

                Text(
                  'Fainting',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: fainting,
                      onChanged: (bool? value) {
                        setState(() {
                          fainting = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !fainting,
                      onChanged: (bool? value) {
                        setState(() {
                          fainting = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),

                Text(
                  'Joint Pain',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: jointPain,
                      onChanged: (bool? value) {
                        setState(() {
                          jointPain = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !jointPain,
                      onChanged: (bool? value) {
                        setState(() {
                          jointPain = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),

                Text(
                  'Jaundice',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: jaundice,
                      onChanged: (bool? value) {
                        setState(() {
                          jaundice = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !jaundice,
                      onChanged: (bool? value) {
                        setState(() {
                          jaundice = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),

                Text(
                  'Asthma',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: asthma,
                      onChanged: (bool? value) {
                        setState(() {
                          asthma = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !asthma,
                      onChanged: (bool? value) {
                        setState(() {
                          asthma = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Cancer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: cancer,
                      onChanged: (bool? value) {
                        setState(() {
                          cancer = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !cancer,
                      onChanged: (bool? value) {
                        setState(() {
                          cancer = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Fever',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: fever,
                      onChanged: (bool? value) {
                        setState(() {
                          fever = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !fever,
                      onChanged: (bool? value) {
                        setState(() {
                          fever = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Swollen Lymph Nodes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: swollenLymphNodes,
                      onChanged: (bool? value) {
                        setState(() {
                          swollenLymphNodes = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !swollenLymphNodes,
                      onChanged: (bool? value) {
                        setState(() {
                          swollenLymphNodes = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Diarrhea',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: diarrhea,
                      onChanged: (bool? value) {
                        setState(() {
                          diarrhea = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !diarrhea,
                      onChanged: (bool? value) {
                        setState(() {
                          diarrhea = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Excessive Fatigue',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: excessiveFatigue,
                      onChanged: (bool? value) {
                        setState(() {
                          excessiveFatigue = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !excessiveFatigue,
                      onChanged: (bool? value) {
                        setState(() {
                          excessiveFatigue = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Hemorrhoids',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: hemorrhoids,
                      onChanged: (bool? value) {
                        setState(() {
                          hemorrhoids = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !hemorrhoids,
                      onChanged: (bool? value) {
                        setState(() {
                          hemorrhoids = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Heart Disease',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: heartDisease,
                      onChanged: (bool? value) {
                        setState(() {
                          heartDisease = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !heartDisease,
                      onChanged: (bool? value) {
                        setState(() {
                          heartDisease = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Limb Tremors',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: limbTremors,
                      onChanged: (bool? value) {
                        setState(() {
                          limbTremors = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !limbTremors,
                      onChanged: (bool? value) {
                        setState(() {
                          limbTremors = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Hypertension',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: hypertension,
                      onChanged: (bool? value) {
                        setState(() {
                          hypertension = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !hypertension,
                      onChanged: (bool? value) {
                        setState(() {
                          hypertension = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Bloody Urine',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: bloodyUrine,
                      onChanged: (bool? value) {
                        setState(() {
                          bloodyUrine = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !bloodyUrine,
                      onChanged: (bool? value) {
                        setState(() {
                          bloodyUrine = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Sickle Cell Disease',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: sickleCellDisease,
                      onChanged: (bool? value) {
                        setState(() {
                          sickleCellDisease = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !sickleCellDisease,
                      onChanged: (bool? value) {
                        setState(() {
                          sickleCellDisease = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Cough lasting more than a month',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: coughLastingMoreThanMonth,
                      onChanged: (bool? value) {
                        setState(() {
                          coughLastingMoreThanMonth = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !coughLastingMoreThanMonth,
                      onChanged: (bool? value) {
                        setState(() {
                          coughLastingMoreThanMonth = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Dizziness',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: dizziness,
                      onChanged: (bool? value) {
                        setState(() {
                          dizziness = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !dizziness,
                      onChanged: (bool? value) {
                        setState(() {
                          dizziness = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Bloody Urine',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: bloodyUrine,
                      onChanged: (bool? value) {
                        setState(() {
                          bloodyUrine = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !bloodyUrine,
                      onChanged: (bool? value) {
                        setState(() {
                          bloodyUrine = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Ulcer',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: ulcer,
                      onChanged: (bool? value) {
                        setState(() {
                          ulcer = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !ulcer,
                      onChanged: (bool? value) {
                        setState(() {
                          ulcer = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Other Disease(s)? Please Specify:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: otherDiseasesController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Please specify other disease(s)',
                    ),
                  ),
                ),

                Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Have you ever had surgery, been transfused, or had a transplant?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: ulcer,
                      onChanged: (bool? value) {
                        setState(() {
                          ulcer = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !ulcer,
                      onChanged: (bool? value) {
                        setState(() {
                          ulcer = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Have you been vaccinated in the last three (03) months?'),
                Row(
                  children: <Widget>[
                    Radio<bool>(
                      value: true,
                      groupValue: beenVaccinated,
                      onChanged: (value) {
                        setState(() {
                          beenVaccinated = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    Radio<bool>(
                      value: false,
                      groupValue: beenVaccinated,
                      onChanged: (value) {
                        setState(() {
                          beenVaccinated = value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                if (beenVaccinated ?? false)
                  TextFormField(
                    controller: vaccineController,
                    decoration: InputDecoration(
                      labelText: 'Which vaccine(s)?',
                      border: OutlineInputBorder(),
                    ),
                  ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Have you received dental care in the last three months?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: dentalcare,
                      onChanged: (bool? value) {
                        setState(() {
                          dentalcare = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !dentalcare,
                      onChanged: (bool? value) {
                        setState(() {
                          dentalcare = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Have you changed sexual partners?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: changedSexualPartners,
                      onChanged: (bool? value) {
                        setState(() {
                          changedSexualPartners = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !changedSexualPartners,
                      onChanged: (bool? value) {
                        setState(() {
                          changedSexualPartners = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Are you in any of the following situations?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),

                SizedBox(
                  height: 10,
                ),
                Text(
                  'I use drugs',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: usedrugs,
                      onChanged: (bool? value) {
                        setState(() {
                          usedrugs = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !usedrugs,
                      onChanged: (bool? value) {
                        setState(() {
                          usedrugs = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'My partner uses drugs',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: partnerDrugUse,
                      onChanged: (bool? value) {
                        setState(() {
                          partnerDrugUse = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !partnerDrugUse,
                      onChanged: (bool? value) {
                        setState(() {
                          partnerDrugUse = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'I am homosexual',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: homosexual,
                      onChanged: (bool? value) {
                        setState(() {
                          homosexual = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !homosexual,
                      onChanged: (bool? value) {
                        setState(() {
                          homosexual = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'I have been bitten by someone',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: bettensomeone,
                      onChanged: (bool? value) {
                        setState(() {
                          bettensomeone = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !bettensomeone,
                      onChanged: (bool? value) {
                        setState(() {
                          bettensomeone = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'I had an injury with a previously used object',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: injurypreviousproject,
                      onChanged: (bool? value) {
                        setState(() {
                          injurypreviousproject = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !injurypreviousproject,
                      onChanged: (bool? value) {
                        setState(() {
                          injurypreviousproject = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'I have undergone scarifications, tattoos, or piercings',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: undergoneScarificationsTattoosPiercings,
                      onChanged: (bool? value) {
                        setState(() {
                          undergoneScarificationsTattoosPiercings = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !undergoneScarificationsTattoosPiercings,
                      onChanged: (bool? value) {
                        setState(() {
                          undergoneScarificationsTattoosPiercings = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                Text('Stayed abroad in the last 3 months? '),
                Row(
                  children: <Widget>[
                    Radio<bool>(
                      value: true,
                      groupValue: beenVaccinated,
                      onChanged: (value) {
                        setState(() {
                          beenVaccinated = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    Radio<bool>(
                      value: false,
                      groupValue: beenVaccinated,
                      onChanged: (value) {
                        setState(() {
                          beenVaccinated = value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                if (beenVaccinated ?? false)
                  TextFormField(
                    controller: vaccineController,
                    decoration: InputDecoration(
                      labelText: 'Which Country?',
                      border: OutlineInputBorder(),
                    ),
                  ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _dateController,
                  decoration: _buildInputDecoration('Date of return').copyWith(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () => _selectDate(context),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Date of return';
                    }
                    return null;
                  },
                  readOnly: true,
                  onTap: () => _selectDate(context),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'TO BE COMPLETED BY FEMALE DONORS',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),

                SizedBox(
                  height: 10,
                ),
                Text(
                  'Have you given birth in the last six (06) months?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: givingbirth,
                      onChanged: (bool? value) {
                        setState(() {
                          givingbirth = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !givingbirth,
                      onChanged: (bool? value) {
                        setState(() {
                          givingbirth = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Have you had a miscarriage or undergone an abortion?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: miscarriage,
                      onChanged: (bool? value) {
                        setState(() {
                          miscarriage = value!;
                        });
                      },
                    ),
                    Text('Yes'),
                    SizedBox(width: 16.0),
                    Checkbox(
                      value: !miscarriage,
                      onChanged: (bool? value) {
                        setState(() {
                          miscarriage = !value!;
                        });
                      },
                    ),
                    Text('No'),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: numberofpregnancies,
                  decoration: _buildInputDecoration(
                      'How many pregnancies have you had?'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the number of pregnancies have you had? ';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: lastmenstrual,
                  decoration: _buildInputDecoration(
                          'When was your last menstrual period?')
                      .copyWith(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () => _selectDate(context),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the date';
                    }
                    return null;
                  },
                  readOnly: true,
                  onTap: () => _selectDate(context),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please read the following carefully:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

                Text("1) Being under 18 years old or over 65 years old"),
                Text("2) Having donated blood in the last three (03) months"),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Duration of the prohibition:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("2) Having donated blood in the last three (03) months"),
                SizedBox(height: 5),
                Text(
                  "The law requires it: ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                    "The law allows 4 donations per year with a minimum interval of 3 months"),
                Text("Depending on the seriousness of the intervention"),
                Text("Depending on the control results"),
                Text("Having recently undergone surgery or transfusion"),
                Text("Having viral hepatitis"),
                Text(
                    "Having had sexual contact with a person belonging to the following "),
                Text(
                    "risk groups: Occasional partner, Person with AIDS or HIV-positive "),
                Text("Homosexual; Drug addict "),
                Text("Undetermined"),
                SizedBox(
                  height: 13,
                ),
                Text('INFORMED CONSENT', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
                
                SizedBox(
                  height: 5,
                ), 
                Text('I hereby declare that I have not hidden any information about my illnesses and behaviors. I authorize the Blood Transfusion Center to collect my blood. I am aware that syphilis, AIDS viruses, hepatitis B and C can be transmitted through blood transfusion. I also know that my blood will be tested for these diseases, and if found positive, I will not be considered a person at risk of transmitting them. Otherwise, I will not donate my blood. If there is any doubt, my blood donation will be discarded as a precaution.'),
                SizedBox(
                  height: 10,
                ),
                 TextFormField(
                  controller: lastmenstrual,
                  decoration: _buildInputDecoration(
                          'Date')
                      .copyWith(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () => _selectDate(context),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the date';
                    }
                    return null;
                  },
                  readOnly: true,
                  onTap: () => _selectDate(context),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _signatureController,
                  decoration: _buildInputDecoration('Signature'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your signature';
                    }
                    return null;
                  },
                ),
                 SizedBox(
                  height: 13,
                ),
                Text('FOR MEDICAL STAFF USE ONLY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _donorCardNumberController,
                  decoration: _buildInputDecoration('Sampling,'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Sampling,';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _donorCardNumberController,
                  decoration: _buildInputDecoration('Bag Number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Bag Number,';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _donorCardNumberController,
                  decoration: _buildInputDecoration('Medical Examination'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Medical Examination';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: _donorCardNumberController,
                  decoration: _buildInputDecoration('Number of Previous Donations'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Number of Previous Donations: [Number]';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ), 
                 DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Donor',
                  border: OutlineInputBorder(),
                ),
                value: selectedDonor,
                items: donors.map((donor) {
                  return DropdownMenuItem<String>(
                    value: donor,
                    child: Text(donor),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedDonor = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a donor';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ), 
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Type of Bag',
                  border: OutlineInputBorder(),
                ),
                value: selectedBagType,
                items: bagTypes.map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedBagType = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a type of bag';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
                TextFormField(
                  controller: weightController,
                  decoration: _buildInputDecoration('Weight (kg)'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the weight';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: heightController,
                  decoration: _buildInputDecoration('Height (cm)'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Height';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: pulseController,
                  decoration: _buildInputDecoration('Pulse'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Pulse';
                    }
                    return null;
                  },
                ),

                SizedBox(
                  height: 10,
                ),
                Container(
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(8),
  ),
  padding: EdgeInsets.all(16.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildTextField('Skin', skinController),
      _buildTextField('Mucous Membranes', mucousMembranesController),
      _buildTextField('Palms', palmsController),
      _buildTextField('Mouth', mouthController),
      _buildYesNoField('Donor Completed', (value) {
        setState(() {
          donorCompleted = value;
        });
      }),
      _buildYesNoField('Donor Rejected', (value) {
        setState(() {
          donorRejected = value;
        });
      }),
      _buildTimePickerField('Start Time', startTime, (time) {
                  setState(() {
                    startTime = time;
                  });
                }),
      _buildTimePickerField('End Time', endTime, (time) {
                  setState(() {
                    endTime = time;
                  });
                }),
      _buildTextField('Volume to be taken', volumeController),
      _buildTextField('Reason and Duration of Rejection', rejectionReasonController),
     _buildSignatureField('Name and Signature of the Examiner', examinerController),
_buildSignatureField('Name and Signature of the Sampler', samplerController),

      SizedBox(height: 2),
      
    ],
  ),
),

SizedBox(
  height: 13,
), 
Text('Pediatric: Pediatric OK = normal sampling, Pl = Insufficient Sampling, M = Discomfort', style: TextStyle(fontWeight: FontWeight.bold),)


                // Submit Button
                // ElevatedButton(
                //   onPressed: _submitForm,
                //   child: Text('Submit'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildTimePickerField(String label, TimeOfDay? time, Function(TimeOfDay) onTimePicked) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () async {
                final TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: time ?? TimeOfDay.now(),
                );
                if (pickedTime != null) {
                  onTimePicked(pickedTime);
                }
              },
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: label,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  time != null ? time.format(context) : 'Select Time',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          labelText: label,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildYesNoField(String label, Function(bool) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(label),
          Spacer(),
          Text('Yes'),
          Radio(
            value: true,
            groupValue: label == 'Donor Completed' ? donorCompleted : donorRejected,
            onChanged: (bool? value) {
              onChanged(value!);
            },
          ),
          Text('No'),
          Radio(
            value: false,
            groupValue: label == 'Donor Completed' ? donorCompleted : donorRejected,
            onChanged: (bool? value) {
              onChanged(value!);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSignatureField(String label, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 4),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    ),
  );
}

}

