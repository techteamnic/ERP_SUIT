package snippet;

import java.security.spec.KeySpec;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.tomcat.util.codec.binary.Base64;

public class Snippet {
	private static String secretKey = "U2FsdGVkX1/5OLc2BsWFEF892txmv25m17OGbhP12Ck=";
	private static String salt = "application_ts";
	 public static void main(String[] args) {
		 decrypt(secretKey, salt);
	}
	 public static String decrypt(String encrypted, String salt) {
		    try {
		        IvParameterSpec iv = new IvParameterSpec(salt.getBytes("UTF-8"));
		        SecretKeySpec skeySpec = new SecretKeySpec(secretKey.getBytes("UTF-8"), "AES");
		 
		        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
		        cipher.init(Cipher.DECRYPT_MODE, skeySpec, iv);
		        byte[] original = cipher.doFinal(Base64.decodeBase64(encrypted));
		 
		        return new String(original);
		    } catch (Exception ex) {
		        ex.printStackTrace();
		    }
		 
		    return null;
		}
}

