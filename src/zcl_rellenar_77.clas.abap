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
          iv_gafas          TYPE char1
          iv_genero         TYPE char30
        RETURNING
          VALUE(rv_success) TYPE abap_bool,

      delete_asistente
        IMPORTING
          iv_id             TYPE zasistentes_77-id
          iv_nombre         TYPE char40
          iv_apellidos      TYPE char40
          iv_edad           TYPE i
          iv_id_ciudad      TYPE char40
          iv_gafas          TYPE char1
          iv_genero         TYPE char30
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
    ls_asistente-zzgafas_ext = iv_gafas.
    ls_asistente-zzgenero_ext = iv_genero.
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

    DELETE FROM zasistentes_77.
    DELETE FROM zciudades_77.

*   Antonio
    lv_success = insert_asistente(      iv_id = '99'     iv_nombre = 'Antonio'      iv_apellidos = 'de Ancos'      iv_edad = 53      iv_id_ciudad = 'MAD' iv_gafas = 'X' iv_genero = 'Hombre'   ).

    lv_success = insert_asistente( iv_id = '88' iv_nombre = 'Pepe'          iv_apellidos = 'Soler'                  iv_edad = 60     iv_id_ciudad = 'PAM' iv_gafas = 'X' iv_genero = 'Hombre'   ).
*    lv_success = delete_asistente( iv_id = '88' iv_nombre = 'Pepe'          iv_apellidos = 'Soler'                  iv_edad = 60     iv_id_ciudad = 'PAM'   ).

*   Asistentes
    lv_success = insert_asistente( iv_id = '01' iv_nombre = 'Asier'          iv_apellidos = 'Villelabeitia Eguia'        iv_edad = 22 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C'   ).
    lv_success = insert_asistente( iv_id = '02' iv_nombre = 'Amaia'          iv_apellidos = 'Bilbao Aguirre'             iv_edad = 31 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '03' iv_nombre = 'Arancha'        iv_apellidos = 'Ríos'                        iv_edad = 20 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '04' iv_nombre = 'Naiara'         iv_apellidos = 'Espinosa'                    iv_edad = 23 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '05' iv_nombre = 'Asier'          iv_apellidos = 'Benito'                      iv_edad = 31 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '06' iv_nombre = 'Begoña'         iv_apellidos = 'Cajigas Acinal'              iv_edad = 35 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '07' iv_nombre = 'Borja'          iv_apellidos = 'Berrojalbiz Aldamiz-Etxebarria' iv_edad = 22 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '08' iv_nombre = 'Carlos'         iv_apellidos = 'Herrero Rodriguez'           iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '09' iv_nombre = 'Francisco Javier' iv_apellidos = 'Lopez'                    iv_edad = 40 iv_id_ciudad = 'MAD' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '10' iv_nombre = 'Igor'           iv_apellidos = 'Centeno Maeso'               iv_edad = 32 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '11' iv_nombre = 'Inigo'          iv_apellidos = 'Diaz de Sarralde'            iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '12' iv_nombre = 'Iñaki'          iv_apellidos = 'Arregui Bilbao'              iv_edad = 34 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '13' iv_nombre = 'Manuel'         iv_apellidos = 'Montero'                     iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '14' iv_nombre = 'Maria'          iv_apellidos = 'Fernandez Rincon'            iv_edad = 25 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '15' iv_nombre = 'Mariano'        iv_apellidos = 'De la fuente'                iv_edad = 30 iv_id_ciudad = 'MAD' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '16' iv_nombre = 'Marta'          iv_apellidos = 'Deheso Corcuera'             iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '17' iv_nombre = 'Nora'           iv_apellidos = 'Miguelez Velasco'            iv_edad = 31 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '19' iv_nombre = 'Pablo'          iv_apellidos = 'Tejado Garcia'               iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '20' iv_nombre = 'Pablo'          iv_apellidos = 'Vizuete Benitez'             iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '21' iv_nombre = 'Rafael'         iv_apellidos = 'Mayo Dominguez'              iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '22' iv_nombre = 'Gonzalo'        iv_apellidos = 'García'                      iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '23' iv_nombre = 'María'          iv_apellidos = 'Bermejo'                     iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '24' iv_nombre = 'Yolanda'        iv_apellidos = 'Gonzalez Gallego'            iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '25' iv_nombre = 'Armando'        iv_apellidos = 'Abiega Castresana'           iv_edad = 18 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '26' iv_nombre = 'Oihane'         iv_apellidos = 'Arzuaga Lekue'               iv_edad = 27 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').
    lv_success = insert_asistente( iv_id = '27' iv_nombre = 'Jon'            iv_apellidos = 'Urrutia'                     iv_edad = 30 iv_id_ciudad = 'BIL' iv_gafas = ' ' iv_genero = 'N/S N/C').


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

