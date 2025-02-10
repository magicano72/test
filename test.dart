abstract class common {
  void printName();
}

class person extends common {
  final int? id;
  final String? name;
  final String? country;
  person({
    this.id,
    this.name,
    this.country,
  });
  @override
  void printName() {
    print("Person Name: $name");
  }
}

class animal extends common {
  final int? high;
  final String? name;
  final String? country;
  animal(this.country, {this.high, this.name});
  @override
  void printName() {
    print("Animal Name: $name");
  }
}

class printer {
  void printName(common c) {
    c.printName();
  }
}

void main() {
  person p = person(id: 1, name: "Ali", country: "Pakistan");
  animal a = animal("Pakistan", high: 5, name: "Lion");
  printer pr = printer();
  pr.printName(p);
  pr.printName(a);
}
