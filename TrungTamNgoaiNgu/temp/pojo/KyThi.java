package pojo;

// Generated Jun 3, 2015 6:16:54 PM by Hibernate Tools 3.4.0.CR1

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * KyThi generated by hbm2java
 */
@Entity
@Table(name = "KyThi")
public class KyThi implements java.io.Serializable {

	private int id;
	private Serializable ten;
	private Date thoiGianThi;
	private Serializable diaDiem;
	private Integer soLuongDuThi;
	private Set dangKyThis = new HashSet(0);

	public KyThi() {
	}

	public KyThi(int id, Serializable ten, Date thoiGianThi,
			Serializable diaDiem) {
		this.id = id;
		this.ten = ten;
		this.thoiGianThi = thoiGianThi;
		this.diaDiem = diaDiem;
	}

	public KyThi(int id, Serializable ten, Date thoiGianThi,
			Serializable diaDiem, Integer soLuongDuThi, Set dangKyThis) {
		this.id = id;
		this.ten = ten;
		this.thoiGianThi = thoiGianThi;
		this.diaDiem = diaDiem;
		this.soLuongDuThi = soLuongDuThi;
		this.dangKyThis = dangKyThis;
	}

	@Id
	@Column(name = "Id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "Ten", nullable = false)
	public Serializable getTen() {
		return this.ten;
	}

	public void setTen(Serializable ten) {
		this.ten = ten;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "ThoiGianThi", nullable = false, length = 23)
	public Date getThoiGianThi() {
		return this.thoiGianThi;
	}

	public void setThoiGianThi(Date thoiGianThi) {
		this.thoiGianThi = thoiGianThi;
	}

	@Column(name = "DiaDiem", nullable = false)
	public Serializable getDiaDiem() {
		return this.diaDiem;
	}

	public void setDiaDiem(Serializable diaDiem) {
		this.diaDiem = diaDiem;
	}

	@Column(name = "SoLuongDuThi")
	public Integer getSoLuongDuThi() {
		return this.soLuongDuThi;
	}

	public void setSoLuongDuThi(Integer soLuongDuThi) {
		this.soLuongDuThi = soLuongDuThi;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "kyThi")
	public Set getDangKyThis() {
		return this.dangKyThis;
	}

	public void setDangKyThis(Set dangKyThis) {
		this.dangKyThis = dangKyThis;
	}

}
