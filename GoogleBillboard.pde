public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
  //find 1st 10 consecutive digits that are prime 
  int start = 2;
  int end = 12;
  String tenDigits = e.substring(start, end);
  double num = Double.parseDouble(tenDigits);
  while(isPrime(num) == false){
    start++;
    end++;
    tenDigits = e.substring(start, end);
    num = Double.parseDouble(tenDigits);
  }
  System.out.println(tenDigits); //first 10 consecutive digits that form a prime number
  System.out.println(tenConsecSum49(5)); //fifth set of 10 consecutive digits that sum up to 49
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
public String tenConsecSum49(int x){
  int start = 2;
  int end = 12;
  String result = "";
  int found = 0;
  while(found < x){
    if(getDigitsSum(e.substring(start, end)) == 49){
      result = e.substring(start, end);
      found++;
    } 
    start++;
    end++;
  }
  return result;
}

public int getDigitsSum(String digits){
  int sum = 0;
  for(int i = 0; i < 10; i++){
    sum += Integer.parseInt(digits.substring(i, i+1));
  }
  return sum;
}
