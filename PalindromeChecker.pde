public void setup()
{
  String lines[] = {"test", "rotator","rewriter","nurses run","Madam, I'm Adam!","A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String ogWord = onlyLetters(word).toLowerCase();
  String maybePalindrome = reverse(onlyLetters(word)).toLowerCase();
  if(ogWord.equals(maybePalindrome)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i >=0; i--){
      sNew += str.substring(i, i+1);
    }
    return sNew;
}
public String onlyLetters(String str){
  String letters = new String();
  for(int i = 0; i < str.length();i++){
    if(Character.isLetter(str.charAt(i))){
      letters += str.substring(i, i+1);
    }
  }
  return letters;
}
