part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  const User(
      {required this.id,
      required this.name,
      required this.email,
      required this.address,
      required this.houseNumber,
      required this.phoneNumber,
      required this.city,
      required this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = const User(
  id: 1,
  name: "Jenny",
  email: "jenny@gmail.com",
  address: "Jalan gayungan",
  houseNumber: "1223",
  phoneNumber: "09877654467",
  city: "Surabaya",
  picturePath:
      "https://2.bp.blogspot.com/-2TQetb34eT4/XDRmUaoE9sI/AAAAAAAABlE/WkfOuJOJF68W_vDhypibC5Sw_12CRtN9wCLcBGAs/s1600/Jennie-BLACKPINK-Berhasil-Raih-Trofi-Pertama-Untuk-Lagu-SOLO-di-Hari-Debut-Solo-Stage-2.jpg",
);
