package models;
// Generated 13 janv. 2016 15:16:17 by Hibernate Tools 3.4.0.CR1

/**
 * Etape generated by hbm2java
 */
public class Etape implements java.io.Serializable {

	private EtapeId id;
	private Vol vol;
	private Reservation reservation;
	private Integer numero;
	private String type;

	public Etape() {
	}

	public Etape(EtapeId id, Vol vol, Reservation reservation) {
		this.id = id;
		this.vol = vol;
		this.reservation = reservation;
	}

	public Etape(EtapeId id, Vol vol, Reservation reservation, Integer numero, String type) {
		this.id = id;
		this.vol = vol;
		this.reservation = reservation;
		this.numero = numero;
		this.type = type;
	}

	public EtapeId getId() {
		return this.id;
	}

	public void setId(EtapeId id) {
		this.id = id;
	}

	public Vol getVol() {
		return this.vol;
	}

	public void setVol(Vol vol) {
		this.vol = vol;
	}

	public Reservation getReservation() {
		return this.reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}

	public Integer getNumero() {
		return this.numero;
	}

	public void setNumero(Integer numero) {
		this.numero = numero;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}