class DevelopClient {
  final String name;
  final String email;
  final int password;
  final String image;

  DevelopClient({this.name, this.email, this.password, this.image});

  factory DevelopClient.fromJson(Map<String, dynamic> json) {
    return DevelopClient(
      name: json['nome'],
      email: json['email'],
      password: json['senha'],
      image: json['imagem'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.name;
    data['email'] = this.email;
    data['senha'] = this.password;
    data['imagem'] = this.image;
    return data;
  }

  String test() {
    return 'Funcionou';
  }
}