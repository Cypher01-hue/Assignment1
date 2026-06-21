int pinofled = 11;
int numruntime = 5;


void blintdown(int runtime){
  int i = runtime;
  while(i>0){
    digitalWrite(pinofled, HIGH);
    delay(200);
    digitalWrite(pinofled, LOW);
    delay(200);
    i  = i -1;

  }
}
void setup() {
  // put your setup code here, to run once:
pinMode(pinofled,OUTPUT);
Serial.begin(9600);
 
 Serial.println("Starting");

 int count = numruntime;
 while (count>0){
  Serial.print("count: ");
  Serial.println(count);
  blintdown(count);
  delay(500);
  count = count - 1;
 }

  Serial.println("finish");
  digitalWrite(pinofled, HIGH);
  delay(5000);
  digitalWrite(pinofled, LOW);
} 

void loop() {

}
