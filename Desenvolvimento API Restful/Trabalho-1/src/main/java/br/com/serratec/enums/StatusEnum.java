package br.com.serratec.enums;

public enum StatusEnum {
	Aguardando(1, "Aguardando"), Em_Atendimento(2, "Em Atendimento"), Atendido(3, "Atendido");
	
	private Integer codigo;
	private String status;
	
	private StatusEnum(Integer codigo, String status) {
		this.codigo = codigo;
		this.status = status;
	}
	
}
