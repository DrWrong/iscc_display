package com.plac.util;

import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

import org.apache.commons.codec.binary.Base64;

public class MD5Util {

	/**
	 * md5加密
	 * 
	 * @param str
	 * @return
	 */
	public static String md5(String str) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
			byte[] byteDigest = md.digest();
			int i;
			StringBuffer buf = new StringBuffer("");
			for (int offset = 0; offset < byteDigest.length; offset++) {
				i = byteDigest[offset];
				if (i < 0)
					i += 256;
				if (i < 16)
					buf.append("0");
				buf.append(Integer.toHexString(i));
			}
			// 32位加密
			return buf.toString();
			// 16位的加密
			// return buf.toString().substring(8, 24);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * des加密
	 * @param data
	 * @return
	 */
	public static String encrypt(String data) {
		try {
			Key k = toKey();
			Cipher cipher = Cipher.getInstance("DES");
			cipher.init(Cipher.ENCRYPT_MODE, k);
			byte[] e = cipher.doFinal(data.getBytes());
			return Base64.encodeBase64String(e);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * des解密
	 * 
	 * @param data	base64加密的字符串
	 * @return
	 * 解密后的字符串
	 */
	public static String dencrypt(String data) {
		byte[] d = Base64.decodeBase64(data);
		try {
			Key k = toKey();
			Cipher cipher = Cipher.getInstance("DES");
			cipher.init(Cipher.DECRYPT_MODE, k);
			return new String(cipher.doFinal(d));
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	
	private  static Key toKey() throws Exception {
		byte[] key = "EVhJ7r`E3G".getBytes();
		DESKeySpec des = new DESKeySpec(key);
		SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
		SecretKey secretKey = keyFactory.generateSecret(des);
		return secretKey;
	}
}
