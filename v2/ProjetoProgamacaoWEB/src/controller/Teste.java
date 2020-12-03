package controller;

import java.sql.SQLException;
import java.util.Date;

import model.Curriculo;

public class Teste {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		CurriculoDAO dao = new CurriculoDAO();
		Curriculo curriculo = new Curriculo(7, "Jão Alberto", new Date(), "Rua olinda", "joao@hotmail.com", "1212", "Java", "nenhum", "git", "IBM");
		dao.update(curriculo);
		System.out.println("apskap");
	}
}
