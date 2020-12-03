package controller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Curriculo;
import util.Conexao;

public class CurriculoDAO implements GenericDAO<Curriculo>{
	
	final private Connection conn;
	
	public CurriculoDAO() throws SQLException, ClassNotFoundException {
		conn = Conexao.getConnection();
	}

	@Override
	public void persist(Curriculo object) {
		PreparedStatement st = null;		
		try {
			st = conn.prepareStatement("INSERT INTO curriculos(nome, datanasc, endereco, email, telefone, linguagens, diferenciais, git, experiencias) VALUES(?, ?, ?, ?, ?, ?, ? ,?, ?)");
			st.setString(1, object.getNome());
			st.setDate(2, new java.sql.Date(object.getDataNascimento().getTime()));
			st.setString(3, object.getEndereco());
			st.setString(4, object.getEmail());
			st.setString(5, object.getTelefone());
			st.setString(6, object.getLinguagens());
			st.setString(7, object.getDiferenciais());
			st.setString(8, object.getGit());
			st.setString(9, object.getExperiencias());
			st.executeUpdate();
		}	
		catch(SQLException e) {
			e.getStackTrace();
		}
		finally {
			Conexao.closeStatement(st);
		}
		
	}

	@Override
	public Curriculo findById(int id) {
		PreparedStatement st = null;
		ResultSet rs = null;	
		Curriculo curriculo = null;
		try {
			st = conn.prepareStatement("SELECT * FROM curriculos WHERE id = ?");
			st.setInt(1, id);
			
			rs = st.executeQuery();	
			
			if (rs.next()) {
				curriculo = instantiateCurriculo(rs);
			}		
		}
		catch(SQLException e) {
			e.getStackTrace();
		}
		finally {
			Conexao.closeResultSet(rs);
			Conexao.closeStatement(st);
		}
		return curriculo;
	}	

	@Override
	public ArrayList<Curriculo> findAll() {
		PreparedStatement st = null;
		ResultSet rs = null;	
		ArrayList<Curriculo> curriculos = new ArrayList<>();		
		try {
			st = conn.prepareStatement("SELECT * FROM curriculos");
			rs = st.executeQuery();
			
			while(rs.next()) {
				curriculos.add(instantiateCurriculo(rs));
			}
		} 
		catch (SQLException e) {
			e.getStackTrace();
		}
		finally {
			Conexao.closeResultSet(rs);
			Conexao.closeStatement(st);
		}
		return curriculos;		
	}

	@Override
	public void delete(int id) {
		PreparedStatement st = null;		
		try {
			st =  conn.prepareStatement("DELETE FROM curriculos WHERE id = ?");
			st.setInt(1, id);
			st.executeUpdate();
		}
		catch(SQLException e) {
			e.getSQLState();
		}
		finally {
			Conexao.closeStatement(st);
		}
		
	}

	@Override
	public void update(Curriculo object) {
		PreparedStatement st = null;		
		try {			
			st = conn.prepareStatement("UPDATE curriculos SET nome = ?, datanasc = ?, endereco = ?, email = ?, telefone = ?, linguagens = ?, diferenciais = ?, git = ?, experiencias = ? WHERE id = ?");
			st.setString(1, object.getNome());
			st.setDate(2, new java.sql.Date(object.getDataNascimento().getTime()));
			st.setString(3, object.getEndereco());
			st.setString(4, object.getEmail());
			st.setString(5, object.getTelefone());
			st.setString(6, object.getLinguagens());
			st.setString(7, object.getDiferenciais());
			st.setString(8, object.getGit());
			st.setString(9, object.getExperiencias());
			st.setInt(10, object.getId());
			st.executeUpdate();
		}
		catch(SQLException e) {
			e.getStackTrace();
		}
		finally {
			Conexao.closeStatement(st);
		}		
	}
	
	private Curriculo instantiateCurriculo(ResultSet rs) throws SQLException{
		Curriculo curriculo = new Curriculo();
		curriculo.setId(rs.getInt("id"));
		curriculo.setNome(rs.getString("nome"));
		curriculo.setDataNascimento(rs.getDate("datanasc"));
		curriculo.setEndereco(rs.getString("endereco"));
		curriculo.setEmail(rs.getString("email"));
		curriculo.setTelefone(rs.getString("telefone"));
		curriculo.setLinguagens(rs.getString("linguagens"));
		curriculo.setDiferenciais(rs.getString("diferenciais"));
		curriculo.setGit(rs.getString("git"));
		curriculo.setExperiencias(rs.getString("experiencias"));
		return curriculo;
	}

}
