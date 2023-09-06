package com.cosmoclub.cache;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class ImageCache {
	 private static final Map<Long, byte[]> cache = new ConcurrentHashMap<>();
	 
	 public static void addImageToCache(Long userId, byte[] imageData) {
	        cache.put(userId, imageData);
	    }
	 
	 public static byte[] getImageFromCache(Long userId) {
	        return cache.get(userId);
	    }
	 
	 public static void removeImageFromCache(Long userId) {
	        cache.remove(userId);
	    }
}
