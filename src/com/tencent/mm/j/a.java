package com.tencent.mm.j;

import com.tencent.mm.c.b.c;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class a extends c
{
  public static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[7];
    localae.bZx = new String[8];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "msgId";
    localae.gfA.put("msgId", "LONG");
    localStringBuilder.append(" msgId LONG default '0'  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "msgId";
    localae.bZx[1] = "xml";
    localae.gfA.put("xml", "TEXT");
    localStringBuilder.append(" xml TEXT");
    localStringBuilder.append(", ");
    localae.bZx[2] = "appId";
    localae.gfA.put("appId", "TEXT");
    localStringBuilder.append(" appId TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "title";
    localae.gfA.put("title", "TEXT");
    localStringBuilder.append(" title TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "description";
    localae.gfA.put("description", "TEXT");
    localStringBuilder.append(" description TEXT");
    localStringBuilder.append(", ");
    localae.bZx[5] = "source";
    localae.gfA.put("source", "TEXT");
    localStringBuilder.append(" source TEXT");
    localStringBuilder.append(", ");
    localae.bZx[6] = "type";
    localae.gfA.put("type", "INTEGER");
    localStringBuilder.append(" type INTEGER");
    localae.bZx[7] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.j.a
 * JD-Core Version:    0.6.2
 */