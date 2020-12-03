package controller;

import java.util.ArrayList;

public interface GenericDAO <T>{
	
	void persist(T object);
	T findById(int id);
	ArrayList<T> findAll();
	void delete(int id);
	void update(T object);
	
}
