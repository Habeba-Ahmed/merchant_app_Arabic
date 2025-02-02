class MerchantModel {
  int? merchantId;
  String? merchantName;
  int? merchantUser;
  int? merchantPreviousprices;

  MerchantModel(
      {this.merchantId,
      this.merchantName,
      this.merchantUser,
      this.merchantPreviousprices});

  MerchantModel.fromJson(Map<String, dynamic> json) {
    merchantId = json['merchant_id'];
    merchantName = json['merchant_name'];
    merchantUser = json['merchant_user'];
    merchantPreviousprices = json['merchant_previousprices'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['merchant_id'] = this.merchantId;
    data['merchant_name'] = this.merchantName;
    data['merchant_user'] = this.merchantUser;
    data['merchant_previousprices'] = this.merchantPreviousprices;
    return data;
  }
}