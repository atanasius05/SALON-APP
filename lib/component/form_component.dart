import 'package:flutter/material.dart';

Padding inputForm(Function(String?) validasi, {required TextEditingController controller,
required String hintTXt, required String helperTxt, required IconData iconData, bool password = false}){
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 10),
    child:  SizedBox(
      width: 350,
      child: TextFormField(
            validator: (value) => validasi(value),
            autofocus:  true,
            controller: controller,
            obscureText: password,
            decoration: InputDecoration(
              hintText: hintTXt,
              border: const OutlineInputBorder(),
              helperText: helperTxt,
              prefixIcon: Icon(iconData),
              filled: true, //supaya bisa warna
              fillColor: Colors.white, //atur warna putih
            ),
          )
    ),
  );
}
