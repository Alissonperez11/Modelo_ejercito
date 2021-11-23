
/*==============================================================*/
/* Table: Batallon                                              */
/*==============================================================*/
create table Batallon (
batallon_id          INT4                 not null,
batallon_numero      VARCHAR(20)          null,
batallon_alias       VARCHAR(40)          null,
constraint PK_BATALLON primary key (batallon_id)
);

/*==============================================================*/
/* Index: Batallon_PK                                           */
/*==============================================================*/
create unique index Batallon_PK on Batallon (
batallon_id
);

/*==============================================================*/
/* Table: Castigo                                               */
/*==============================================================*/
create table Castigo (
castigo_id           INT4                 not null,
batallon_id          INT4                 not null,
castigo_fechainicio  DATE                 null,
castigo_fechafinal   DATE                 null,
castigo_estado       BOOL                 null,
constraint PK_CASTIGO primary key (castigo_id)
);

/*==============================================================*/
/* Index: Castigo_PK                                            */
/*==============================================================*/
create unique index Castigo_PK on Castigo (
castigo_id
);

/*==============================================================*/
/* Index: Relationship_13_FK                                    */
/*==============================================================*/
create  index Relationship_13_FK on Castigo (
batallon_id
);

/*==============================================================*/
/* Table: Entrenamiento                                         */
/*==============================================================*/
create table Entrenamiento (
entrenamiento_id     INT4                 not null,
batallon_id          INT4                 not null,
entrenamiento_fechainicio DATE                 null,
entrenamiento_fechafinal DATE                 null,
entrenamiento_calificacion VARCHAR(40)          null,
constraint PK_ENTRENAMIENTO primary key (entrenamiento_id)
);

/*==============================================================*/
/* Index: Entrenamiento_PK                                      */
/*==============================================================*/
create unique index Entrenamiento_PK on Entrenamiento (
entrenamiento_id
);

/*==============================================================*/
/* Index: Relationship_12_FK                                    */
/*==============================================================*/
create  index Relationship_12_FK on Entrenamiento (
batallon_id
);

/*==============================================================*/
/* Table: instrumentos                                          */
/*==============================================================*/
create table instrumentos (
instrumentos_id      INT4                 not null,
mision_id            INT4                 not null,
instrumentos_nombre  VARCHAR(30)          null,
instrumentos_estado  VARCHAR(20)          null,
constraint PK_INSTRUMENTOS primary key (instrumentos_id)
);

/*==============================================================*/
/* Index: instrumentos_PK                                       */
/*==============================================================*/
create unique index instrumentos_PK on instrumentos (
instrumentos_id
);

/*==============================================================*/
/* Index: Relationship_5_FK                                     */
/*==============================================================*/
create  index Relationship_5_FK on instrumentos (
mision_id
);

/*==============================================================*/
/* Table: mision                                                */
/*==============================================================*/
create table mision (
mision_id            INT4                 not null,
batallon_id          INT4                 not null,
mision_nombre        VARCHAR(30)          null,
mision_descripcion   VARCHAR(30)          null,
mision_fechainicio   DATE                 null,
mision_fechafinal    DATE                 null,
constraint PK_MISION primary key (mision_id)
);

/*==============================================================*/
/* Index: mision_PK                                             */
/*==============================================================*/
create unique index mision_PK on mision (
mision_id
);

/*==============================================================*/
/* Index: Relationship_8_FK                                     */
/*==============================================================*/
create  index Relationship_8_FK on mision (
batallon_id
);

/*==============================================================*/
/* Table: peticion_ascenso                                      */
/*==============================================================*/
create table peticion_ascenso (
peticion_ascenso_id  INT4                 not null,
rango_id             INT4                 not null,
soldado_id           INT4                 not null,
peticion_ascenso_fecha DATE                 null,
peticion_ascenso_observaciones VARCHAR(40)          null,
peticion_ascenso_aprobacion BOOL                 null,
constraint PK_PETICION_ASCENSO primary key (peticion_ascenso_id)
);

/*==============================================================*/
/* Index: peticion_ascenso_PK                                   */
/*==============================================================*/
create unique index peticion_ascenso_PK on peticion_ascenso (
peticion_ascenso_id
);

/*==============================================================*/
/* Index: Relationship_9_FK                                     */
/*==============================================================*/
create  index Relationship_9_FK on peticion_ascenso (
rango_id
);

/*==============================================================*/
/* Index: Relationship_10_FK                                    */
/*==============================================================*/
create  index Relationship_10_FK on peticion_ascenso (
soldado_id
);

/*==============================================================*/
/* Table: rango                                                 */
/*==============================================================*/
create table rango (
rango_id             INT4                 not null,
rango_detalle        VARCHAR(30)          null,
rango_descripcion    VARCHAR(40)          null,
rango_añonecesario   INT4                 null,
rango_anterior       INT4                 null,
rango_pruebas        VARCHAR(30)          null,
constraint PK_RANGO primary key (rango_id)
);

/*==============================================================*/
/* Index: rango_PK                                              */
/*==============================================================*/
create unique index rango_PK on rango (
rango_id
);

/*==============================================================*/
/* Table: sancion                                               */
/*==============================================================*/
create table sancion (
sancion_id           INT4                 not null,
soldado_id           INT4                 not null,
falta_disciplinarias_id INT4                 not null,
sancion_motivo       VARCHAR(40)          null,
sancion_fechaincidente DATE                 null,
sancion_fechainicio  DATE                 null,
sancion_fechafinal   DATE                 null,
constraint PK_SANCION primary key (sancion_id)
);

/*==============================================================*/
/* Index: sancion_PK                                            */
/*==============================================================*/
create unique index sancion_PK on sancion (
sancion_id
);

/*==============================================================*/
/* Index: Relationship_6_FK                                     */
/*==============================================================*/
create  index Relationship_6_FK on sancion (
soldado_id
);

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create  index Relationship_7_FK on sancion (
falta_disciplinarias_id
);

/*==============================================================*/
/* Table: soldado                                               */
/*==============================================================*/
create table soldado (
soldado_id           INT4                 not null,
rango_id             INT4                 not null,
batallon_id          INT4                 null,
soldado_cedula       VARCHAR(10)          null,
soldado_nombre       VARCHAR(20)          null,
soldado_apellido     VARCHAR(20)          null,
soldado_fechanacimiento DATE                 null,
soldado_fechaenlistacion DATE                 null,
soldado_tatuaje      BOOL                 null,
soldado_aceptacion   BOOL                 null,
constraint PK_SOLDADO primary key (soldado_id)
);

/*==============================================================*/
/* Index: soldado_PK                                            */
/*==============================================================*/
create unique index soldado_PK on soldado (
soldado_id
);

/*==============================================================*/
/* Index: Relationship_1_FK                                     */
/*==============================================================*/
create  index Relationship_1_FK on soldado (
rango_id
);

/*==============================================================*/
/* Index: Relationship_2_FK                                     */
/*==============================================================*/
create  index Relationship_2_FK on soldado (
batallon_id
);

/*==============================================================*/
/* Table: tipofalta_disciplinarias                              */
/*==============================================================*/
create table tipofalta_disciplinarias (
falta_disciplinarias_id INT4                 not null,
faltadisci_gravedad  VARCHAR(30)          null,
constraint PK_TIPOFALTA_DISCIPLINARIAS primary key (falta_disciplinarias_id)
);

/*==============================================================*/
/* Index: tipofalta_disciplinarias_PK                           */
/*==============================================================*/
create unique index tipofalta_disciplinarias_PK on tipofalta_disciplinarias (
falta_disciplinarias_id
);

alter table Castigo
   add constraint FK_CASTIGO_RELATIONS_BATALLON foreign key (batallon_id)
      references Batallon (batallon_id)
      on delete restrict on update restrict;

alter table Entrenamiento
   add constraint FK_ENTRENAM_RELATIONS_BATALLON foreign key (batallon_id)
      references Batallon (batallon_id)
      on delete restrict on update restrict;

alter table instrumentos
   add constraint FK_INSTRUME_RELATIONS_MISION foreign key (mision_id)
      references mision (mision_id)
      on delete restrict on update restrict;

alter table mision
   add constraint FK_MISION_RELATIONS_BATALLON foreign key (batallon_id)
      references Batallon (batallon_id)
      on delete restrict on update restrict;

alter table peticion_ascenso
   add constraint FK_PETICION_RELATIONS_SOLDADO foreign key (soldado_id)
      references soldado (soldado_id)
      on delete restrict on update restrict;

alter table peticion_ascenso
   add constraint FK_PETICION_RELATIONS_RANGO foreign key (rango_id)
      references rango (rango_id)
      on delete restrict on update restrict;

alter table sancion
   add constraint FK_SANCION_RELATIONS_SOLDADO foreign key (soldado_id)
      references soldado (soldado_id)
      on delete restrict on update restrict;

alter table sancion
   add constraint FK_SANCION_RELATIONS_TIPOFALT foreign key (falta_disciplinarias_id)
      references tipofalta_disciplinarias (falta_disciplinarias_id)
      on delete restrict on update restrict;

alter table soldado
   add constraint FK_SOLDADO_RELATIONS_RANGO foreign key (rango_id)
      references rango (rango_id)
      on delete restrict on update restrict;

alter table soldado
   add constraint FK_SOLDADO_RELATIONS_BATALLON foreign key (batallon_id)
      references Batallon (batallon_id)
      on delete restrict on update restrict;

