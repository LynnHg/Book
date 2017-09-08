
package com.bookadmin.dao;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.bookadmin.model.Trade;
import com.bookadmin.model.User;

@Repository
public interface TradeDao {

	public List<Trade> getAlltrade();

	public void delete(String tradeid);

	public List<Trade> getTradebytradeid(String tradeid);

	public void add(String tradeTime, int tradeWay,
			float tradeMoney, String openid, int orderid, int tradeFlag);

	public void change(String tradeid, String tradeTime, int tradeWay,
			float tradeMoney, String openid, int orderid, int tradeFlag);



}