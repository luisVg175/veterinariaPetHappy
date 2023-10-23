package administrador;

class CRegistroMedicamentos {

    private String Nproducto;
    private double Precio;
    private int Cantidad;
    private String Fv;
    private int codigo;
    
    public CRegistroMedicamentos() {
    }

    
    public CRegistroMedicamentos(String Nproducto, double Precio, int Cantidad) {
        this.Nproducto = Nproducto;
        this.Precio = Precio;
        this.Cantidad = Cantidad;
        this.Fv = Fv;
        this.codigo= codigo;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getFv() {
        return Fv;
    }

    public void setFv(String Fv) {
        this.Fv = Fv;
    }

    public String getNproducto() {
        return Nproducto;
    }

    public void setNproducto(String Nproducto) {
        this.Nproducto = Nproducto;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }
    
    
    public int Codigo(int codigo){
        
        
    return codigo;
    }
    
}
