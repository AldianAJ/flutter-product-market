part of 'models.dart';

enum ProductType { new_product, popular, recommended }

class Product extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<ProductType> types;

   const Product(
      {required this.id,
      required this.picturePath,
      required this.name,
      required this.description,
      required this.ingredients,
      required this.price,
      required this.rate,
      this.types = const []});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Product> mockProduct = [
  const Product(
      id: 1,
      picturePath:
          "https://i.pinimg.com/564x/07/75/a5/0775a5b2e05c5f5296951382e0107107.jpg",
      name: "Sate Sayur Sultan",
      description: "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan bermutu tinggi. Semua bahan ditanam dengan menggunakan teknologi masa kini sehingga memiliki nutrisi yang kaya.",
      ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
      price: 150000,
      rate: 4.2,
      types: [ProductType.new_product, ProductType.recommended, ProductType.popular]),

  const Product(
      id: 2,
      picturePath:
          "https://i.pinimg.com/564x/e3/d0/1b/e3d01be8b77d951b0ba79ea8e3cdc84e.jpg",
      name: "Steak Daging Sapi Korea",
      description:
          "Daging sapi Korea adalah jenis sapi paling premium di Korea. Namun, untuk menikmatinya Anda tidak perlu jauh-jauh ke Korea Selatan. Steak Sapi Korea Oppa Bandung ini sudah terkenal di seluruh Indonesia dan sudah memiliki lebih dari 2 juta cabang.",
      ingredients: "Daging Sapi Korea, Garam, Lada Hitam",
      price: 750000,
      rate: 4.5),

  const Product(
      id: 3,
      picturePath:
          "https://i.pinimg.com/564x/6e/b3/ec/6eb3ecc4327dd7f0aa7e6a9166c5da46.jpg",
      name: "Mexican Chopped Salad",
      description: "Salad ala mexico yang kaya akan serat dan vitamin. Seluruh bahan diambil dari Mexico sehingga akan memiliki cita rasa yang original.",
      ingredients: "Jagung, Selada, Tomat Ceri, Keju, Wortel",
      price: 105900,
      rate: 3.9,
      types: [ProductType.new_product]),

  const Product(
      id: 4,
      picturePath:
          "https://i.pinimg.com/564x/2c/f4/27/2cf427ff858ce80432446c1ebb3bfda4.jpg",
      name: "Sup Wortel Pedas",
      description: "Sup wortel pedas yang unik ini cocok banget buat kalian-kalian yang suka pedas namun ingin tetap sehat. Rasanya yang unik akan memanjakan lidah Anda.",
      ingredients: "Wortel, Seledri, Kacang Tanah, Labu, Garam, Gula",
      price: 60000,
      rate: 4.9,
      types: [ProductType.recommended]),
      
  const Product(
      id: 5,
      picturePath:
          "https://i.pinimg.com/564x/34/68/3e/34683e03c1b0beb32dd145d80588e72f.jpg",
      name: "Korean Raw Beef Tartare",
      description:
          "Daging sapi Korea cincang yang disajikan mentah dan disiram saus spesial dengan toping kuning telur dan taburan biji wijen.",
      ingredients: "Daging Sapi Korea, Telur, Biji Wijen",
      price: 350000,
      rate: 3.4)
];
