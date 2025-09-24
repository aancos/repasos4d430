CLASS zcl_rellenar_77 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    METHODS:
      insert_asistente
        IMPORTING
          iv_id             TYPE zasistentes_77-id
          iv_nombre         TYPE char40
          iv_apellidos      TYPE char40
          iv_edad           TYPE i
          iv_id_ciudad      TYPE char40
        RETURNING
          VALUE(rv_success) TYPE abap_bool,

      delete_asistente
        IMPORTING
          iv_id             TYPE zasistentes_77-id
          iv_nombre         TYPE char40
          iv_apellidos      TYPE char40
          iv_edad           TYPE i
          iv_id_ciudad      TYPE char40
        RETURNING
          VALUE(rv_success) TYPE abap_bool,

      insert_ciudad
        IMPORTING
          iv_id             TYPE zciudades_77-id
          iv_ciudad         TYPE char40
          iv_pais           TYPE char3
        RETURNING
          VALUE(rv_success) TYPE abap_bool,

      delete_ciudad
        IMPORTING
          iv_id             TYPE zciudades_77-id
          iv_ciudad         TYPE char40
          iv_pais           TYPE char3
        RETURNING
          VALUE(rv_success) TYPE abap_bool
        .

ENDCLASS.

CLASS zcl_rellenar_77 IMPLEMENTATION.

  METHOD insert_asistente.
    DATA ls_asistente TYPE zasistentes_77.

    ls_asistente-client = sy-mandt.
    ls_asistente-id = iv_id.
    ls_asistente-nombre = iv_nombre.
    ls_asistente-apellidos = iv_apellidos.
    ls_asistente-edad = iv_edad.
    ls_asistente-id_ciudad = iv_id_ciudad.
    ls_asistente-created_by = sy-uname.
    ls_asistente-created_at = sy-datum && sy-uzeit.

    TRY.
        INSERT INTO zasistentes_77 VALUES @ls_asistente.
        rv_success = abap_true.
      CATCH cx_sy_open_sql_db.
        rv_success = abap_false.
    ENDTRY.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA lv_success TYPE abap_bool.


*   Antonio
    lv_success = insert_asistente(      iv_id = '99'     iv_nombre = 'Antonio'      iv_apellidos = 'de Ancos'      iv_edad = 53      iv_id_ciudad = 'MAD'    ).

*    lv_success = insert_asistente( iv_id = '88' iv_nombre = 'Pepe'          iv_apellidos = 'Soler'                  iv_edad = 60     iv_id_ciudad = 'ELC'   ).
*    lv_success = delete_asistente( iv_id = '88' iv_nombre = 'Pepe'          iv_apellidos = 'Soler'                  iv_edad = 60     iv_id_ciudad = 'ELC'   ).

*   Asistentes
    lv_success = insert_asistente( iv_id = '01' iv_nombre = 'Aitziber'      iv_apellidos = 'San Martín Mintiaga'    iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '02' iv_nombre = 'Aitziber'      iv_apellidos = 'Aurtenetxe Sanchez'     iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '03' iv_nombre = 'Ana Begoña'    iv_apellidos = 'Irabien Bidaurre'       iv_edad = 22 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '04' iv_nombre = 'David'         iv_apellidos = 'Serrano Zazo'           iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '05' iv_nombre = 'David'         iv_apellidos = 'Colina'                 iv_edad = 30 iv_id_ciudad = 'MAD' ).
    lv_success = insert_asistente( iv_id = '06' iv_nombre = 'Adolfo'        iv_apellidos = 'López'                  iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '07' iv_nombre = 'Estibaliz'     iv_apellidos = 'Castresana'             iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '08' iv_nombre = 'Flor'          iv_apellidos = 'Egido Arroyo'           iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '09' iv_nombre = 'Iraia'         iv_apellidos = 'Rábanos Beldarrain'     iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '10' iv_nombre = 'Iñigo'         iv_apellidos = 'Bilbao'                 iv_edad = 31 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '11' iv_nombre = 'Iñigo'         iv_apellidos = 'Zubillaga Solano'       iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '12' iv_nombre = 'Javier'        iv_apellidos = 'Gutierrez Tellitu'      iv_edad = 33 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '13' iv_nombre = 'Eztizen'       iv_apellidos = 'Garay'                  iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '14' iv_nombre = 'Jose Juan'     iv_apellidos = 'Hernandez Domingo'      iv_edad = 88 iv_id_ciudad = 'MAD' ).
    lv_success = insert_asistente( iv_id = '15' iv_nombre = 'Laura'         iv_apellidos = 'Clavel'                 iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '16' iv_nombre = 'Leire'         iv_apellidos = 'Moreno Alsasua'         iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '17' iv_nombre = 'Maria Eugenia' iv_apellidos = 'Castresana Garcia'      iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '19' iv_nombre = 'Ramon'         iv_apellidos = 'Alcibar Apraiz'         iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '20' iv_nombre = 'Ramiro'        iv_apellidos = 'Marín'                  iv_edad = 36 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '21' iv_nombre = 'Raul'          iv_apellidos = 'Pardo Zubiaur'          iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '22' iv_nombre = 'Rodrigo'       iv_apellidos = 'Rodriguez Blanco'       iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '23' iv_nombre = 'Soiartze'      iv_apellidos = 'Tomé'                   iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '24' iv_nombre = 'Virginia'      iv_apellidos = 'Ruiz Diego'             iv_edad = 30 iv_id_ciudad = 'BIL' ).
    lv_success = insert_asistente( iv_id = '25' iv_nombre = 'Xabier'        iv_apellidos = 'Aretxabaleta'           iv_edad = 30 iv_id_ciudad = 'BIL' ).

*   Ciudades
    lv_success = insert_ciudad( iv_id = 'MAD' iv_ciudad = 'Madrid'      iv_pais = 'ESP' ).
    lv_success = insert_ciudad( iv_id = 'BIL' iv_ciudad = 'Bilbao'      iv_pais = 'ESP' ).
    lv_success = insert_ciudad( iv_id = 'PAM' iv_ciudad = 'Pamplona'    iv_pais = 'ESP' ).
    lv_success = insert_ciudad( iv_id = 'PAR' iv_ciudad = 'París'       iv_pais = 'FRA' ).
*    lv_success = delete_ciudad( iv_id = 'PAR' iv_ciudad = 'París'       iv_pais = 'FRA' ).

    IF lv_success = abap_true.
      out->write( 'OK! ;-)' ).
    ELSE.
      out->write( 'KO :-(((((' ).
    ENDIF.
  ENDMETHOD.

  METHOD insert_ciudad.
    DATA ls_ciudad TYPE zciudades_77.

    ls_ciudad-client = sy-mandt.
    ls_ciudad-id = iv_id.
    ls_ciudad-ciudad = iv_ciudad.
    ls_ciudad-id_pais = iv_pais.
    ls_ciudad-created_by = sy-uname.
    ls_ciudad-created_at = sy-datum && sy-uzeit.

    TRY.
        INSERT INTO zciudades_77 VALUES @ls_ciudad.
        rv_success = abap_true.
      CATCH cx_sy_open_sql_db.
        rv_success = abap_false.
    ENDTRY.
  ENDMETHOD.

  METHOD delete_asistente.
    DATA ls_asistente TYPE zasistentes_77.

    ls_asistente-client = sy-mandt.
    ls_asistente-id = iv_id.
    ls_asistente-nombre = iv_nombre.
    ls_asistente-apellidos = iv_apellidos.
    ls_asistente-edad = iv_edad.
    ls_asistente-id_ciudad = iv_id_ciudad.
    ls_asistente-created_by = sy-uname.
    ls_asistente-created_at = sy-datum && sy-uzeit.

    TRY.
        DELETE zasistentes_77 FROM @ls_asistente.
        rv_success = abap_true.
      CATCH cx_sy_open_sql_db.
        rv_success = abap_false.
    ENDTRY.
  ENDMETHOD.

  METHOD delete_ciudad.
    DATA ls_ciudad TYPE zciudades_77.

    ls_ciudad-client = sy-mandt.
    ls_ciudad-id = iv_id.
    ls_ciudad-ciudad = iv_ciudad.
    ls_ciudad-id_pais = iv_pais.
    ls_ciudad-created_by = sy-uname.
    ls_ciudad-created_at = sy-datum && sy-uzeit.

    TRY.
        DELETE zciudades_77 FROM @ls_ciudad.
        rv_success = abap_true.
      CATCH cx_sy_open_sql_db.
        rv_success = abap_false.
    ENDTRY.
  ENDMETHOD.

ENDCLASS.

