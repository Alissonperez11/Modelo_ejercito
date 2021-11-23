/*REALIZAR UN CURSOR QUE PERMITA MOSTRAR LA CANTIDAD DE SOLDADOS ACEPTADOS EN 
CADA BATALLÓN, MOSTRANDO SU NOMBRE Y RANGO */
do $$
declare
		cantidad int=0;
		totalsoldado int;
		registro Record;
		cursor_soldado cursor for SELECT * FROM batallon INNER JOIN soldado ON  batallon.BATALLON_ID=soldado.BATALLON_ID
		INNER  JOIN rango on rango.rango_id = soldado.rango_id
		WHERE SOLDADO.SOLDADO_ACEPTACION=TRUE ;
begin 
		
		for totalsoldado in cursor_soldado
		loop
		cantidad = cantidad + count(totalsoldado.SOLDADO_ACEPTACION);
		
		end loop;
		
Open cursor_soldado;
Fetch cursor_soldado  into registro;
WHILE(FOUND) LOOP 
Raise notice ' Soldado_nombre: %,  Cantidad_del_SoldadosAceptados: %,  Batallón: %, Rango Actual: %  ', registro.SOLDADO_NOMBRE, cantidad, registro.batallon_alias,  registro.rango_detalle;
Fetch cursor_soldado  into registro;
END LOOP;
end $$
language 'plpgsql'; 