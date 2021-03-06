package pojo;

// Generated May 27, 2015 11:09:49 PM by Hibernate Tools 3.4.0.CR1

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * VaiTro generated by hbm2java
 */
@Entity
@Table(name = "VaiTro")
public class VaiTro implements java.io.Serializable {

	private int id;
	private String ten;
	private Set<NhanVien> nhanViens = new HashSet<NhanVien>(0);

	public VaiTro() {
	}

	public VaiTro(int id, String ten) {
		this.id = id;
		this.ten = ten;
	}

	public VaiTro(int id, String ten, Set<NhanVien> nhanViens) {
		this.id = id;
		this.ten = ten;
		this.nhanViens = nhanViens;
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
	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "vaiTro")
	public Set<NhanVien> getNhanViens() {
		return this.nhanViens;
	}

	public void setNhanViens(Set<NhanVien> nhanViens) {
		this.nhanViens = nhanViens;
	}

}
