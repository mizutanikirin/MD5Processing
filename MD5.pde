import java.security.*;

class MD5{
  
  MD5(){}
  
  public String Encrypt(String st){
    String md5 = "";
    
    try {
      MessageDigest md = MessageDigest.getInstance("MD5");
      md.update(st.getBytes());
      byte[] output = md.digest();
      md5 = BytesToHex(output);
    }catch (Exception e) {
      println("Exception: " + e);
    }
    
    return md5;
  }
  
  public String BytesToHex(byte[] b) {
    char hexDigit[] = {
      '0', '1', '2', '3', '4', '5', '6', '7',
      '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'
    };
    StringBuffer buf = new StringBuffer();
    
    for (int j = 0; j < b.length; j++) {
      buf.append(hexDigit[(b[j] >>4) & 0x0f]);
      buf.append(hexDigit[b[j] & 0x0f]);
    }
    return buf.toString();
  }
}