class FeaturedItemModel {
  final String image;
  final String title;

  FeaturedItemModel({required this.image, required this.title});
}

List<FeaturedItemModel> featuredItems = [
  FeaturedItemModel(
    image: 'assets/image1.png',
    title: 'Beautiy',
  ),
  FeaturedItemModel(
    image: 'assets/image2.png',
    title: 'Fashion',
  ),
  FeaturedItemModel(
    image: 'assets/image3.png',
    title: 'Kids',
  ),
  FeaturedItemModel(
    image: 'assets/image4.png',
    title: 'Men',
  ),
  FeaturedItemModel(
    image: 'assets/image5.png',
    title: 'Womens',
  ),
];
