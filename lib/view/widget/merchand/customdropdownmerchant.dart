// ignore_for_file: must_be_immutable

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:merchant/core/constant/color.dart';

class CustomDropDown extends StatefulWidget {
  List<DropdownMenuItem<String>>? itemss;
  String ?idcontroller;
  Map marchentdatamapcontroller;
  CustomDropDown({ 
    super.key,
    required this.itemss,
    required this.idcontroller,
    required this.marchentdatamapcontroller,
    });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
    String ?selectedValue;
    String ?selectedid;
    TextEditingController search=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: const Text(
              'اختار التاجر',
              style: TextStyle(
                fontSize: 20,
                color: AppColor.grey,
              ),
            ),
              items: widget.itemss,
                
            value: selectedValue,
            onChanged: (value) {
              setState(() {
              selectedValue =value!;
              widget.idcontroller= widget.marchentdatamapcontroller[selectedValue].toString();
              search.text = selectedValue!;
              });
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height : 40,
              width : 200,
            ),
            dropdownStyleData: const DropdownStyleData(
              maxHeight : 200,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height : 40,
            ),
            dropdownSearchData: DropdownSearchData(
              searchController: search,
              searchInnerWidgetHeight : 50,
              searchInnerWidget: Container(
                height : 50,
                padding: const EdgeInsets.only(
                  top : 8,
                  bottom : 4,
                  right : 8,
                  left : 8,
                ),
                child: TextFormField(
                  expands: true,
                  maxLines: null,
                  controller: search,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    hintText: 'Search for an item...',
                    hintStyle: const TextStyle(fontSize: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              searchMatchFn: (item, searchValue) {
                return item.value.toString().contains(searchValue);
              },
            ),
            // This to clear the search value when you close the menu
            onMenuStateChange: (isOpen) {
              // if (!isOpen) {
              //   controller.merchantid.clear();
              // }
            },
          ),
            ),
    );
  }
}













