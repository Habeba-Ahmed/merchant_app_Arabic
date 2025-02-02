import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:get/get.dart';
import 'package:merchant/controller/bill_controller.dart';
import 'package:merchant/core/constant/color.dart';
// import 'package:merchant/view/widget/auth/custombutton.dart';
import 'package:merchant/view/widget/merchand/customtextformfield.dart';
import '../widget/auth/custombutton.dart';

class Bill extends StatefulWidget {
  const Bill({super.key});

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
String ?selectedValue;

String ?selectedid;

DateTime? datetime;
TextEditingController search=TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.put(BillControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: const Text('اضافه فاتوره'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: GetBuilder<BillControllerImp>(builder: (controller) {
          // var datetime;

          return ListView(
          children: [


            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: const Text(
                  'اختار التاجر',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
                items: controller.merchantDataMap.keys
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 20,
                            color: AppColor.grey,
                    ),
                        ),
                      )).toList(),
                    
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                  selectedValue =value!;
                  controller.merchantid = controller.merchantDataMap[selectedValue].toString();
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
                        hintText: 'ابحث',
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
                  if (!isOpen) {
                    controller.merchantid = '';
                  }
                },
              ),
                ),
            ),

            // CustomDropDown(
            //   itemss: controller.merchantDataMap.keys
            //     .map((item) => DropdownMenuItem(
            //           value: item,
            //           child: Text(
            //             item,
            //             style: const TextStyle(
            //               fontSize: 14,
            //             ),
            //           ),
            //         )).toList(), 
            //   idcontroller: controller.merchantid,
            //   marchentdatamapcontroller: controller.merchantDataMap),
            CustomTextFormField(
              // icon: icon, 
              hinttext: "نوع الصنف", 
              labeltext: "نوع الصنف", 
              mycontroller: controller.category, 
              valid: (val){
                return val!.isEmpty ? "الرجاء ادخال نوع الصنف" : null;
              }),

            CustomTextFormField(
              // icon: icon, 
              hinttext: " عدد الامتار", 
              labeltext: "عدد الامتار", 
              mycontroller: controller.totalmeter, 
              valid: (val){
                return val!.isEmpty ? "الرجاء ادخال عدد الامتار " : null;
              }),

            CustomTextFormField(
              // icon: icon, 
              hinttext: "سعر المتر", 
              labeltext: "السعر", 
              mycontroller: controller.costmeter, 
              valid: (val){
                return val!.isEmpty ? "الرجاء ادخال سعر المتر " : null;
              }),


            CustomTextFormField(
              // icon: icon, 
              hinttext: "الحساب المدفوع", 
              labeltext: "الحساب المدفوع", 
              mycontroller: controller.paidmoney, 
              valid: (val){
                return val!.isEmpty ? "الرجاء ادخال الحساب المدفوع " : null;
              }),
             Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      controller.getdate(context);
                      // setState(() {
                      // });
                    }, icon: const Icon(Icons.edit)),
                    Text(controller.formattedDate,style: const TextStyle(fontSize : 15),),
                    const Text(
                        ': التاريخ ',
                        style: TextStyle(color: AppColor.fourthColor,fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ],
                  ),
                ),
              CustomButton(
                text: "اضافه", onPressed: (){
                  controller.add();
                }),
      ],
        );
        },)
      ),
    );
}}

