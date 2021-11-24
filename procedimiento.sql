/*PROCEDIMIENTO QUE PERMITA DEVOLVER A LOS SOLDADOS DE ACUERDO A SU RANGO
CON EL BATALLÓN QUE PERTENECEN, y CUANTO LA FECHA EN LA QUE ENLISTO EN EL EJÉRCITO */

CREATE OR REPLACE FUNCTION DEVOLVER_SOLDADOS
		(IN RANGO_OPCION VARCHAR(30) default 'soldado', 
		 OUT RANGO_DETALLE VARCHAR(30),
		 OUT SOLDADO_NOMBRE VARCHAR(20),
		 OUT SOLDADO_APELLIDO VARCHAR(20), 
		 OUT BATALLON_NUMERO VARCHAR(20),
		 OUT SOLDADO_ENLISTACION DATE
		) 
		 RETURNS setof record AS
$BODY$
BEGIN 
IF RANGO_OPCION ='soldado' THEN 
return query SELECT 
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='soldado';
END IF;
IF RANGO_OPCION ='cabo segundo' THEN 
return query SELECT 
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='cabo segundo';
END IF;
IF RANGO_OPCION ='cabo primero' THEN 
return query SELECT 
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='cabo primero';
END IF;
IF RANGO_OPCION ='sargento segundo' THEN 
return query SELECT 
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='sargento segundo';
END IF;
IF RANGO_OPCION ='sargento primero' THEN 
return query SELECT 
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='sargento primero';
END IF;
IF RANGO_OPCION ='suboficial mayor' THEN 
return query SELECT 
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='suboficial mayor';
END IF;
IF RANGO_OPCION ='subteniente' THEN 
return query SELECT 
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='subteniente';
END IF;
IF RANGO_OPCION ='teniente' THEN 
return query SELECT 
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='teniente';
END IF;
IF RANGO_OPCION ='coronel' THEN 
return query SELECT 
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='coronel';
END IF;
IF RANGO_OPCION ='general del ejército' THEN 
return query SELECT
rango.rango_detalle,
soldado.soldado_nombre,
soldado.soldado_apellido,
batallon.batallon_alias,
soldado.soldado_fechaenlistacion
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
where rango.rango_detalle='general del ejército';
END IF;
return;
END;
$BODY$
language 'plpgsql'; 

SELECT * FROM public.DEVOLVER_SOLDADOS('soldado');
