<?xml version="1.0" encoding="UTF-8"?>

<!--
    Autor: Joaquín Romero Sánchez
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
       
        <html>
            <head>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" 
                      rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" 
                      crossorigin="anonymous">
                </link>
            </head>
    
            <body class="bg-primary-subtle">
        
                <!--NAV -->
                <a name="nav"></a>
                <ul class="nav justify-content-center bg-dark-subtle fs-4 shadow">
            
                    <li class="nav-item px-5 py-2">
                        Joaquín Romero Sánchez 
                    </li>
                    <li class="nav-item px-5 py-2">
                        1º DAM 
                    </li>
                    <li class="nav-item px-5 py-2">
                        Lenguaje de Marcas 
                    </li>
                </ul>
                <a class=" d-inline-block nav-link active text-reset bg-info rounded-5 p-3 m-2 shadow" href="#footer">Ir al footer</a>
         
                <!-- Titulo y Tabla -->
                <div class="container container-fluid my-5"> 
                    <h2 class="text-center fs-2">Listado de Juegos</h2>
                    <button type="button" class="btn btn-warning"></button> Incompleto
                    <table class="table table-striped table-bordered border border-dark shadow">
                        <thead>
                            <tr class="fs-5 py-10 text-center">
                                <th>Nombre</th>
                                <th>Año</th>
                                <th>Descripción</th>
                                <th>Fabricante</th>
                                <th>Tipo de display</th>
                                <th>Orientación</th>
                                <th>Archivo fuente</th>
                            </tr>
                        </thead>
          
                        <tbody> 
                            <xsl:for-each select="/mame/arcade">
                                <xsl:sort select="year"/>
            
                                <xsl:if test="is_runnable='YES'">
                                    <tr  class=" fs-5 text-center">
                    
                                        <xsl:if test="driver_status='INCOMPLETO'" >
                                            <xsl:attribute name="class">table-warning fs-5 text-center</xsl:attribute>
                                        </xsl:if>
                  
                                        <td>
                                            <xsl:value-of select="name"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="year"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="description"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="manufacturer"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="display_type"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="display_orientation"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="sourcefile"/>
                                        </td>
                 
                                    </tr>
                                </xsl:if>
            
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
      
                <!-- BOTON IR ARRIBA -->
                <a class=" d-inline-block nav-link active text-reset bg-info rounded-5 p-3 m-2 shadow" href="#nav">Ir al nav</a>
                <!--Footer -->
                <div class="bg-secondary">
                    <a name="footer"></a>
                    <footer class="text-white text-center py-3 shadow">Realizado por Joaquín Romero Sánchez </footer>
                </div>
            </body>
    
        </html>
    </xsl:template>

</xsl:stylesheet>
