package com.bookadmin.dao;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.bookadmin.model.Store;
import com.bookadmin.model.User;

@Repository
public interface StoreDao {
	public List<Store> getStoreByid(int storeid);

	public List<Store> getAllstore();

	public void add(String storePlace, String storeName,
			String latitude, String longitude, String city);

	public void delete(String storeid);

	public void change(int storeid, String storePlace, String storeName,
			String latitude, String longitude, String city);

	public List<Store> getStore(String storeName);
	
	public List<Store> getStoreRank();
}
