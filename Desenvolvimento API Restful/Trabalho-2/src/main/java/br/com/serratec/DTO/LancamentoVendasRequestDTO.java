package br.com.serratec.DTO;

import java.time.LocalDate;
import br.com.serratec.entity.LancamentoVendas;

public class LancamentoVendasRequestDTO {

	private LocalDate data;
	private Double valor;
	private Long idVendedor;
	
	

    public LancamentoVendasRequestDTO() {
	}

	public LancamentoVendasRequestDTO(LancamentoVendas lancamentoVendas) {
        this.data = lancamentoVendas.getData();
        this.valor = lancamentoVendas.getValor();
        this.idVendedor = lancamentoVendas.getVendedor().getId();
    }

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public Long getIdVendedor() {
		return idVendedor;
	}

	public void setIdVendedor(Long idVendedor) {
		this.idVendedor = idVendedor;
	}

	
}
	
