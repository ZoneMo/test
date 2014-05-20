package com.tencent.mm.plugin.scanner.b;

import com.tencent.mm.c.b.z;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.Map;

public final class n extends z
{
  public static ae cfX = localae;
  public LinkedList egv;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[11];
    localae.bZx = new String[12];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "productid";
    localae.gfA.put("productid", "TEXT");
    localStringBuilder.append(" productid TEXT default ''  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "productid";
    localae.bZx[1] = "type";
    localae.gfA.put("type", "INTEGER");
    localStringBuilder.append(" type INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[2] = "title";
    localae.gfA.put("title", "TEXT");
    localStringBuilder.append(" title TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "subtitle";
    localae.gfA.put("subtitle", "TEXT");
    localStringBuilder.append(" subtitle TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "shareurl";
    localae.gfA.put("shareurl", "TEXT");
    localStringBuilder.append(" shareurl TEXT");
    localStringBuilder.append(", ");
    localae.bZx[5] = "playurl";
    localae.gfA.put("playurl", "TEXT");
    localStringBuilder.append(" playurl TEXT");
    localStringBuilder.append(", ");
    localae.bZx[6] = "thumburl";
    localae.gfA.put("thumburl", "TEXT");
    localStringBuilder.append(" thumburl TEXT");
    localStringBuilder.append(", ");
    localae.bZx[7] = "xmlType";
    localae.gfA.put("xmlType", "INTEGER");
    localStringBuilder.append(" xmlType INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[8] = "xml";
    localae.gfA.put("xml", "TEXT");
    localStringBuilder.append(" xml TEXT");
    localStringBuilder.append(", ");
    localae.bZx[9] = "source";
    localae.gfA.put("source", "TEXT");
    localStringBuilder.append(" source TEXT");
    localStringBuilder.append(", ");
    localae.bZx[10] = "functionType";
    localae.gfA.put("functionType", "INTEGER");
    localStringBuilder.append(" functionType INTEGER");
    localae.bZx[11] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.n
 * JD-Core Version:    0.6.2
 */