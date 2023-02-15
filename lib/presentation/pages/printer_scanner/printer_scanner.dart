import 'package:flutter/material.dart';
import 'package:will_app/core/constants/dropdown.dart';

import 'package:will_app/presentation/pages/widgets/scaffold_body.dart';
import 'package:will_app/presentation/pages/widgets/input.dart';
import 'package:will_app/presentation/pages/widgets/dropdown.dart';
import 'package:will_app/presentation/pages/widgets/button.dart';
import 'package:will_app/presentation/utils/validators/printer_scanner_validator.dart';

class PrinterScannerPage extends StatefulWidget {
  const PrinterScannerPage({super.key});

  @override
  State<PrinterScannerPage> createState() => _PrinterScannerPageState();
}

class _PrinterScannerPageState extends State<PrinterScannerPage>
    with PrinterScannerValidationMixin {
  final _licensePlateController = TextEditingController();
  final _brandController = TextEditingController();
  final _modelController = TextEditingController();
  final _serialController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ScaffoldBody(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey, //New
                blurRadius: 5,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownWidget(
                    list: DropdownConstants.mapDropdownPrinterScannerTypes,
                    label: 'Tipo',
                    onChange: (String? value) {},
                    value: null,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Input(
                    label: 'Placa',
                    controller: _licensePlateController,
                    isValid: isLicensePlateValid,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Input(
                    label: 'Marca',
                    controller: _brandController,
                    isValid: isBrandValid,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Input(
                    label: 'Modelo',
                    controller: _modelController,
                    isValid: isModelValid,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Input(
                    label: 'Serial',
                    controller: _serialController,
                    isValid: isSerialValid,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: size.height * 0.02),
                  DropdownWidget(
                    list: DropdownConstants.mapDropdownCampus,
                    label: 'Sede',
                    onChange: (String? value) {},
                    value: null,
                  ),
                  SizedBox(height: size.height * 0.02),
                  DropdownWidget(
                    list: DropdownConstants.mapDropdownAreas,
                    label: 'Area',
                    onChange: (String? value) {},
                    value: null,
                  ),
                  SizedBox(height: size.height * 0.02),
                  const Text('Información del usuario'),
                  SizedBox(height: size.height * 0.02),
                  Input(
                    label: 'Nombre',
                    controller: _serialController,
                    isValid: isSerialValid,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Input(
                    label: 'Cédula',
                    controller: _serialController,
                    isValid: isSerialValid,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Input(
                    label: 'Teléfono',
                    controller: _serialController,
                    isValid: isSerialValid,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Button(
                    label: 'Guardar',
                    callback: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
