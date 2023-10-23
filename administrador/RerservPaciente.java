package administrador;

class RerservPaciente {
    private String NombreCliente;
    private String NombreMascota;
    private String FechaRegistro;
    private String FechaAtencion;

    public RerservPaciente() {
    }

    public RerservPaciente(String NombreCliente, String NombreMascota, String FechaRegistro, String FechaAtencion) {
        this.NombreCliente = NombreCliente;
        this.NombreMascota = NombreMascota;
        this.FechaRegistro = FechaRegistro;
        this.FechaAtencion = FechaAtencion;
    }

    public String getNombreCliente() {
        return NombreCliente;
    }

    public void setNombreCliente(String NombreCliente) {
        this.NombreCliente = NombreCliente;
    }

    public String getNombreMascota() {
        return NombreMascota;
    }

    public void setNombreMascota(String NombreMascota) {
        this.NombreMascota = NombreMascota;
    }

    public String getFechaRegistro() {
        return FechaRegistro;
    }

    public void setFechaRegistro(String FechaRegistro) {
        this.FechaRegistro = FechaRegistro;
    }

    public String getFechaAtencion() {
        return FechaAtencion;
    }

    public void setFechaAtencion(String FechaAtencion) {
        this.FechaAtencion = FechaAtencion;
    }
    
    
}
