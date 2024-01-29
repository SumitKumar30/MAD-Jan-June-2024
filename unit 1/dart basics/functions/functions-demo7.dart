void main(List<String> args) {
   Map<String, Function> result = math(40); // returns the list of functoins

  print(result["delhi"]!(
      10, 20)); // ! tells that the value for respective key cannot be null

  print(result["mumbai"]!(10, 20));
  //print(result["chennai"](10, 20));
  print(result["Bangalore"]!(10, 20));
}

Map<String, Function> math(int a) {
  // local variable
  int b = 30;
  // nested functions => closures
  Function add = (int x, int y) {
    return x + y + a + b;
  };

  Function sub = (int x, int y) {
    return x - y - a - b;
  };

  Function mul = (int x, int y) {
    return x * y * a * b;
  };

  Function div = (int x, int y) {
    return (x / y)/a;
  };
  // returning a function
  //return add;

  // returning list of functions
  return {"delhi": add, "mumbai": sub, "Bangalore": mul, "Chennai": div};
}