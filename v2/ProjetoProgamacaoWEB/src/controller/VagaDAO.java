package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Vaga;
import util.Conexao;

public class VagaDAO implements GenericDAO<Vaga> {
	
	private final Connection conn;
	
	public VagaDAO() throws ClassNotFoundException, SQLException {
		conn = Conexao.getConnection();
	}

	@Override
	public void persist(Vaga object) {
		PreparedStatement st = null;
		
		try {
			st = conn.prepareStatement("INSERT INTO vagas(descricao, local, valor, beneficios, nome_empresa, contatos) VALUES(?, ?, ?, ?, ?, ?)");
			st.setString(1, object.getDescricao());
			st.setString(2, object.getLocal());
			st.setDouble(3, object.getValor());
			st.setString(4, object.getBeneficio());
			st.setString(5, object.getNomeEmpresa());
			st.setString(6, object.getContatos());
			st.executeUpdate();
		}	
		catch(SQLException e) {
			e.getStackTrace();
		}
		finally {
			Conexao.closeStatement(st);
			Conexao.closeConnection();
		}
	}

	@Override
	public Vaga findById(int id) {			
		PreparedStatement st = null;
		ResultSet rs = null;	
		Vaga vaga = null;
		try {
			st = conn.prepareStatement("SELECT * FROM vagas WHERE id = ?");
			st.setInt(1, id);
			
			rs = st.executeQuery();	
			
			if (rs.next()) {
				vaga = instantiateVaga(rs);
			}		
		}
		catch(SQLException e) {
			e.getStackTrace();
		}
		finally {
			Conexao.closeResultSet(rs);
			Conexao.closeStatement(st);
			Conexao.closeConnection();
		}
		return vaga;
	}

	@Override
	public ArrayList<Vaga> findAll() {
		PreparedStatement st = null;
		ResultSet rs = null;	
		ArrayList<Vaga> vagas = new ArrayList<>();		
		try {
			st = conn.prepareStatement("SELECT * FROM vagas");
			rs = st.executeQuery();
			
			while(rs.next()) {
				vagas.add(instantiateVaga(rs));
			}
		} 
		catch (SQLException e) {
			e.getStackTrace();
		}
		finally {
			Conexao.closeResultSet(rs);
			Conexao.closeStatement(st);
			Conexao.closeConnection();
		}
		return vagas;
	}

	@Override
	public void delete(int id) {
		PreparedStatement st = null;
		
		try {
			st =  conn.prepareStatement("DELETE FROM vagas WHERE id = ?");
			st.setInt(1, id);
			st.executeUpdate();
		}
		catch(SQLException e) {
			e.getSQLState();
		}
		finally {
			Conexao.closeStatement(st);
			Conexao.closeConnection();
		}
	}

	@Override
	public void update(Vaga object) {
		PreparedStatement st = null;
		
		try {
			st = conn.prepareStatement("UPDATE vagas SET descricao = ?, local = ?, valor = ?, beneficios = ?, nome_empresa = ?, contatos = ? WHERE id = ?");
			st.setString(1, object.getDescricao());
			st.setString(2, object.getLocal());
			st.setDouble(3, object.getValor());
			st.setString(4, object.getBeneficio());
			st.setString(5, object.getNomeEmpresa());
			st.setString(6, object.getContatos());
			st.setInt(7, object.getId());
			st.executeUpdate();
		}
		catch(SQLException e) {
			e.getStackTrace();
		}
		finally {
			Conexao.closeStatement(st);
			Conexao.closeConnection();
		}
	}
	
	public Vaga instantiateVaga(ResultSet rs) throws SQLException {
		Vaga vaga = new Vaga();		
		
		vaga.setId(rs.getInt("id"));
		vaga.setDescricao(rs.getString("descricao"));
		vaga.setLocal(rs.getString("local"));
		vaga.setValor(rs.getDouble("valor"));		
		vaga.setBeneficio(rs.getString("beneficios"));
		vaga.setNomeEmpresa(rs.getString("nome_empresa"));
		vaga.setContatos(rs.getString("contatos"));
		return vaga;
	}

}
