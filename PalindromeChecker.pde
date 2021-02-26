
  public void setup()
  {
    String lines[] = loadStrings("palindromes.txt");
    System.out.println("there are " + lines.length + " lines");

    for (int i=0; i < lines.length; i++) 
    {
  String storing = lines[i];
  String monkeys = "";
  for (int j = 0; j < lines[i].length(); j++) {
  if (lines[i].substring(j, j+1).equals(" ")) {
   j+=0;
  }
  else {
    monkeys += lines[i].substring(j,j+1);
       }
  }
  lines[i] = monkeys;

  String result = new String();
  for(int k = 0; k < lines[i].length(); k++)
  {
    if(Character.isLetter(lines[i].charAt(k)))
    result = result + lines[i].substring(k,k+1);
  }
  lines[i] = result;
  
      lines[i] = lines[i].toLowerCase();
      if(palindrome(lines[i])==true)
      {
        System.out.println(storing + " IS a palindrome.");
      }
      else
      {
        System.out.println(storing + " is NOT a palindrome.");
      }
    }
  }
  public boolean palindrome(String word)
  {
    if(word.equals(reverse(word)))
    return true;
  else    
    return false;
  }
  public String reverse(String str)
  {
      String sNew = new String();
      for(int i = str.length()-1; i>=0; i--)
    sNew=sNew+str.charAt(i);
      return sNew;
  }

     
}


