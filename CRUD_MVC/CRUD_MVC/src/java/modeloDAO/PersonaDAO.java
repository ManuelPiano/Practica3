
package modeloDAO;

import config.Conexion;
import interfaces.CRUD;
import java.sql.Connection;
import java.util.List;
import modelo.Persona;
import java.sql.*;
import java.util.ArrayList;

public class PersonaDAO implements CRUD {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p= new Persona();

    @Override
    public List listar() {
        ArrayList<Persona>list = new ArrayList<>();
        String sql="select * from tb_persona";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Persona per= new Persona();
                per.setId(rs.getInt("id"));
                per.setDui(rs.getString("dui_persona"));
                per.setApellidos(rs.getString("apellidos_persona"));
                per.setNombres(rs.getString("nombres_persona"));
                list.add(per);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Persona list(int id) {
          ArrayList<Persona>list = new ArrayList<>();
        String sql="select * from tb_persona where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt("id"));
                p.setDui(rs.getString("dui_persona"));
                p.setApellidos(rs.getString("apellidos_persona"));
                p.setNombres(rs.getString("nombres_persona"));
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Persona per) {
        String sql="insert into tb_persona(dui_persona, apellidos_persona, nombres_persona) values('"+per.getDui()+"', '"+per.getApellidos()+"', '"+per.getNombres()+"')";
    
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Persona per) {
        String sql="UPDATE tb_persona set dui_persona='"+per.getDui()+"', apellidos_persona='"+per.getApellidos()+"', nombres_persona='"+per.getNombres()+"' where id="+per.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from tb_persona where id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
