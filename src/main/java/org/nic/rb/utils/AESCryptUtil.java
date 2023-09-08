package org.nic.rb.utils;

import java.security.Key;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;

public class AESCryptUtil {
	
	static Logger logger = TSRBLogger.getTSRBLogger(AESCryptUtil.class);
	public static final String ALGO = "AES"; // Default uses ECB PKCS5Padding
	public static final String KEYTOCRYPT = "ApplicationNICTS";
	public static final String BASE64ENCODED = "QXBwbGljYXRpb25OSUNUUw==";
	
	/*public static String encrypt(String Data, String secret) {
		Key key;
		try {
			key = generateKey(secret);
			Cipher c = Cipher.getInstance(ALGO);
			c.init(Cipher.ENCRYPT_MODE, key);
			byte[] encVal = c.doFinal(Data.getBytes());
			String encryptedValue = Base64.getEncoder().encodeToString(encVal);
			return encryptedValue;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}*/

	public static String decrypt(String strToDecrypt, String secret) {
		try {
			Key key = generateKey(secret);
			Cipher cipher = Cipher.getInstance(ALGO);
			cipher.init(Cipher.DECRYPT_MODE, key);
			return new String(cipher.doFinal(Base64.getDecoder().decode(strToDecrypt)));
		} catch (Exception e) {
			logger.error("Error while decrypting: " + e.toString());
		}
		return null;
	}

	private static Key generateKey(String secret) throws Exception {
		byte[] decoded = Base64.getDecoder().decode(secret.getBytes());
		Key key = new SecretKeySpec(decoded, ALGO);
		return key;
	}

	/*public static String decodeKey(String to_decode) {
		byte[] decoded = Base64.getDecoder().decode(to_decode.getBytes());
		return new String(decoded);
	}

	public static String encodeKey(String to_encode) {
		byte[] encoded = Base64.getEncoder().encode(to_encode.getBytes());
		return new String(encoded);
	}*/
}
