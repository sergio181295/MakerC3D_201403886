package org.compi2.codigo3d.parser;

/**
 * Clase sencilla para sintetizar información entre producciones.
 * Cuenta con un único atributo de tipo String, pero pueden agregársele
 * los atributos que se consideren necesarios.
 * @author esvux
 */
public class NodoC3D {
    public String cad;
    public String lv = "";
    public String lf = "";
    public String codigo = "";
    public NodoC3D(String cad) {
        this.cad = cad;
    }

    public NodoC3D() {
    }
    
    
    
    public String getCad(){
        return cad;
    }
        
}
