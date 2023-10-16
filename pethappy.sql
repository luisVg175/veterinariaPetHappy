create database PetHappy;
go

use PetHappy
go

CREATE TABLE historialpagos (
  IDHistorialPagos int primary key NOT NULL,
  FechaPagado datetime DEFAULT NULL,
  TipoPago char(20) NOT NULL,
  IDPagoNuevo int NOT NULL
)

-- --------------------------------------------------------

CREATE TABLE pagonuevo (
  IDPagoNuevo int primary key NOT NULL,
  NombreDueno char(40) NOT NULL,
  NombrePaciente char(40) NOT NULL,
  edadPaciente int NOT NULL,
  pesoPaciente float NOT NULL,
  EspeciePaciente char(20) NOT NULL,
  GeneroPaciente char(10) NOT NULL,
  TipoTratamiento char(15) NOT NULL,
  detalles char(200) NOT NULL,
  IDRegistro int NOT NULL,
  IDReserva int NOT NULL
)

-- --------------------------------------------------------

CREATE TABLE registroproducto (
  IDRegistro int primary key NOT NULL,
  NombreProducto char(40) NOT NULL,
  CantidadProducto int NOT NULL,
  FV datetime NOT NULL,
  PrecioProducto int NOT NULL
)

-- --------------------------------------------------------

CREATE TABLE reservar (
  IDReserva int primary key NOT NULL,
  NombreDueno char(40) NOT NULL,
  NombreMascota char(40) NOT NULL,
  FechaRegistro datetime NULL,
  fechaAtencion datetime NULL
)

-- --------------------------------------------------------
-- --------------------------------------------------------

ALTER TABLE historialpagos
ADD CONSTRAINT FK_HistorialPagos_PagoNuevo
FOREIGN KEY (IDPagoNuevo)
REFERENCES pagonuevo (IDPagoNuevo);

ALTER TABLE pagonuevo
ADD CONSTRAINT FK_PagoNuevo_RegistroProducto
FOREIGN KEY (IDRegistro)
REFERENCES registroproducto (IDRegistro);

ALTER TABLE pagonuevo
ADD CONSTRAINT FK_PagoNuevo_Reservar
FOREIGN KEY (IDReserva)
REFERENCES reservar (IDReserva);
