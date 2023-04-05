CREATE TABLE CLIENTES_TL(
ID NUMBER(3),
NOMBRE VARCHAR2(30),
APELLIDO VARCHAR2(20),
DNI NUMBER(10),
SUELDO_NETO NUMBER(6),
DIRECCION VARCHAR2(30),
FECHA_NAC DATE,
PROVINCIA VARCHAR2(30)
)

ALTER TABLE CLIENTES_TL
ADD CONSTRAINT PK_ID_CLIENTES PRIMARY KEY (ID)


CREATE TABLE CELULARES_TL(
ID NUMBER(3),
COD_AREA NUMBER(4),
NUMERO NUMBER(10),
MARCA VARCHAR(50),
FECHA_COMPRA DATE,
ID_CLIENTE NUMBER(3)
)

ALTER TABLE CELULARES_TL
ADD CONSTRAINT PK_ID_CELU PRIMARY KEY (ID)

ALTER TABLE CELULARES_TL
ADD CONSTRAINT ID_CELULARE_FK FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES_TL


INSERT INTO CLIENTES_TL VALUES(18,'Carlos','Toledo',36987956,58764,'Sarmiento 6544','24/08/1998','Misiones')
INSERT INTO CLIENTES_TL VALUES(20,'Jimena','Calvo',38765632,28968,'Tapalque 4244','16/10/1978','Cordoba')

select * from clientes_tl
--2
select CONCAT('Mi primer', 'Ejercicio en clase') from dual

--3
select upper('mi primer ejercicio') from dual

--4
select ltrim('        mi primer ejercicio') from dual

--5
select substr( 'mi primer ejercicio', length('mi primer ejercicio') -4, 5) from dual

--6
select rtrim('mi primer ejercicio      ') from dual

--7
select lower('MI PRIMER EJERCICIO') FROM dual

--8

select replace('Yo los conozco', 'a','o') from dual
--9
select trim ('      Mi primer ejercicio      ') from dual

--10
select length('mi primer ejercicio en clase') from dual

--11
select ceil(21.46) from dual

--12
select floor(21.46) from dual

--13
select mod(24,5) from dual

--14
select power(8,3) from dual

--15
select trunc(142.485834,3) from dual

--16
--17
--18

--19
begin
  DBMS_OUTPUT.PUT_LINE('Hello world');
end;

--20
DECLARE 
  MENSAJE VARCHAR(20) := 'HOLA MUNDO';
begin
  DBMS_OUTPUT.PUT_LINE(MENSAJE);
end;

--21
DECLARE 
  MENSAJE VARCHAR(50):= '      HOLA MUNDO     ';
begin
  DBMS_OUTPUT.PUT_LINE(trim(MENSAJE));
end;

--22

declare 
  numero NUMBER:= &numero;
begin
  dbms_output.put_line(numero);
end;

--23
DECLARE 
  palabra1 varchar2(20):= 'Hola ';
  palabra2 varchar2(20):= 'Todo bien';
  mensaje varchar2(40);
begin
  mensaje := palabra1 || palabra2;
  dbms_output.put_line(mensaje);
end;

--24
declare 
  valor1 number := &valor1;
  valor2 number := &valor2; 
begin
  dbms_output.put_line(valor1 + valor2);
end;

--25
declare
  valor number := &valor;
begin 
  dbms_output.put_line(valor + 1);
  dbms_output.put_line(valor + 2);
  dbms_output.put_line(valor + 3);
  dbms_output.put_line(valor + 4);
  dbms_output.put_line(valor + 5);
  dbms_output.put_line(valor + 6);
  dbms_output.put_line(valor + 7);
  dbms_output.put_line(valor + 8);
  dbms_output.put_line(valor + 9);
  dbms_output.put_line(valor + 10);
end;

--26

DECLARE
     num1 number(20);
     num2 number(20);
     fibo number(20);
BEGIN
  dbms_output.put_line('Serie Fibonacci');
  num1 := 0;
  num2 := 1;
  dbms_output.put_line(num2);
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
  num1 := num2;
  num2 := fibo;
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
  num1 := num2;
  num2 := fibo;
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
  num1 := num2;
  num2 := fibo;
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
  num1 := num2;
  num2 := fibo;
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
  num1 := num2;
  num2 := fibo;
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
  num1 := num2;
  num2 := fibo;
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
  num1 := num2;
  num2 := fibo;
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
  num1 := num2;
  num2 := fibo;
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
  num1 := num2;
  num2 := fibo;
  fibo := num1 + num2;
  dbms_output.put_line(fibo);
END;
  
--27
DECLARE 
  valor number := &valor;
begin
  if valor > 10 then
    dbms_output.put_line('Si es mayor a 10');
  else
    dbms_output.put_line('No es mayor a 10');
  end if;
end;

--28
DECLARE 
  valor number := &valor;
begin
  if valor > 50 then
    dbms_output.put_line('Si es mayor a 50');
  else
    dbms_output.put_line('No es mayor a 50');
  end if;
end;

--29
DECLARE 
  valor number := &valor;
begin
  if valor > 0 then
    dbms_output.put_line(valor);
  elsif valor<0 then
    dbms_output.put_line(abs(valor));
    dbms_output.put_line(valor);
  else
    dbms_output.put_line('El valor es 0');
  end if;
end;

--30
declare
  valor1 number := &valor1;
  valor2 number := &valor2;
  suma number;
begin
  suma := valor1 + valor2;
  if suma between 2 and 50 then
    dbms_output.put_line('la suma está entre 2 y 50');
  elsif suma between 51 and 100 then
    dbms_output.put_line('la suma está entre 51 y 100');
  elsif suma between 101 and 200 then
    dbms_output.put_line('la suma está entre 101 y 200');
  else
    dbms_output.put_line('la suma no esta comprendida y es mayor a 200');
  end if;
end;

--31
declare
  valor number := &valor;
  variable_asignada varchar2(2);
begin
  CASE valor
  WHEN 1 THEN 
    variable_asignada := 'aa';
    dbms_output.put_line('El valor asignado a la variable es ' || variable_asignada);
  WHEN 2 THEN
    variable_asignada := 'bb';
    dbms_output.put_line('El valor asignado a la variable es ' || variable_asignada);
  WHEN 3 THEN
     variable_asignada := 'cc';
     dbms_output.put_line('El valor asignado a la variable es ' || variable_asignada);
  ELSE 
    variable_asignada := 'dd';
    dbms_output.put_line('El valor asignado a la variable es ' || variable_asignada);
  END CASE;
end;

--32
DECLARE
  clitabla clientes_tl%rowtype;
  sueldoact number(10);
BEGIN
  SELECT *
  INTO clitabla
  FROM clientes_tl
  WHERE provincia = 'Chaco';
  IF clitabla.sueldo_neto > 50000 THEN
    sueldoact := clitabla.sueldo_neto +2;
  ELSIF clitabla.sueldo_neto BETWEEN 30000 AND 50000 THEN
    sueldoact := clitabla.sueldo_neto + 10;
  ELSE
    sueldoact := clitabla.sueldo_neto + 14;
  END IF;
  dbms_output.put_line('Nombre: ' || clitabla.nombre ||', Apellido: ' || clitabla.apellido || ', Sueldo Actualizado: ' || sueldoact ||', Provincia: ' || clitabla.provincia);
END;
 
--33
CREATE TABLE celulares_tl AS SELECT * FROM celulares_bu;


DECLARE 
  cantmot number(10);
  cantsam number(10);
  fecha date;
BEGIN
  SELECT COUNT(*)
  INTO cantmot
  FROM celulares_tl
  WHERE celulares_tl.marca = 'Motorola';
  SELECT COUNT(*)
  INTO cantsam
  FROM celulares_tl
  WHERE celulares_tl.marca = 'Samsung';
  IF cantmot > cantsam THEN
    SELECT MIN(celulares_tl.fecha_compra)
    INTO fecha
    FROM celulares_tl
    WHERE celulares_tl.marca = 'Motorola';
    dbms_output.put_line('Fecha: ' || fecha);
  ELSIF cantmot < cantsam THEN
    SELECT MIN(celulares_tl.fecha_compra)
    INTO fecha
    FROM celulares_tl
    WHERE celulares_tl.marca = 'Samsung'; 
    dbms_output.put_line('Fecha: ' || fecha);
  ELSE
    SELECT MIN(celulares_tl.fecha_compra)
    INTO fecha
    FROM celulares_tl
    WHERE celulares_tl.marca = 'Samsung' OR celulares_tl.marca = 'Motorola' ;  
  END IF;
END;

--34
DECLARE
  clitabla clientes_tl%rowtype;
  sueldo number(15);
  datos varchar2(20);
BEGIN
  SELECT *
  INTO clitabla
  FROM clientes_tl
  WHERE sueldo_neto = (SELECT MAX(sueldo_neto)
                       FROM clientes_tl);
  CASE
    WHEN clitabla.provincia = 'Córdoba' THEN dbms_output.put_line(' Nombre: ' ||clitabla.nombre);
    WHEN clitabla.provincia = 'Tucumán' THEN dbms_output.put_line(' Dirección: ' || clitabla.direccion);
    WHEN clitabla.provincia = 'Jujuy' THEN dbms_output.put_line('Provincia:  ' || clitabla.provincia || ' Sueldo Neto: ' || clitabla.sueldo_neto || ' Apellido: ' || clitabla.apellido);
    WHEN clitabla.provincia = 'Chaco' THEN dbms_output.put_line('Provincia:  ' || clitabla.provincia || ' Sueldo Neto: ' || clitabla.sueldo_neto ||' Fecha de Nacimiento: ' || clitabla.fecha_nac);
    ELSE dbms_output.put_line('Provincia:  ' || clitabla.provincia || ' Sueldo Neto: ' || clitabla.sueldo_neto || ' DNI: ' ||clitabla.dni);
  END CASE;
END;
  
--35
DECLARE
  clitabla clientes_tl%rowtype;
  codigo number(10);
BEGIN
  codigo := &codigo;
  SELECT *
  INTO clitabla
  FROM clientes_tl
  WHERE clientes_tl.id = codigo;
  dbms_output.put_line('Nombre: ' || clitabla.nombre);
END;

--36

DECLARE
  clitabla clientes_tl%rowtype;
  codigo number(10) := &codigo;
  
BEGIN
  SELECT *
  INTO clitabla
  FROM clientes_tl
  WHERE clientes_tl.id = codigo;
  dbms_output.put_line('Nombre: ' || clitabla.nombre || ' Apellido: ' || clitabla.apellido || ' DNI: ' || clitabla.dni);
END;

--37
DECLARE
  codigo number(10);
  cant_cel number(5);
  celtable celulares_tl%rowtype;
BEGIN
  codigo := &codigo;
  SELECT COUNT(*)
  INTO cant_cel
  FROM clientes_tl
  JOIN celulares_tl ON clientes_tl.id = celulares_tl.id_cliente
  WHERE clientes_tl.id = codigo;
  CASE
    WHEN cant_cel = 1 THEN   SELECT *
                             INTO celtable
                             FROM celulares_tl
                             WHERE id_cliente = codigo;
                             dbms_output.put_line('Id: ' || celtable.id || ' Código de Area: ' || celtable.cod_area || ' Numero: ' || celtable.numero || ' Marca: ' || celtable.marca || ' Fecha de Compra: ' || celtable.fecha_compra || ' id cliente: ' || celtable.id_cliente);
    WHEN cant_cel = 0 THEN dbms_output.put_line('El cliente del codigo ingresado no posee ningun celular registrado.');
    WHEN cant_cel > 1 THEN dbms_output.put_line('El cliente del codigo ingresado posee más de un celular registrado.');
  END CASE;
END;

--38
DECLARE
  num number;
BEGIN
  num := 1;
  WHILE num <= 50 LOOP
    dbms_output.put_line('Numero: ' || num);
    num := num + 1;
  END LOOP;
END;

--39
BEGIN
  FOR i IN 1..50 LOOP
    dbms_output.put_line('Numero: ' || i);
  END LOOP;
END;

--40
DECLARE
  num number;
BEGIN
  num := 1;
  LOOP
    dbms_output.put_line('Numero: ' || num);
    num := num + 1;
    EXIT WHEN num > 50;
  END LOOP;
END;

--41
DECLARE
  multiplo number;
  num number;
BEGIN
  multiplo := 1;
  num := 1;
  WHILE multiplo <= 100 LOOP 
    multiplo := num * 3;
    IF multiplo <= 100 THEN dbms_output.put_line('Multiplo de 3: ' || multiplo);
    END IF;
    num := num + 1;
    END LOOP;
END;

--42
DECLARE
cod number;
clitable clientes_tl%rowtype;
BEGIN
  FOR i IN 1..10 LOOP
    SELECT clientes_tl.id
    INTO cod
    FROM clientes_tl
    WHERE clientes_tl.id = i;
    IF MOD(cod,2) = 0 THEN 
      SELECT *
      INTO clitable
      FROM clientes_tl
      WHERE clientes_tl.id = cod;
      dbms_output.put_line('Id: ' || clitable.id || ' Nombre: ' || clitable.nombre || ' Apellido: ' || clitable.apellido || ' DNI: ' || clitable.dni || ' Sueldo Neto: ' || clitable.sueldo_neto || ' Dirección: ' || clitable.direccion || ' Fecha de Nac: ' || clitable.fecha_nac || ' Provincia: ' || clitable.provincia);
    ELSE
      dbms_output.put_line('El codigo del cliente es impar');
    END IF;
  END LOOP;
END; 

--43
--incompleto
DECLARE
v_cli clientes_tl%rowtype;
promedio number(10,2);
v_sueldoneto clientes_tl.sueldo_neto%type;
v_idmax clientes_tl.id%type;
v_id clientes_tl.id&type;
v_idinicial clientes_tl.id%type;
v_idfinal clientes_tl.id%type;
BEGIN
  v_id := &idcliente;
  SELECT MAX(id)
  INTO v_idmax
  FROM clientes_tl;
  SELECT ROUND(AVG(sueldo_neto),2)
  INTO promedio
  FROM clientes_tl;
  SELECT sueldo_neto
  INTO v_sueldneto
  FROM clientes_tl
  WHERE id = v_id;
  IF promedio < v_sueldo_neto THEN
    v_idinicial := v_id +1;
    v_idfinal := v_id +3;
    IF v_idfinal >= v_idmax THEN
      v_idfinal := v_idmax;
      v_idinicial := v_idmax -1;
    END IF;
  ELSE
    v_idinicial := v_id -3;
    v_idfinal := v_id - 1;
    IF v_id <= 3 THEN
      v_idinicial := 1;
      v_idfinal := 2;
    END IF;
  END IF;
END;

--44
--incompleto
DECLARE
cadena varchar2(100);
var varchar2(100);
cont_voc number;
cont_cons number;
BEGIN
  cont_voc := 0;
  cont_cons := 0;
  espacios := 0;
  cadena := UPPER(&cadena);
  FOR i IN 1..LENGTH(cadena) LOOP
    var := SUBSTR(cadena, i, 1);
    IF var IN ('A', 'E', 'I', 'O', 'U') THEN cont_voc := cont_voc + 1;
    ELSIF var <> ' 'THEN cont_cons := cont_cons + 1;
    END IF;
  END LOOP;
  dbms_output.put_line('La cadena: ' || cadena || ' tiene ' || cont_voc || ' vocales y ' || cont_cons || ' consonates.');
END;


--45
DECLARE
v_num number(3):= 20;
BEGIN
  dbms_output.put_line(v_num);
  dbms_output.put_line(v_num+1);
  dbms_output.put_line(v_num+2);
  dbms_output.put_line(v_num+3);
  dbms_output.put_line(v_num+4);
  dbms_output.put_line(v_num+5);
  dbms_output.put_line(v_num+6);
  dbms_output.put_line(v_num+7);
  dbms_output.put_line(v_num+8);
  dbms_output.put_line(v_num+9);
  dbms_output.put_line(v_num+10);
END;

