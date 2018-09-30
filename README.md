# SHPTOOL
help function from shptool

Func: addcoordinates 
Desc: exporta as coordenadas (X, Y e Z) de Pontos para colunas (fields) 
Parm: addcoordinates shpFileIn coordx coordy coordz F,40,3 

Func: addfield 
Desc: adiciona um atributo (name) do tipo string com o valor (ruina) 
Parm: addfield shpDirFileIn name C,10,0 ruina 

Func: area2point 
Desc: converte todas os poligonos em pontos (area < areaValue) 
Parm: area2point shpFileIn areaValue 

Func: backupdir 
Desc: faz um backup da diretoria dirFileIn para dirFileOut 
Parm: backupdir dirFileIn dirFileOut 

Func: breakedge 
Desc: adiciona vertices em todos as intersecoes, valido para LineStrings e Polygons 
Parm: breakedge shpFileIn 

Func: changedim 
Desc: altera a dimensao da shapefile (2d>3d ou 3d>2d) 
Parm: changedim shpDirFileIn 

Func: changefield 
Desc: altera o nome do atributo (name) para (detalhes) 
Parm: changefield shpDirFileIn name detalhes 

Func: checkstring 
Desc: verificar o texto completo de um atributo 
Parm: checkstring shpfile fieldname txtdic 

Func: checksubstringkm 
Desc: verificar o texto completo de KM de um atributo 
Parm: checksubstringkm shpfile fieldname txtdic 

Func: classbridge 
Desc: classifica as pontes (intersecao com vias) e vias (intersecao com pontes estreitas, vaus e tuneis) 
Parm: classbridge pontesIn patrib1 viasIn vatrib1 vatrib2 

Func: clipvector 
Desc: faz o corte de uma shapefile pelas 4 coordenadas de uma area (x_cantoSupEsq,y_cantoSupEsq,x_cantoInfDir,y_cantoInfDir) 
Parm: clipvector shpDirFileIn 246806,327910,251336,330488 

Func: clipvectoroverlap 
Desc: faz o corte (overlap) de uma shapefile pelas 4 coordenadas de uma area (x_cantoSupEsq,y_cantoSupEsq,x_cantoInfDir,y_cantoInfDir) 
Parm: clipvectoroverlap shpDirFileIn 246806,327910,251336,330488 

Func: concatenatefield 
Desc: copia os atributos (fieldname1+fieldname2) para outro atributo (newfieldname) 
Parm: concatenatefield shpDirFileIn fieldname1 fieldname2 newfieldname 

Func: correctdest 
Desc: corrige o texto de KM de um atributo 
Parm: correctdest shpfile fieldname 

Func: createBuffer 
Desc: cria um buffer com distancia (dist) em modo capStyle(round:1, flat:2, square:3) e joinStyle(round:1, mitre:2, bevel:3) sem (0) ou com (1) a uniao de geometrias que se intersectam 
Parm: createBuffer shpDirFileIn dist capStyle joinStyle boolean 

Func: createIndex 
Desc: cria um indice para a shapefile (auto-incremento em todas as features) 
Parm: createIndex shpDirFileIn 

Func: createblankshp 
Desc: cria uma shapefile vazia 
Parm: createblankshp shpFileOut Point crsCode 

Func: delPoint 
Desc: elimina pontos (pointShpFileIn2) à distancia (dist) dos pontos (pointShpFileIn1) 
Parm: delPoint shpFileIn pointShpFileIn2 dist 

Func: delSpotHeight 
Desc: apaga os pontos de cota (de cota inferior) numa distancia (dist) introduzida 
Parm: delSpotHeight shpFileIn dist 

Func: delSpotHeightinv 
Desc: apaga os pontos de cota (de cota superior) numa distancia (dist) introduzida 
Parm: delSpotHeightinv shpFileIn dist 

Func: delminarea 
Desc: elimina as areas inferiores a uma determinada area (area) 
Parm: delminarea shpFile area 

Func: delpointarea 
Desc: elimina todos os pontos dentro das area 
Parm: delpointarea shpFileIn polyShpFile 

Func: delpointline 
Desc: elimina todos os pontos cuja distancia à linha é inferior a dist 
Parm: delpointline shpFileIn lineShpFile dist 

Func: deltxtspace 
Desc: elimina espacos em branco que existem no texto (inicio, fim e duplicados) de um atributo 
Parm: deltxtspace shpfile fieldname 

Func: duplicPoint 
Desc: duplicar pontos com interpolacao com uma linha 
Parm: duplicPoint pointShpFileIn lineShpFileIn distanceToFind distBuffer 

Func: duplicatefield 
Desc: copia o atributo (fieldname) para outro atributo (newfieldname) 
Parm: duplicatefield shpDirFileIn fieldname newfieldname 

Func: editrecord 
Desc: edita todas as features cujo valor do atributo (Color) = 12 para 11 
Parm: editrecord shpDirFileIn Color 12 11 

Func: editrecordlist 
Desc: edita todas as features cujo valor do atributo (source) tem uma correspondencia no ficheiro txt 
Parm: editrecordlist shpDirFileIn source txtFile 

Func: extractdellfield 
Desc: extrai para uma shapefile todas features cujo valor do atributo (Color) = 12 (remove do original) 
Parm: extractdellfield shpDirFileIn Color 12 

Func: extractfield 
Desc: extrai para uma shapefile todas features cujo valor do atributo (Color) = 12 
Parm: extractfield shpDirFileIn Color 12 

Func: fieldcalc 
Desc: update do valor do atributo (fieldName) com um dado calculo (+,-,x,:) 
Parm: fieldcalc shpFileIn fieldName +124.8 

Func: flagPointLine 
Desc: obtem todos os pontos a uma determinada distancia de uma via (flag) 
Parm: flagPointLine shpFileIn lineShpFileIn dist 

Func: flagmaxarea 
Desc: obtem todas as areas maximas para validacao (flag) 
Parm: flagmaxarea shpFileIn areaMinima 

Func: flagminarea 
Desc: obtem todas as areas minimas para validacao (flag) 
Parm: flagminarea shpFileIn areaMinima 

Func: flagminlength 
Desc: obtem todos os comprimentos minimos para validacao (flag) 
Parm: flagminlength shpFileIn compMinimo 

Func: geojson2shp 
Desc: converte geojson em shapefile 
Parm: geojson2shp jsonFileIn crsCode 

Func: getShpInfo 
Desc: obtem informacao da shapefile 
Parm: getShpInfo shpFileIn 

Func: help 
Desc: print de todas as funcoes 
Parm: help 

Func: helpbat 
Desc: cria o ficheiro shptool.bat 
Parm: helpbat 

Func: joinLine 
Desc: faz o merge de todas as linhas que se intersectam 
Parm: joinLine shpFileIn 

Func: kml2shp 
Desc: converte um kml em shapefile (wgs84) 
Parm: kml2shp kmlFileIn 

Func: mdb2shp 
Desc: converte uma tabela mdb em shapefile 
Parm: mdb2shp mdbfile "table:selectTableName" "fieldSelectName:fieldSelectValue" "x:fieldX" "y:fieldY" "z:fieldZ" "Fotografia:field1,field2" 

Func: moveline2line 
Desc: move linhas (lineShpFile2move) à distancia (dist) relativamente a outras linhas (lineShpFileRef). boolean: 1 (paralela a linha a mover) ou 0 (paralela a linha de referencia) 
Parm: moveline2line lineShpFile2move lineShpFileRef 5.875 boolean 

Func: multi2simple 
Desc: converte multigeometrias em geometrias simples (pontos, linhas e areas) de uma shapefile ou um conjunto de shapefiles numa diretoria 
Parm: multi2simple shpDirFileIn 

Func: orderfield 
Desc: ordena os atributos pelo nome 
Parm: orderfield shpDirFileIn 

Func: orderfieldbylist 
Desc: ordena os atributos por uma lista de um ficheiro txt 
Parm: orderfieldbylist shpDirFileIn txtFile 

Func: polygon2line 
Desc: converte Polygons em LineStrings 
Parm: polygon2line shpFile 

Func: polygon2linesegment 
Desc: converte Polygons em segmentos de LineStrings, uma linha por cada aresta do Polygon 
Parm: polygon2linesegment shpFile 

Func: removeaccentsfields 
Desc: remove todos os acentos do nome dos atributos 
Parm: removeaccentsfields    shpDirFileIn 

Func: removeaccentsrecords 
Desc: remove todos os acentos do valor dos atributos 
Parm: removeaccentsrecords shpDirFileIn 

Func: removefield 
Desc: remove todos os atributos (*), o atributo (name), atributo e para a direita (name*), atributo e para a esquerda (*name) 
Parm: removefield shpDirFileIn name 

Func: replacesubstring 
Desc: substitui uma substring num texto de um atributo 
Parm: replacesubstring shpfile fieldname substringin substringout 

Func: segmentLine 
Desc: faz a segmentacao das linhas pelos seus vertices 
Parm: segmentLine shpFileIn 

Func: selectmaxheight 
Desc: seleciona os pontos de cota nos cabecos 
Parm: selectmaxheight shpFileIn lineShpFile 

Func: selectminheight 
Desc: seleciona os pontos de cota nas depressoes 
Parm: selectminheight shpFileIn lineShpFile 

Func: setAngle 
Desc: calcula o angulo de uma geometria 
Parm: setAngle shpFileIn fieldName 

Func: shapescale 
Desc: escala (maior que 0 aumenta, menor que 0 diminui) geometrias (Polygons) menores/maiores que uma area, segundo um valor (dim), com opcao merge (1/0) se intersetadas 
Parm: shapescale shpFileIn area dim boolean 

Func: shp2geojson 
Desc: converte uma shapefile em geojson (visualizacao web ou txt) 
Parm: shp2geojson shpDirFileIn 

Func: shp2kml 
Desc: converte uma shapefile em kml (visualizacao Google Earth) (wgs84) 
Parm: shp2kml    shpDirFileIn 

Func: shp2mdb 
Desc: converte uma shapefile numa tabela mdb 
Parm: shp2mdb shpDirFile 

Func: shp2mdbedit 
Desc: edita uma tabela mdb com o valor de uma shapefile 
Parm: shp2mdbedit shpDirFile crsCode tpntypefile mdbfile tableName fieldName fieldValue 

Func: shp2xlsx 
Desc: converte shapefile em XLSX (Pontos, Linhas e Areas) com 1 (C,100;source) ou 0 (source) do tiopo no nome dos atributos 
Parm: shp2xlsx shpFile boolean 

Func: shpmerge 
Desc: cria 3 shapefiles (ponto, linha e area) de um conjunto de shapefiles existentes numa diretoria 
Parm: shpmerge shpDirIn 

Func: shpmergesubdir 
Desc: cria 3 shapefiles (ponto, linha e area) de um conjunto de shapefiles existentes numa diretoria e suas subdiretorias 
Parm: shpmergesubdir shpDirIn 

Func: shpmergesubdirfeature 
Desc: cria 1 shapefile, por feature, com toda a informacao de um conjunto de shapefiles existentes numa diretoria e suas subdiretorias da mesma feature 
Parm: shpmergesubdirfeature shpDirIn 

Func: shpmergetwoshp 
Desc: faz o merge (update) da shpFile2 na shpFile1 
Parm: shpmergetwoshp shpFile1 shpFile2 

Func: shpzip 
Desc: faz o zip de todas as shapefiles na diretoria dirFileIn individualmente 
Parm: shpzip shpDirIn 

Func: simplify 
Desc: simplifica geometrias segundo uma tolerancia (float) 
Parm: simplify shpFileIn tolerance 

Func: splitLine 
Desc: faz o corte das linhas nas intersecoes 
Parm: splitLine shpFileIn 

Func: txtbroke 
Desc: parte os textos por palavras, criando um ponto por cada palavra (criados atributos: idbk, nomebk, posbk) 
Parm: txtbroke shpFileIn fielName fontFile sizeLetter spacingLetter spacingWord 

Func: updatefieldbyangle 
Desc: update do valor labelx e labely segundo um angulo (rotangle) e distancia (dist) 
Parm: updatefieldbyangle shpFileIn labelx labely rotangle dist 

Func: validencode 
Desc: converte a codificacao para UTF-8 (fieldsNames e fieldsValues) > _validencode.shp e _validencode__error.shp
Parm: validencode shpFileIn 

Func: xlsx2shp 
Desc: converte XLSX/CSV em SHP. Exemplo do XLSX: x | y | z | N,10,0;fieldName1 | F,10,2;fieldName2 | C,100,0;fieldName3 | D,8,0;fieldName4 
Parm: xlsx2shp xlsxFile 


...Done!

Tempo de execucao: 0:00:00.504000
