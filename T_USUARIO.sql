CREATE OR REPLACE PACKAGE PKG_USUARIO AS
    C_UNO NUMBER :=1;
    C_CERO NUMBER :=0;
    
  PROCEDURE INS_USUARIO(
    P_NOMBRE IN VARCHAR2,
    P_APATERNO IN VARCHAR,
    P_AMATERNO IN VARCHAR2,
    P_CORREO IN VARCHAR2,
    P_CONTRASENA IN VARCHAR
  );


END PKG_USUARIO;

/
CREATE OR REPLACE PACKAGE BODY PKG_USUARIO AS

  PROCEDURE INS_USUARIO(
    P_NOMBRE IN VARCHAR2,
    P_APATERNO IN VARCHAR,
    P_AMATERNO IN VARCHAR2,
    P_CORREO IN VARCHAR2,
    P_CONTRASENA IN VARCHAR
  ) AS
   
  BEGIN
    INSERT INTO T_USUARIO(t_usuario.nombre,t_usuario.apaterno,t_usuario.amaterno,t_usuario.correo,t_usuario.contrasena,t_usuario.estado)
    VALUES(P_NOMBRE, P_APATERNO,P_AMATERNO, P_CORREO,P_CONTRASENA, C_UNO);
        
  END;

END PKG_USUARIO;


