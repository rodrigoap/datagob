# datagob

[Visualizaciones de datos](http://www.geocoder.com.ar/datagob/)

![Audiencias](http://www.geocoder.com.ar/datagob/img/datagobAudiencias042015.png)

----------------------------------------------
audiencias.csv
```
> summary(allData)
  audiencia_id                                                             obligado_cargo         obligado_apellido              obligado_nombre
 Min.   :    1   Jefe de Gabinete de Ministros                                    : 7849   Fern<c3><a1>ndez: 7239   An<c3><ad>bal Domingo: 6181  
 1st Qu.:17122   Ministro                                                         : 4468   Timerman        : 3353   H<c3><a9>ctor Marcos : 3353  
 Median :34188   Subsecretario                                                    : 3229   Meyer           : 2679   Carlos Enrique       : 2679  
 Mean   :34393   Secretario                                                       : 2978   Arias Duval     : 2316   Martin Augusto       : 2316  
 3rd Qu.:51658   Director Nacional de Migraciones                                 : 2316   Zua<c3><ad>n    : 2313   Eduardo Antonio      : 2313  
 Max.   :69016   Ministro de Relaciones Exteriores, Comercio Internacional y Culto: 2276   Tomada          : 2053   Carlos Alfonso       : 2053  
                 (Other)                                                          :43743   (Other)         :46906   (Other)              :47964  
                                                        dependencia_descripcion
 Jefatura de Gabinete de Ministros                                  : 7849     
 Secretar<c3><ad>a de Turismo - Ministerio de Industria y Turismo   : 2516     
 Secretar<c3><ad>a de Relaciones Exteriores                         : 2392     
 Direccion Nacional de Migraciones                                  : 2316     
 Ministerio de Relaciones Exteriores, Comercio Internacional y Culto: 2276     
 Unidad Ministro                                                    : 2054     
 (Other)                                                            :47456     
                                                                          root_dependencia_descripcion   fecha_solicitud                         solic_apellido
 Jefatura de Gabinete de Ministros                                                      :13749         2005-05-02:   79   Arias Duval                   :  898  
 Ministerio de Planificaci<c3><b3>n Federal, Inversi<c3><b3>n P<c3><ba>blica y Servicios:11309         2009-03-02:   79   Zabala                        :  713  
 Ministerio de Trabajo, Empleo y Seguridad Social                                       : 5048         2005-04-04:   74   Coradazzi                     :  665  
 Ministerio de Relaciones Exteriores, Comercio Internacional y Culto                    : 4312         2005-03-01:   73   Fernandez de Kirchner         :  580  
 Ministerio de Relaciones Exteriores y Culto                                            : 3947         2005-06-01:   72   Viaje en Misi<c3><b3>n Oficial:  544  
 Presidencia de la Naci<c3><b3>n                                                        : 2771         2005-08-01:   69   Zuain                         :  522  
 (Other)                                                                                :25723         (Other)   :66413   (Other)                       :62937  
         solic_nombre                                      solic_cargo     interes_invocado                                  desc_caracter  
 Carlos        : 2329                                            : 9594   Colectivo:49209   Organismo Estatal                       :25455  
 Jorge         : 1720   -                                        : 2307   Difuso   : 2179   Particular Interesado                   :23797  
 Fernando      : 1226   Presidente                               : 1240   Propio   :15471   Representante de Persona F\303\255sica  : 1200  
 Daniel        : 1169   Director Nacional de Migraciones         :  901                     Representante de Persona Jur\303\255dica:16407  
 Eduardo       :  997   Consejo Nacional de la Mujer             :  700                                                                     
 Martin Augusto:  884   Ministro de Relaciones Exteriores y Culto:  682                                                                     
 (Other)       :58534   (Other)                                  :51435                                                                     
                                          representado_cargo representado_persona_juridica representado_nombre                                 representado_apellido
                                                   :48297    Min.   :0.000                           :52420                                               :23797    
 Consejo Nacional de la Mujer                      :  697    1st Qu.:0.000                 Fernando  :  711    Ministerio de Relaciones Exteriores y Culto: 2396    
 Vocero de Prensa del Jefe de Gabinete de Ministros:  665    Median :1.000                 Silvina   :  697    Zabala                                     :  697    
 Presidenta de la Naci<c3><b3>n                    :  548    Mean   :0.676                 Carlos    :  626    Coradazzi                                  :  665    
 Secretario de Legal y T<c3><a9>cnica              :  466    3rd Qu.:1.000                 Cristina  :  557    Fernandez de Kirchner                      :  560    
 PRESIDENTE                                        :  402    Max.   :1.000                 JOSE LUCAS:  352    Zannini                                    :  472    
 (Other)                                           :15784    NA's   :23797                 (Other)   :11496    (Other)                                    :38272    
                  fecha_audiencia                                                               lugar                             objeto     
 2010-03-25T00:00:00-03:00:   19   Despacho del Jefe de Gabinete de Ministros de la Naci<c3><b3>n.-: 1958   Institucional            : 6743  
 2008-01-04T17:00:00-02:00:   17   Casa de Gobierno                                                : 1679   Reuni<c3><b3>n de trabajo: 1997  
 2005-09-06T00:00:00-03:00:   14   CASA DE GOBIERNO                                                : 1582   Reuni<c3><b3>n de Trabajo: 1260  
 2005-12-12T00:00:00-03:00:   13   Secretar<c3><ad>a de Relaciones Exteriores                      : 1360   Reuni<c3><b3>n           : 1030  
 2005-02-24T00:00:00-03:00:   12   Despacho del Director Nacional                                  : 1270   -                        :  634  
 2005-03-09T00:00:00-03:00:   12   Despacho del se<c3><b1>or Canciller                             : 1255   Audiencia                :  419  
 (Other)                  :66772   (Other)                                                         :57755   (Other)                  :54776  
                                                               participante             comentario          desc_estado           desc_estado_no_realizado
 -                                                                   : 6425                  :45889               : 2418                      :66695      
 1                                                                   :  801   -              : 7120   Derivada    : 1870   Cancelaci\303\263n :   86      
 Jefe de Gabinete de Ministros                                       :  765   --             :  776   No Realizada:  164   Postergaci\303\263n:   39      
 Ministro de Relaciones Exteriores y Culto, D. H<c3><a9>ctor Timerman:  461   EN ANALISIS    :  596   Realizada   :62383   Suspensi\303\263n  :   39      
 2                                                                   :  344   SIN COMENTARIOS:  593   Reservada   :   24                                  
 Embajador Eduardo Zuain                                             :  264   xx             :  538                                                       
 (Other)                                                             :57799   (Other)        :11347                                                       
                      sintesis                                                          obligado_asesor_cargo         asesor_apellido         asesor_nombre  
 Institucional            : 4086                                                                   :61123                     :61123                 :61123  
 -                        : 3111   Secretario de Tur<c3><ad>smo de la Naci<c3><b3>n                : 1501     Meyer           : 2693   Carlos Enrique: 2693  
                          : 2520   Ministro de Turismo                                             : 1192     Hern<c3><a1>ndez:  371   Daniel        :  728  
 Reuni<c3><b3>n de trabajo: 1204   Subsecretario de Turismo                                        :  313     Aguilera        :  351   Luis Ricardo  :  133  
 Temas Varios             : 1167   Director Nacional de Orientaci<c3><b3>n y Formaci<c3><b3>n Prof.:  244     Palacio         :  133   Mariana       :  120  
 Reuni<c3><b3>n de Trabajo: 1006   Interventor Snmp S.E.                                           :  133     Gras Buscetto   :  119   Marcela Paola :  106  
 (Other)                  :53765   (Other)                                                         : 2353     (Other)         : 2069   (Other)       : 1956  
                                                            asesor_cargo  
                                                                  :61123  
 Ministro de Turismo                                              : 2693  
 Subsecretario Pol<c3><ad>ticas de Empleo y Formaci<c3><b3>n Prof.:  371  
 Secretario de Turismo                                            :  351  
 Interventor Snmp S.E.                                            :  133  
 Directora Nacional de Juventud                                   :  119  
 (Other)                                                          : 2069  
 ```
----------------------------------------------
Fuente: [Datos Argentina](http://datos.gob.ar)
