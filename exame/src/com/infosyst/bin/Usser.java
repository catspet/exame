package com.infosyst.bin;

public class Usser {
private int id,edad,ingresosmensuales;
private String name,apellidom,apellidop,email,fechaingreso;

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getApellidom() {
	return apellidom;
}
public void setApellidom(String apellidom) {
	this.apellidom = apellidom;
}
	
public String getApellidop() {
	return apellidop;
}
public void setApellidop(String apellidop) {
	this.apellidop = apellidop;
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

public int getEdad() {
	return edad;
}
public void setEdad(int edad) {
	this.edad = edad;
}

public String getFechaingreso() {
	return fechaingreso;
}
public void setFechaingreso(String fechaingreso) {
	this.fechaingreso = fechaingreso;
}
public int getIngresosmensuales() {
	return ingresosmensuales;
}
public void setIngresosmensuales(int ingresosmensuales) {
	this.ingresosmensuales = ingresosmensuales;
}

}