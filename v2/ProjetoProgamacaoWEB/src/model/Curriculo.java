package model;

import java.util.Date;

public class Curriculo {
	
    private int id;
    private String nome;
    private Date dataNascimento;
    private String endereco;
    private String email;
    private String telefone;
    private String linguagens;
    private String diferenciais;
    private String git;
    private String experiencias;    
    
	public Curriculo() {
	}

	public Curriculo(int id, String nome, Date dataNascimento, String endereco, String email, String telefone, String linguagens, String diferenciais, String git, String experiencias) {		
		this.id = id;
		this.nome = nome;
		this.dataNascimento = dataNascimento;
		this.endereco = endereco;
		this.email = email;
		this.telefone = telefone;
		this.linguagens = linguagens;
		this.diferenciais = diferenciais;
		this.git = git;
		this.experiencias = experiencias;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getLinguagens() {
		return linguagens;
	}

	public void setLinguagens(String linguagens) {
		this.linguagens = linguagens;
	}

	public String getDiferenciais() {
		return diferenciais;
	}

	public void setDiferenciais(String diferenciais) {
		this.diferenciais = diferenciais;
	}

	public String getGit() {
		return git;
	}

	public void setGit(String git) {
		this.git = git;
	}

	public String getExperiencias() {
		return experiencias;
	}

	public void setExperiencias(String experiencias) {
		this.experiencias = experiencias;
	}
}
