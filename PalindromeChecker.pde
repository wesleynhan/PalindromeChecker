public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word){
if(onlyLowerCase(word).equals(reverse(word)))
  return true;
return false;
}
public String reverse(String str){
String result = "";
for(int i = str.length()-1; i >= 0; i--)
  result += str.charAt(i);
return onlyLowerCase(result);

}

public String onlyLowerCase(String sWord){
String result = "";
for(int i = 0; i < sWord.length(); i++)
  if(Character.isLetter(sWord.charAt(i)) == true)
    result+= sWord.charAt(i);
return result.toLowerCase();
}
