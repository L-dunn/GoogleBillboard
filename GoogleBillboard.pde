public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
  //find 1st 10 consecutive digits that are prime 
  int start = 2;
  int end = 12;
  String tenDigits = e.substring(start, end);
  double num = Double.parseDouble(tenDigits);
  //System.out.println(isPrime(num));
  while(isPrime(num) == false){
    start++;
    end++;
    tenDigits = e.substring(start, end);
    num = Double.parseDouble(tenDigits);
  }
  System.out.println(tenDigits);
}  
public boolean isPrime(double dNum)  
{   
  if (dNum < 2) {
    return false;
  }
  for (int i = 2; i <= Math.sqrt(dNum); i++) {
    if (dNum % i == 0) {
      return false;
    }
  }
  return true;
} 
