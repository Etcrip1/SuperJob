package model;

public class Vaga {
	
    private int id;
    private String descricao;
    private String local;
    private double valor;
    private String beneficio;
    private String nomeEmpresa;
    private String contatos;
    
	public Vaga() {
	}

	public Vaga(int id, String descricao, String local, double valor, String beneficio, String nomeEmpresa,
			String contatos) {
		super();
		this.id = id;
		this.descricao = descricao;
		this.local = local;
		this.valor = valor;
		this.beneficio = beneficio;
		this.nomeEmpresa = nomeEmpresa;
		this.contatos = contatos;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getBeneficio() {
		return beneficio;
	}

	public void setBeneficio(String beneficio) {
		this.beneficio = beneficio;
	}

	public String getNomeEmpresa() {
		return nomeEmpresa;
	}

	public void setNomeEmpresa(String nomeEmpresa) {
		this.nomeEmpresa = nomeEmpresa;
	}

	public String getContatos() {
		return contatos;
	}

	public void setContatos(String contatos) {
		this.contatos = contatos;
	}
}
