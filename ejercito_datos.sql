/*DATOS TABLA RANGO*/
INSERT INTO rango values(1,'soldado','soldado raso',0,NULL,'pruebas físicas');
INSERT INTO rango values(2,'cabo segundo','superior de soldado',3,1,'pruebas físicas y teóricas');
INSERT INTO rango values(3,'cabo primero','primero grado de cabo',4,2,'pruebas físicas y teóricas');
INSERT INTO rango values(4,'sargento segundo','antecede al sargento 1',6,3,'pruebas físicas y teóricas');
INSERT INTO rango values(5,'sargento primero','antecede al suboficial segundo',7,4,'pruebas físicas y teóricas');
INSERT INTO rango values(6,'suboficial mayor','antecede al subteniente',30,5,'pruebas físicas y teóricas');
INSERT INTO rango values(7,'subteniente','antecede al teniente',45,6,'pruebas físicas y teóricas');
INSERT INTO rango values(8,'teniente','antecede al coronel',48,7,'varios años como subteniente');
INSERT INTO rango values(9,'coronel','antecede al coronel',54,8,'varios años como teniente');
INSERT INTO rango values(10,'general del ejército','mayor fuerza militar',60,9,'oficiales más antiguos');

/*DATOS TABLA SOLDADO*/

INSERT INTO tipofalta_disciplinarias values(1,'faltas leves');
INSERT INTO tipofalta_disciplinarias values(2,'faltas graves');
INSERT INTO tipofalta_disciplinarias values(3,'faltas atentatorias');

/*DATOS TABLA BATALLON*/

INSERT INTO batallon values(1,'batallón 1','paquisha1');
INSERT INTO batallon values(2,'batallón 2','zamora1');

/*DATOS TABLA SOLDADO*/

INSERT INTO soldado values(1,1,1,'1414741258','Hugo','García','1997-10-01','2020-10-01',FALSE,TRUE);
INSERT INTO soldado values(2,1,1,'1313544711','Alberto','Pico','1996-11-05','2020-10-01',TRUE,TRUE);
INSERT INTO soldado values(3,2,1,'1316205515','Daniel','Loor','1992-11-05','2015-04-02',TRUE,TRUE);
INSERT INTO soldado values(4,1,NULL,'1312866567','David','Bravo','2001-04-24','2020-10-01',TRUE,FALSE);
INSERT INTO soldado values(5,10,1,'1315431111','Juan','Preciado','1962-04-24','1970-03-01',FALSE,TRUE);
INSERT INTO soldado values(6,1,2,'1314041208','Steven','Zamora','1998-10-01','2020-05-01',FALSE,TRUE);
INSERT INTO soldado values(7,3,2,'1313501510','Walter','Vera','1992-11-01','2020-02-01',FALSE,TRUE);
INSERT INTO soldado values(8,10,2,'1112202512','Jhon','Wilson','1960-11-01','1970-03-06',FALSE,TRUE);


/*DATOS TABLA SANCION*/

INSERT INTO sancion values(1,2,1,'Omitir saludo ante un superior','2021-11-02','2021-11-03','2021-11-17');

/*DATOS TABLA ENTRENAMIENTO*/

INSERT INTO entrenamiento values(1,1,'2021-01-01','2021-01-07','buena');
INSERT INTO entrenamiento values(2,1,'2021-03-01','2021-03-07','excelente');
INSERT INTO entrenamiento values(3,2,'2022-01-20','2022-02-25','regular');
INSERT INTO entrenamiento values(4,2,'2022-03-21','2022-03-30','regultar');
INSERT INTO entrenamiento values(5,1,'2022-06-05','2022-07-05','regular');
INSERT INTO entrenamiento values(6,1,'2022-08-05','2022-09-05','regultar');

/*DATOS TABLA MISION*/

INSERT INTO mision values(1,1,'Misión Frontera','Controlar paso de vehículos','2021-04-01','2021-04-07');

/*DATOS EN LA TABLA INSTRUMENTOS*/

INSERT INTO instrumentos values(1,1,'señalizaciones','dañado');
INSERT INTO instrumentos values(2,1,'armas','sin usar');

/*DATOS EN LA TABLA PETICION_ASCENSO*/

INSERT INTO peticion_ascenso values(1,1,1,'2021-04-18','Excelente soldado',TRUE);

/*DATOS CASTIGO*/

INSERT INTO castigo values (1,2,'2022-05-05','2022-06-05',TRUE);
INSERT INTO castigo values(2,1,'2022-10-05','2022-11-05',TRUE);
















