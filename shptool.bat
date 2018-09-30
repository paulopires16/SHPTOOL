@echo off
chcp 1252>nul

REM Ferramenta de interacao com shapefiles

rem  -------------------------------------------------------------------------------

rem help                                                                                                        									# print de todas as funcoes
rem helpbat                                                                                                    										# cria o ficheiro shptool.bat

rem getShpInfo shpFileIn																															# obtem informacao da shapefile
rem backupdir dirIn dirOut																															# cria o backup de uma diretoria (ex.nomeDirBackup_2017.08.14_11.27.04)

rem addfield shpDirFileIn name C,10,0 ruina																											# adiciona um atributo (name) do tipo string com o valor (ruina) # fieldType ('N,10,0'-ints, 'F,10,2'-logical, 'C,100,0'-strings, 'D,8,0'-datetime)
rem changefield shpDirFileIn name detalhes																											# altera o nome do atributo (name) para (detalhes)
rem removefield shpDirFileIn name																													# remove todos os atributos (*), o atributo (name), atributo e para a direita (name*), atributo e para a esquerda (*name)
rem extractfield shpDirFileIn Color 12																												# extrai para uma shapefile todas features cujo valor do atributo (Color) = 12
rem extractdellfield shpDirFileIn Color 12																											# extrai para uma shapefile todas features cujo valor do atributo (Color) = 12 (remove do original)
rem editrecord shpDirFileIn Color 12 11																												# edita todas as features cujo valor do atributo (Color) = 12 para 11
rem editrecordlist shpDirFileIn source txtFile																										# edita todas as features cujo valor do atributo (source) tem uma correspondencia no ficheiro txt

rem updatefieldbyangle shpDirFileIn labelx labely rotangle 200																						# edita os atributos (labelx e labely) consoante  o angulo (rotangle) e a distancia (dist)
rem duplicatefield shpDirFileIn fieldname newfieldname																								# copia o atributo (fieldname) para outro atributo (newfieldname)
rem concatenatefield shpDirFileIn fieldname1 fieldname2 newfieldname																				# copia os atributos (fieldname1+fieldname2) para outro atributo (newfieldname)

rem removeaccentsfields	shpDirFileIn                          																						# remove todos os acentos do nome dos atributos
rem removeaccentsrecords shpDirFileIn                         																						# remove todos os acentos do valor dos atributos

rem clipvector shpDirFileIn shpFileClipIn																											# faz o corte de uma shapefile por uma outra shapefile de corte (area)
rem clipvector shpDirFileIn 246806,327910,251336,330488																								# faz o corte de uma shapefile pelas 4 coordenadas de uma area (x_cantoSupEsq,y_cantoSupEsq,x_cantoInfDir,y_cantoInfDir)
rem clipvectoroverlap shpDirFileIn shpFileClipIn																									# faz o corte (overlap) de uma shapefile por uma outra shapefile de corte (area)
rem clipvectoroverlap shpDirFileIn 246806,327910,251336,330488																						# faz o corte (overlap) de uma shapefile pelas 4 coordenadas de uma area (x_cantoSupEsq,y_cantoSupEsq,x_cantoInfDir,y_cantoInfDir)

rem createBuffer shpDirFileIn dist capStyle joinStyle boolean																						# cria um buffer com distancia (dist) em modo capStyle(round:1, flat:2, square:3) e joinStyle(round:1, mitre:2, bevel:3) sem (0) ou com (1) a uniao de geometrias que se intersectam
rem createblankshp shpFileOut Point crsCode																											# cria uma shapefile vazia # geomType (Point, LineString, Polygon) # crsCode (optional) (25k_M888, 25k_M889Z25N, 25k_M889Z26N, 25k_P821, 25k_WGS84MIL, 50k_M783, 250k_M586, 500k_AIR)

rem shp2geojson shpDirFileIn 																														# converte uma shapefile em geojson (visualizacao web ou txt)              
rem geojson2shp jsonFileIn crsCode																													# converte geojson em shapefile # crsCode (25k_M888, 25k_M889Z25N, 25k_M889Z26N, 25k_P821, 25k_WGS84MIL, 50k_M783, 250k_M586, 500k_AIR)														# converte poligonos em linhas

rem shp2kml	shpDirFileIn																															# converte uma shapefile em kml (visualizacao Google Earth) (wgs84)
rem kml2shp kmlFileIn																																# converte um kml em shapefile (wgs84)

rem mdb2shp mdbfile "table:selectTableName" "fieldSelectName:fieldSelectValue" "x:fieldX" "y:fieldY" "z:fieldZ" "Fotografia:field1,field2"   		# converte uma tabela mdb em shapefile    
rem shp2mdb shpDirFile 																																# converte uma shapefile numa tabela mdb
rem shp2mdbedit shpDirFile crsCode tpntypefile mdbfile tableName fieldName fieldValue																# edita uma tabela mdb com o valor de uma shapefile # crsCode (25k_M888, 25k_M889Z25N, 25k_M889Z26N, 25k_P821, 25k_WGS84MIL, 50k_M783, 250k_M586, 500k_AIR)

rem shpmergetwoshp shpFile1 shpFile2																												# faz o merge (update) da shpFile2 na shpFile1
rem shpmerge shpDirIn																																# cria 3 shapefiles (ponto, linha e area) de um conjunto de shapefiles existentes numa diretoria
rem shpmergesubdir shpDirIn																															# cria 3 shapefiles (ponto, linha e area) de um conjunto de shapefiles existentes numa diretoria e suas subdiretorias
rem shpmergesubdirfeature shpDirIn																													# cria 1 shapefile, por feature, com toda a informacao de um conjunto de shapefiles existentes numa diretoria e suas subdiretorias da mesma feature

rem multi2simple shpDirFileIn																														# converte multigeometrias em geometrias simples (pontos, linhas e areas) de uma shapefile ou um conjunto de shapefiles numa diretoria

rem setAngle shpFileIn fieldName																													# calcula o angulo de uma geometria

rem duplicPoint pointShpFileIn lineShpFileIn distanceToFind distBuffer																				# duplicar pontos com interpolacao com uma linha
 
rem classbridge pontesIn patrib1 viasIn vatrib1 vatrib2																								# classifica as pontes (intersecao com vias) e vias (intersecao com pontes estreitas, vaus e tuneis)

rem area2point shpFileIn areaValue																													# converte todas os poligonos em pontos (area < areaValue)

rem delPoint shpFileIn pointShpFileIn2 dist																											# elimina pontos (pointShpFileIn2) à distancia (dist) dos pontos (pointShpFileIn1)
 
rem flagPointLine shpFileIn lineShpFileIn dist																										# obtem todos os pontos a uma determinada distancia de uma via (flag)
rem moveline2line lineShpFile2move lineShpFileRef 5.875 boolean																						# move linhas (lineShpFile2move) à distancia (dist) relativamente a outras linhas (lineShpFileRef). boolean: 1 (paralela a linha a mover) ou 0 (paralela a linha de referencia)

rem delSpotHeight shpFileIn dist																													# apaga os pontos de cota (de cota inferior) numa distancia (dist) introduzida
rem delSpotHeightinv shpFileIn dist																													# apaga os pontos de cota (de cota superior) numa distancia (dist) introduzida

rem joinLine shpFileIn																																# faz o merge de todas as linhas que se intersectam
rem splitLine shpFileIn																																# faz o corte das linhas nas intersecoes
rem segmentLine shpFileIn																															# faz a segmentacao das linhas pelos seus vertices

rem txtbroke shpFileIn fielName fontFile sizeLetter spacingLetter spacingWord																		# parte os textos por palavras, criando um ponto por cada palavra (criados atributos: idbk, nomebk, posbk)

rem validencode shpFileIn																															# converte a codificacao para UTF-8 (fieldsNames e fieldsValues) > _validencode.shp e _validencode__error.shp																						# 

rem delpointarea shpFileIn polyShpFile																												# elimina todos os pontos dentro das area
rem delpointline shpFileIn lineShpFile dist																											# elimina todos os pontos cuja distancia à linha é inferior a dist
 
rem selectmaxheight shpFileIn lineShpFile																											# seleciona os pontos de cota nos cabecos
rem selectminheight shpFileIn lineShpFile																											# seleciona os pontos de cota nas depressoes

rem breakedge shpFileIn																																# adiciona vertices em todos as intersecoes, valido para LineStrings e Polygons

rem changedim shpDirFileIn																															# altera a dimensao da shapefile (2d>3d ou 3d>2d) 

rem shapescale shpFileIn area dim boolean																											# escala (maior que 0 aumenta, menor que 0 diminui) geometrias (Polygons) menores/maiores que uma area, segundo um valor (dim), com opcao merge (1/0) se intersetadas

rem flagminarea shpFileIn areaMinima																												# obtem todas as areas minimas para validacao (flag)
rem flagmaxarea shpFileIn areaMinima																												# obtem todas as areas maximas para validacao (flag)
rem flagminlength shpFileIn compMinimo																												# obtem todos os comprimentos minimos para validacao (flag)

rem addcoordinates shpFileIn coordx coordy coordz F,40,3																							# exporta as coordenadas (X, Y e Z) de Pontos para colunas (fields)

rem simplify shpFileIn tolerance																													# simplifica geometrias segundo uma tolerancia (float)

rem fieldcalc shpFileIn fieldName +124.8																											# update do valor do atributo (fieldName) com um dado calculo (+,-,x,:)

rem xlsx2shp xlsxFile																																# converte XLSX/CSV em SHP. Exemplo de geometrias > nameField: XYZ_Point, nameValue: 0 0 1 | nameField: XYZ_LINESTRING, nameValue: 0 0 1,0 1 1,1 1 1 | nameField: XYZ_POLYGON nameValue: 0 0 1,0 1 1,1 1 1,0 0 1 ou ainda x | y | z | N,10,0;fieldName1 | F,10,2;fieldName2 | C,100,0;fieldName3 | D,8,0;fieldName4
rem shp2xlsx shpFile boolean																														# converte shapefile em XLSX (Pontos, Linhas e Areas) com 1 (C,100;source) ou 0 (source) do tiopo no nome dos atributos

rem createIndex shpDirFileIn																														# cria um indice para a shapefile (auto-incremento em todas as features)

rem updatefieldbyangle shpFileIn labelx labely rotangle dist																						# update do valor labelx e labely segundo um angulo (rotangle) e distancia (dist)

rem delminarea shpFile area																															# elimina as areas inferiores a uma determinada area (area)

rem polygon2line shpFile																															# converte Polygons em LineStrings
rem polygon2linesegment shpFile																														# converte Polygons em segmentos de LineStrings, uma linha por cada aresta do Polygon

rem orderfield shpDirFileIn																															# ordena os atributos pelo nome
rem orderfieldbylist shpDirFileIn txtFile																											# ordena os atributos por uma lista de um ficheiro txt

rem backupdir dirFileIn dirFileOut																													# faz um backup da diretoria dirFileIn para dirFileOut
rem shpzip shpDirIn																																	# faz o zip de todas as shapefiles na diretoria dirFileIn individualmente

rem checkstring shpfile fieldname txtdic																											# verificar o texto completo de um atributo
rem checksubstringkm shpfile fieldname txtdic																										# verificar o texto completo de KM de um atributo
rem correctdest shpfile fieldname																													# corrige o texto de KM de um atributo
rem deltxtspace shpfile fieldname																													# elimina espacos em branco que existem no texto (inicio, fim e duplicados) de um atributo
rem replacesubstring shpfile fieldname substringin substringout																						# substitui uma substring num texto de um atributo


rem  -------------------------------------------------------------------------------

REM EXECUTAVEL OPCAO FILEIN ...

rem CALL "C:\cpc_apps\shptool\shptool.exe" help
rem CALL "C:\cpc_apps\shptool\shptool.exe" helpbat

rem CALL "C:\cpc_apps\shptool\shptool.exe" getShpInfo D:\CPC\shp\A_Casa.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" backupdir D:\temp\processo D:\temp

rem CALL "C:\cpc_apps\shptool\shptool.exe" addfield  D:\CPC\shp\A_Casa.shp descricao C,10,0 ruina
rem CALL "C:\cpc_apps\shptool\shptool.exe" changefield  D:\CPC\shp\A_Casa.shp descricao ruina
rem CALL "C:\cpc_apps\shptool\shptool.exe" removefield D:\CPC\shp\A_Casa.shp descricao
rem CALL "C:\cpc_apps\shptool\shptool.exe" extractfield D:\CPC\shp\A_Casa.shp Color 12
rem CALL "C:\cpc_apps\shptool\shptool.exe" extractdellfield D:\CPC\shp\A_Casa.shp Color 12
rem CALL "C:\cpc_apps\shptool\shptool.exe" editrecord D:\temp\tpn_edi.shp nome "Q.#ª da Alma Cheia" "Q.ta da Alma Cheia"
rem CALL "C:\cpc_apps\shptool\shptool.exe" editrecordlist D:\temp\p_vgs_total_02.shp source D:\temp\lista_attrs.txt

rem CALL "C:\cpc_apps\shptool\shptool.exe" updatefieldbyangle D:\CPC\shp\P_vias.shp labelx labely rotangle 200
rem CALL "C:\cpc_apps\shptool\shptool.exe" duplicatefield D:\temp\A_verdes.shp source newsource
rem CALL "C:\cpc_apps\shptool\shptool.exe" concatenatefield D:\temp\A_verdes.shp source1 source2 newsource

rem CALL "C:\cpc_apps\shptool\shptool.exe" removeaccentsfields D:\CPC\shp\A_Casa.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" removeaccentsrecords D:\CPC\shp\A_Casa.shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" clipvector D:\CPC\shp\A_Casa.shp D:\CPC\shp\A_Clip.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" clipvector D:\temp\A_Arvoredo_denso_validgeom.shp 312000,520000,328000,510000
rem CALL "C:\cpc_apps\shptool\shptool.exe" clipvectoroverlap D:\CPC\shp\A_Casa.shp D:\CPC\shp\A_Clip.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" clipvectoroverlap D:\temp\A_Arvoredo_denso_validgeom.shp 312000,520000,328000,510000

rem CALL "C:\cpc_apps\shptool\shptool.exe" createBuffer D:\CPC\shp\L_aceiros_lat.shp 12 2 1 0
rem CALL "C:\cpc_apps\shptool\shptool.exe" createblankshp D:\CPC\shp\P_Duvida.shp Point 25k_WGS84MIL

rem CALL "C:\cpc_apps\shptool\shptool.exe" shp2geojson D:\CPC\shp\A_Casa.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" geojson2shp D:\CPC\shp\A_Casa.json 25k_WGS84MIL

rem CALL "C:\cpc_apps\shptool\shptool.exe" shp2kml D:\CPC\shp\A_Casa.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" kml2shp D:\CPC\shp\A_Casa.kml	

rem CALL "C:\cpc_apps\shptool\shptool.exe" mdb2shp "D:\temp\_vgs_Dlx_top.mdb" "table:vgs" "Folha 1/25000:13" "x:Gauss M" "y:Gauss P" "z:Cota_terreno" "Fotografia:Folha 1/25000,ID,NOME"
rem CALL "C:\cpc_apps\shptool\shptool.exe" shp2mdb D:\CPC\shp\P_Ponto_cotado.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" shp2mdbedit "D:\mdbfile\tpn_Export.shp" 25k_WGS84MIL "D:\mdbfile\lista_toponimos.txt" "D:\mdbfile\toponimosporcarta.mdb" Continente folha 500

rem CALL "C:\cpc_apps\shptool\shptool.exe" shpmergetwoshp D:\CPC\shp\L_vias.shp D:\CPC\shp\L_pontes.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" shpmerge D:\CPC\shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" shpmergesubdir D:\CPC\shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" shpmergesubdirfeature D:\CPC\shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" multi2simple D:\CPC\shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" setAngle D:\CPC\shp angle

rem CALL "C:\cpc_apps\shptool\shptool.exe" duplicPoint D:\CPC\shp\P_Aqueduto_em_via.shp D:\temp\L_Acesso_auto.shp 1 5.875
               
rem CALL "C:\cpc_apps\shptool\shptool.exe" classbridge D:\CPC\shp\L_pontes.shp tipo D:\CPC\shp\L_vias.shp tipo display 			   

rem CALL "C:\cpc_apps\shptool\shptool.exe" area2point D:\CPC\shp\A_constr.shp 200

rem CALL "C:\cpc_apps\shptool\shptool.exe" delPoint D:\CPC\shp\P_Capela.shp D:\CPC\shp\P_Ruinas.shp 25
 
rem CALL "C:\cpc_apps\shptool\shptool.exe" flagPointLine D:\CPC\shp\P_Poco.shp D:\CPC\shp\L_Estrada_larga.shp 5.875
rem CALL "C:\cpc_apps\shptool\shptool.exe" moveline2line D:\temp\L_Aterro.shp D:\temp\L_Estrada_estreita.shp 5.875 0

rem CALL "C:\cpc_apps\shptool\shptool.exe" delSpotHeight D:\CPC\shp\P_Ponto_cotado.shp 200
rem CALL "C:\cpc_apps\shptool\shptool.exe" delSpotHeightinv D:\CPC\shp\P_Ponto_cotado.shp 200

rem CALL "C:\cpc_apps\shptool\shptool.exe" joinLine D:\CPC\shp\L_Estrada_estreita.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" splitLine D:\CPC\shp\L_Estrada_estreita.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" segmentLine D:\CPC\shp\L_Estrada_estreita.shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" txtbroke D:\CPC\shp\P_tpn_export.shp nome D:\CPC\seeds\ARIALUNI.TTF 50 0 0

rem CALL "C:\cpc_apps\shptool\shptool.exe" validencode D:\CPC\shp\P_tpn_export.shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" delpointarea D:\CPC\shp\P_Ponto_cotado.shp D:\CPC\shp\A_Campo_de_futebol.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" delpointline D:\CPC\shp\P_Aqueduto_em_via.shp D:\CPC\shp\L_Estrada_larga.shp 17.5

rem CALL "C:\cpc_apps\shptool\shptool.exe" selectmaxheight D:\CPC\shp\P_Ponto_cotado.shp D:\CPC\shp\L_curva_nivel.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" selectminheight D:\CPC\shp\P_Ponto_cotado.shp D:\CPC\shp\L_curva_nivel.shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" breakedge D:\CPC\shp\A_casa.shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" changedim D:\CPC\shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" shapescale D:\temp\A_Casa.shp 20 2.5 0

rem CALL "C:\cpc_apps\shptool\shptool.exe" flagminarea D:\CPC\shp\A_casa.shp 50
rem CALL "C:\cpc_apps\shptool\shptool.exe" flagmaxarea D:\CPC\shp\A_casa.shp 1250
rem CALL "C:\cpc_apps\shptool\shptool.exe" flagminlength D:\CPC\shp\A_Campo_de_futebol 1250

rem CALL "C:\cpc_apps\shptool\shptool.exe" addcoordinates D:\CPC\shp\P_tpn.shp coordx coordy coordz F,40,3

rem CALL "C:\cpc_apps\shptool\shptool.exe" simplify D:\CPC\shp\L_Curva_de_nivel.shp 2.0

rem CALL "C:\cpc_apps\shptool\shptool.exe" fieldcalc D:\CPC\shp\P_pcota.shp labelx +124.8

rem CALL "C:\cpc_apps\shptool\shptool.exe" xlsx2shp D:\CPC\shp\temp.xlsx
rem CALL "C:\cpc_apps\shptool\shptool.exe" shp2xlsx D:\CPC\shp\P_pcota.shp 1

rem CALL "C:\cpc_apps\shptool\shptool.exe" createIndex D:\CPC\shp\A_Casa.shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" updatefieldbyangle D:\temp\P_vias.shp labelx labely rotangle 200

rem CALL "C:\cpc_apps\shptool\shptool.exe" delminarea D:\temp\A_Arvoredo_denso_validgeom.shp 10

rem CALL "C:\cpc_apps\shptool\shptool.exe" polygon2line D:\temp\merge_verdes.shp
rem CALL "C:\cpc_apps\shptool\shptool.exe" polygon2linesegment D:\temp\merge_verdes.shp

rem CALL "C:\cpc_apps\shptool\shptool.exe" orderfield D:\temp\lines.shp 
rem CALL "C:\cpc_apps\shptool\shptool.exe" orderfieldbylist D:\temp\lines.shp  D:\temp\orderattr.txt

rem CALL "C:\cpc_apps\shptool\shptool.exe" backupdir D:\temp  D:\temp\_back
rem CALL "C:\cpc_apps\shptool\shptool.exe" shpzip D:\temp

rem CALL "C:\cpc_apps\shptool\shptool.exe" checkstring D:\temp\tpn_edi.shp nome D:\temp\dic.txt
rem CALL "C:\cpc_apps\shptool\shptool.exe" checksubstringkm D:\temp\tpn_edi.shp nome D:\temp\dic.txt
rem CALL "C:\cpc_apps\shptool\shptool.exe" correctdest D:\temp\tpn_edi.shp nome
rem CALL "C:\cpc_apps\shptool\shptool.exe" deltxtspace D:\temp\tpn_edi.shp nome
rem CALL "C:\cpc_apps\shptool\shptool.exe" replacesubstring D:\temp\tpn_edi.shp nome iscas osgas


echo. 
pause