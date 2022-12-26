/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package net.music;

/**
 *
 * @author haodeptrai
 */
public class Account {

    private int id;
    private String name;
    private String passWord;
    private String email;

    public Account() {
    }

    public Account(int id, String name, String passWord, String email) {
	this.id = id;
	this.name = name;
	this.passWord = passWord;
	this.email = email;
    }

    public int getId() {
	return id;
    }

    public void setId(int id) {
	this.id = id;
    }

    public String getName() {
	return name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public String getPassWord() {
	return passWord;
    }

    public void setPassWord(String passWord) {
	this.passWord = passWord;
    }

    public String getEmail() {
	return email;
    }

    public void setEmail(String email) {
	this.email = email;
    }

    @Override
    public String toString() {
	return "Account{" + "id=" + id + ", name=" + name + ", passWord=" + passWord + ", email=" + email + '}';
    }

}
