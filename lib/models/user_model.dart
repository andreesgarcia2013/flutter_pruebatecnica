class UserModel {
    String id;
    String picture;
    int age;
    String eyeColor;
    String name;
    String gender;
    String company;
    String email;
    String phone;
    String address;
    String about;

    UserModel({
        required this.id,
        required this.picture,
        required this.age,
        required this.eyeColor,
        required this.name,
        required this.gender,
        required this.company,
        required this.email,
        required this.phone,
        required this.address,
        required this.about,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["_id"],
        picture: json["picture"],
        age: json["age"],
        eyeColor: json["eyeColor"],
        name: json["name"],
        gender: json["gender"],
        company: json["company"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        about: json["about"],
    );
}
