/*Mostrar el histórico de misiones de los soldados por año. 
En una columna debe aparecer el año, en otra columna debe aparecer 
la duración en meses y días de a la misión, en otra columna la cantidad 
de soldados que participaron, el nombre del batallón*/
select
mision.mision_nombre,
batallon.batallon_alias,
extract (YEAR from mision.mision_fechainicio) as año,
age(mision.mision_fechafinal,mision.mision_fechainicio) as duracionmision,
sum(soldado.batallon_id) as cantidadsoldados
from mision 
inner join batallon on batallon.batallon_id = mision.batallon_id
inner join soldado on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
group by batallon.batallon_alias,mision.mision_nombre, mision.mision_fechainicio,
mision.mision_fechafinal

/*Mostrar histórico de castigo de todos los soldados. 
En una columna los soldado castigados, 
al batallon que pertenecen y su alias, 
el entrenamiento cuando inicio y cuando finalizo 
el tiempo que duro el castigo por entrenamiento por las calificaciones regulares 
solo mostrar los castigos completados, desde el más antiguo 
hasta el actual.*/
select
soldado.soldado_nombre, soldado.soldado_apellido,
batallon.batallon_numero,batallon.batallon_alias,
entrenamiento.entrenamiento_fechainicio,entrenamiento.entrenamiento_fechafinal,
age(castigo.castigo_fechafinal, castigo.castigo_fechainicio) from castigo 
inner join batallon on batallon.batallon_id = castigo.batallon_id
inner join soldado on batallon.batallon_id = soldado.batallon_id
inner join rango on rango.rango_id = soldado.rango_id
inner join entrenamiento on entrenamiento.batallon_id = batallon.batallon_id
where castigo.castigo_estado=TRUE
order by entrenamiento.entrenamiento_fechainicio

/*MOSTRAR LA SANCIONES COMETIDAS POR SOLDADO CON LA INFORMACIÓN,
EL TIPO DE FALTA QUE COMETIÓ, LA FECHA DEL INCIDENTE, EL TIEMPO QUE DURO LA SANCIÓN,
AL BATALLON QUE PERTENECE*/
select
tipofalta_disciplinarias.faltadisci_gravedad,
sancion.sancion_motivo,
sancion.sancion_fechaincidente,
age(sancion.sancion_fechafinal,sancion.sancion_fechainicio),
soldado.soldado_nombre,
batallon.batallon_alias
from soldado
inner join batallon on batallon.batallon_id = soldado.batallon_id
inner join sancion on sancion.soldado_id = soldado.soldado_id
inner join tipofalta_disciplinarias on tipofalta_disciplinarias.falta_disciplinarias_id = sancion.falta_disciplinarias_id


/*MOSTRAR LOS SOLDADOS CON SU RESPECTIVO RANGO, LA PRUEBA NECESARIA PARA LLEGAR A ESE RANGO ,
EN ORDEN DESCENDENTE LA FECHA QUE INGRESO AL EJÉRCITO, SI POSEE O NO UN TATUAJE
TATUAJE*/

SELECT 
soldado.soldado_nombre,
soldado.soldado_apellido,
rango.rango_detalle as rango_actual,
peticion_ascenso.peticion_ascenso_observaciones,
peticion_ascenso.peticion_ascenso_fecha,
rango.rango_añonecesario,
rango.rango_pruebas
FROM peticion_ascenso
inner join soldado 
on peticion_ascenso.soldado_id = peticion_ascenso.soldado_id
inner join rango on rango.rango_id = soldado.rango_id
order by rango.rango_id

