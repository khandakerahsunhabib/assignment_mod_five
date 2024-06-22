class Car {
 String brand;
 String model;
 int yearOfBuild;
 double milesDriven;
 static int numberOfCars=0;

 Car({
  required this.brand,
  required this.model,
  required this.yearOfBuild,
  required this.milesDriven
 }){
  numberOfCars++;
 }

 double drive(double miles){
  milesDriven+=miles;
  return miles;
 }
 double getMilesDriven(){
  return milesDriven;
 }
 String getBrand(){
  return brand;
 }
 String getModel(){
  return model;
 }
 int getYear(){
  return yearOfBuild;
 }
int getAge(){
  int currentYear = DateTime.now().year;
  int carAge = currentYear - yearOfBuild;
  return carAge;
}
static int getNumberOfCars(){
  return numberOfCars;
}
}

void main() {
 Car carOne = Car(brand: 'Toyota', model: 'Toyota-1234', yearOfBuild: 2012, milesDriven: 0);
 Car carTwo= Car(brand: 'Tesla', model: 'Tesla-4225', yearOfBuild: 1995, milesDriven: 0);
 Car carThree = Car(brand: 'Tata', model: 'Tata-5450', yearOfBuild: 1998, milesDriven: 0);

 carOne.drive(1500);
 carTwo.drive(2000);
 carThree.drive(1450);

 print('Car One Properties value');
 print('Car Brand: ${carOne.getBrand()}');
 print('Car Model: ${carOne.getModel()}');
 print('Build Date: ${carOne.getYear()}');
 print('Miles Driven: ${carOne.getMilesDriven()} K.M\n');

 print('Car Two Properties value');
 print('Car Brand: ${carTwo.getBrand()}');
 print('Car Model: ${carTwo.getModel()}');
 print('Build Date: ${carTwo.getYear()}');
 print('Miles Driven: ${carTwo.getMilesDriven()} K.M\n');

 print('Car Three Properties value');
 print('Car Brand: ${carThree.getBrand()}');
 print('Car Model: ${carThree.getModel()}');
 print('Build Date: ${carThree.getYear()}');
 print('Miles Driven: ${carThree.getMilesDriven()} K.M\n');

 print('Car One Age: ${carOne.getAge()}');
 print('Car Two Age: ${carTwo.getAge()}');
 print('Car Three Age: ${carThree.getAge()}\n');

 print('Total Numbers of Car created: ${Car.getNumberOfCars()}');
}