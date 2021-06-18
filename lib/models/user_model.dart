
class UserModel{
  String uid;

  UserModel({this.uid});
}

class User{

  String uid;
  String name,bloodGroup,email,city,disease,gender;
  String birthDate;
  bool isExpand;

  User({this.uid, this.name, this.gender, this.bloodGroup, this.birthDate,
    this.city, this.email, this.disease,this.isExpand = false});

 /* User.fromMap(Map<String, dynamic> data){
    uid = data[uid];
    name = data[name];
    gender = data[gender];
    bloodGroup = data[bloodGroup];
    birthDate = data[birthDate];
    city = data[city];
    email = data[email];
    disease = data[disease];
  }

  User.fromJson(this.uid,Map data){
    name = data[name];
    gender = data[gender];
    bloodGroup = data[bloodGroup];
    birthDate = data[birthDate];
    city = data[city];
    email = data[email];
    disease = data[disease];
  }*/


}