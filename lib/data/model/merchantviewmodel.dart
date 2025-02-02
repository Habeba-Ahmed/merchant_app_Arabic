class MerchantVuiewodel {
  int? totalmoney;
  int? billtotalmoney;
  int? merchantId;
  String? merchantName;
  int? merchantUser;
  int? merchantPreviousprices;
  int? billId;
  int? billMerchantid;
  String? billDatetime;
  int? billPaidmoney;
  int? billTotalmeters;
  int? billCostmeter;
  String? billCategory;

  MerchantVuiewodel(
      {this.totalmoney,
      this.billtotalmoney,
      this.merchantId,
      this.merchantName,
      this.merchantUser,
      this.merchantPreviousprices,
      this.billId,
      this.billMerchantid,
      this.billDatetime,
      this.billPaidmoney,
      this.billTotalmeters,
      this.billCostmeter,
      this.billCategory});

  MerchantVuiewodel.fromJson(Map<String, dynamic> json) {
    totalmoney = json['totalmoney'];
    billtotalmoney = json['billtotalmoney'];
    merchantId = json['merchant_id'];
    merchantName = json['merchant_name'];
    merchantUser = json['merchant_user'];
    merchantPreviousprices = json['merchant_previousprices'];
    billId = json['bill_id'];
    billMerchantid = json['bill_merchantid'];
    billDatetime = json['bill_datetime'];
    billPaidmoney = json['bill_paidmoney'];
    billTotalmeters = json['bill_totalmeters'];
    billCostmeter = json['bill_costmeter'];
    billCategory = json['bill_category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalmoney'] = this.totalmoney;
    data['billtotalmoney'] = this.billtotalmoney;
    data['merchant_id'] = this.merchantId;
    data['merchant_name'] = this.merchantName;
    data['merchant_user'] = this.merchantUser;
    data['merchant_previousprices'] = this.merchantPreviousprices;
    data['bill_id'] = this.billId;
    data['bill_merchantid'] = this.billMerchantid;
    data['bill_datetime'] = this.billDatetime;
    data['bill_paidmoney'] = this.billPaidmoney;
    data['bill_totalmeters'] = this.billTotalmeters;
    data['bill_costmeter'] = this.billCostmeter;
    data['bill_category'] = this.billCategory;
    return data;
  }
}