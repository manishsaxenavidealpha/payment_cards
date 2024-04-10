class PaymentCardModel {
  final String image;
  final String redirectLink;
  final String name;

  PaymentCardModel({
    required this.image,
    required this.redirectLink,
    required this.name,
  });

  factory PaymentCardModel.fromJson(Map<String, dynamic> json) {
    return PaymentCardModel(
      image: json['image'] ?? '',
      redirectLink: json['redirectLink'] ?? '',
      name: json['name'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'redirectLink': redirectLink,
      'name': name,
    };
  }
}

List<PaymentCardModel> paymentCardDataList = [
  {"image": "assets/visa.png", "redirectLink": "https://example.com/redirect1", "name": "Visa"},
  {"image": "assets/rupay.png", "redirectLink": "https://example.com/redirect2", "name": "rupay"},
  {"image": "assets/mastercard.png", "redirectLink": "https://example.com/redirect3", "name": "mastercard"},
  {"image": "assets/rupay.png", "redirectLink": "https://example.com/redirect4", "name": "Gateway 4"},
  {"image": "assets/mastercard.png", "redirectLink": "https://example.com/redirect5", "name": "Gateway 5"},
  {"image": "assets/rupay.png", "redirectLink": "https://example.com/redirect6", "name": "Gateway 6"},
].map((data) => PaymentCardModel.fromJson(data)).toList();