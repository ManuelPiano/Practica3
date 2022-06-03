
package modelo;

public class Persona {
    int id;
    String dui;
    String apellidos;
    String nombres;

    public Persona() {
    }

    public Persona(int id, String dui, String apellidos, String nombres) {
        this.id = id;
        this.dui = dui;
        this.apellidos = apellidos;
        this.nombres = nombres;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }
    
    
}
