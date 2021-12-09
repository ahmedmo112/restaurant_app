class MenuClass {
  late List<Food> food;
  late List<IcedDrinks> icedDrinks;

  
  MenuClass.fromJson(Map<String, dynamic> json) {
    if (json['food'] != null) {
      food = <Food>[];
      json['food'].forEach((v) {
        food.add(new Food.fromJson(v));
      });
    }
    if (json['Iced drinks'] != null) {
      icedDrinks = <IcedDrinks>[];
      json['Iced drinks'].forEach((v) {
        icedDrinks.add(new IcedDrinks.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.food != null) {
  //     data['food'] = this.food.map((v) => v.toJson()).toList();
  //   }
  //   if (this.icedDrinks != null) {
  //     data['Iced drinks'] = this.icedDrinks.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class Food {
  int? id;
  String? name;
  String? description;
  String? image;
  List<Sizeprice>? sizeprice;

  Food({this.id, this.name, this.description, this.image, this.sizeprice});

  Food.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    if (json['sizeprice'] != null) {
      sizeprice =  <Sizeprice>[];
      json['sizeprice'].forEach((v) {
        sizeprice!.add(new Sizeprice.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['name'] = this.name;
  //   data['description'] = this.description;
  //   data['image'] = this.image;
  //   if (this.sizeprice != null) {
  //     data['sizeprice'] = this.sizeprice.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class IcedDrinks {
 int? id;
  String? name;
  String? description;
  String? image;
  List<Sizeprice>? sizeprice;


  IcedDrinks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    if (json['sizeprice'] != null) {
      sizeprice =  <Sizeprice>[] ;
      json['sizeprice'].forEach((v) {
        sizeprice!.add(new Sizeprice.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['name'] = this.name;
  //   data['description'] = this.description;
  //   data['image'] = this.image;
  //   if (this.sizeprice != null) {
  //     data['sizeprice'] = this.sizeprice.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class Sizeprice {
  String? size;
  int? price;

  

  Sizeprice.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    data['price'] = this.price;
    return data;
  }
}
