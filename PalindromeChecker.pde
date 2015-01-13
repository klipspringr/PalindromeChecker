public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newWord = "";
  for (int i = 0; i < word.length(); i++)
  {

    if (Character.isLetter(word.charAt(i)) == true)
      {
       newWord = newWord + word.charAt(i);
      }
  }

  word = newWord;
  word = word.toLowerCase();

  for (int i = 0; i < word.length(); i++)
  {
    int temp = word.length();
    temp = temp - ( 1 + i);
    
    if(word.charAt(i) != word.charAt(temp))
    {
      return false;
    }
  }
  return true;
}

