/*TRIGGER QUE NO PERMITA INGRESAR A UN SOLDADO MENOR DE 17 AÑOS DE ACUERDO
A LA LEYES*/
CREATE OR REPLACE FUNCTION trigger_edad() RETURNS TRIGGER 
AS
$trigger_edad$
 DECLARE
 BEGIN
 if (date_part('year',age(NEW.SOLDADO_FECHANACIMIENTO))) <17 then 
 	RAISE EXCEPTION 'La edad del soldado es menor a 17 años';
	END if;
	RETURN NEW;
END;
$trigger_edad$
LANGUAGE plpgsql;
create trigger trigger_edad before insert or update
on soldado for EACH ROW
execute procedure trigger_edad();

/*DATO PRUEBA*/
INSERT INTO soldado values(30,1,1,'1312222567','Julio','Miller','2005-04-24','2020-10-01',TRUE,TRUE);
