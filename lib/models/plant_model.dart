class PlantModel{
  final String image,title,country;
  final int price,id;
  PlantModel({required this.image,required this.price,required this.country,required this.id,required this.title});
   static List<PlantModel> plantChild=[
    PlantModel(
        id: 1,
        title: "SAMANTHA",
        price: 400,
      country: 'Russia',
        image: "assets/images/image_1.png",
  ),
    PlantModel(
        id: 2,
        title: "ANGELICA",
        price: 540,
        country: 'Russia',
        image: "assets/images/image_2.png",
  ),
    PlantModel(
        id: 3,
        title: "SAMANTHA",
        price: 440,
      country: 'Russia',
        image: "assets/images/image_3.png",
    ),
     PlantModel(
        id: 4,
        title: "LAVENDER",
        price: 530,
        country: 'France',
        image: 'assets/images/img.png',
    ),

  ];

}