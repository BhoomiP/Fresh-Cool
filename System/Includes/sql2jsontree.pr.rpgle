     D SqlCmd          s          32000    varying
     D JsonNode        S          10000A   varying
     D JsonSuppress    s               N   inz(*OFF)
     D JsonChild       s               N   inz(*OFF)
     D JsonXmlSrc      s               N   inz(*OFF)
     D JsonTotal       s             10I 0 inz(0)
     D
     D Sql2JsonTree    PR
     d  CellValue                  4096    varying
     d  Row                          10i 0 value
     d  Rows                         10i 0 value
     d  Col                          10i 0 value
     d  Cols                         10i 0 value
     d  SqlVar                             likeds(I_sqlvar)
     D CellVal         S           8098A   varying

       /include qasphdr,sqlvar
