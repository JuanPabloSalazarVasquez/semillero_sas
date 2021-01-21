USE bxzrzouvy0cn1letx2m4;

--Drops
DROP TABLE IF EXISTS vehiculos;
DROP TABLE IF EXISTS tipo_linea;
DROP TABLE IF EXISTS tipo_marca;
--Drops close

--Tablas
CREATE TABLE vehiculos(
    nro_placa VARCHAR(10) NOT NULL PRIMARY KEY,
    id_linea INT(6) NOT NULL,
    modelo ENUM('2000', '2001', '2002', '2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021') NULL,
    fecha_ven_seguro DATETIME NOT NULL,
    fecha_ven_tecnomecanica DATETIME NOT NULL,
    fecha_ven_contratodo DATETIME NULL,
    KEY id_linea (id_linea)
);


CREATE TABLE tipo_linea (
    id_linea INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    desc_linea TEXT NULL,
    id_marca INT(6) NOT NULL,
    activo ENUM('S','N') NOT NULL,
    KEY id_marca (id_marca)
);


CREATE TABLE tipo_marca(
    id_marca INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    desc_marca TEXT NULL,
    activo ENUM('S','N') NOT NULL
);
--Tablas close

--Foreign keys
ALTER TABLE vehiculos
ADD CONSTRAINT foreign_id_linea FOREIGN KEY (id_linea) REFERENCES tipo_linea (id_linea) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE tipo_linea
ADD CONSTRAINT fk_id_marca FOREIGN KEY (id_marca) REFERENCES tipo_marca(id_marca) ON DELETE RESTRICT ON UPDATE CASCADE;
--Foreign keys close