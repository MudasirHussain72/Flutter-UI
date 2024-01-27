class HeadphonesModel {
  HeadphonesModel({
    required this.productId,
    required this.productName,
    required this.productThumbnail,
    required this.unitPrice,
  });
  final String productId;
  final String productName;
  final String productThumbnail;
  final String unitPrice;
}

List<HeadphonesModel> headphones = [
  HeadphonesModel(
    productId: '1',
    productName: 'QuietComfort 35 wireless headphones II',
    productThumbnail: 'assets/images/headphone1.png',
    unitPrice: '449.99',
  ),
  HeadphonesModel(
    productId: '2',
    productName: 'SoundLink® aroundear wireless headphones',
    productThumbnail: 'assets/images/headphone2.png',
    unitPrice: '269.99',
  ),
  HeadphonesModel(
    productId: '3',
    productName: 'Bose Noise Cancelling Headphones 700',
    productThumbnail: 'assets/images/headphone3.png',
    unitPrice: '209.99',
  ),
  HeadphonesModel(
    productId: '4',
    productName: 'QuietComfort 35 wireless headphones II',
    productThumbnail: 'assets/images/headphone4.png',
    unitPrice: 'Coming Soon',
  ),
  HeadphonesModel(
    productId: '5',
    productName: 'QuietComfort 35 wireless headphones II',
    productThumbnail: 'assets/images/headphone1.png',
    unitPrice: '449.99',
  ),
  HeadphonesModel(
    productId: '6',
    productName: 'SoundLink® aroundear wireless headphones',
    productThumbnail: 'assets/images/headphone2.png',
    unitPrice: '269.99',
  ),
  HeadphonesModel(
    productId: '7',
    productName: 'Bose Noise Cancelling Headphones 700',
    productThumbnail: 'assets/images/headphone3.png',
    unitPrice: '209.99',
  ),
  HeadphonesModel(
    productId: '8',
    productName: 'QuietComfort 35 wireless headphones II',
    productThumbnail: 'assets/images/headphone4.png',
    unitPrice: 'Coming Soon',
  ),
];
