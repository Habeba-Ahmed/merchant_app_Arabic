class ItemsModel {
  int? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDesc;
  String? itemsDescAr;
  String? itemsImage;
  int? itemsCount;
  double? itemsPrice;
  int? itemsDiscount;
  String? itemsDatetime;
  int? itemsActive;
  int? itemsCategories;
  String? discoundPrice;

  ItemsModel(
      {this.itemsId,
      this.itemsName,
      this.itemsNameAr,
      this.itemsDesc,
      this.itemsDescAr,
      this.itemsImage,
      this.itemsCount,
      this.itemsPrice,
      this.itemsDiscount,
      this.itemsDatetime,
      this.itemsActive,
      this.itemsCategories,
      this.discoundPrice});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDesc = json['items_desc'];
    itemsDescAr = json['items_desc_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsPrice = json['items_price'].toDouble();
    itemsDiscount = json['items_discount'];
    itemsDatetime = json['items_datetime'];
    itemsActive = json['items_active'];
    itemsCategories = json['items_categories'];
    discoundPrice = json['discound_price'].toString();  
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['items_id'] = this.itemsId;
    data['items_name'] = this.itemsName;
    data['items_name_ar'] = this.itemsNameAr;
    data['items_desc'] = this.itemsDesc;
    data['items_desc_ar'] = this.itemsDescAr;
    data['items_image'] = this.itemsImage;
    data['items_count'] = this.itemsCount;
    data['items_price'] = this.itemsPrice;
    data['items_discount'] = this.itemsDiscount;
    data['items_datetime'] = this.itemsDatetime;
    data['items_active'] = this.itemsActive;
    data['items_categories'] = this.itemsCategories;
    data['discound_price'] = this.discoundPrice;
    return data;
  }
}