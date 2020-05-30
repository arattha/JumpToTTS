package framework.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class CryptoHashingUtil {

	public static byte[] sha256(String msg) {
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(msg.getBytes());
			return md.digest();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}
}
