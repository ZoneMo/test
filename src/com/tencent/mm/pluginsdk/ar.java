package com.tencent.mm.pluginsdk;

import com.tencent.mm.c.b.y;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class ar extends y
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[6];
    localae.bZx = new String[7];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "name";
    localae.gfA.put("name", "TEXT");
    localStringBuilder.append(" name TEXT default ''  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "name";
    localae.bZx[1] = "version";
    localae.gfA.put("version", "TEXT");
    localStringBuilder.append(" version TEXT");
    localStringBuilder.append(", ");
    localae.bZx[2] = "key";
    localae.gfA.put("key", "TEXT");
    localStringBuilder.append(" key TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "msgUsername";
    localae.gfA.put("msgUsername", "TEXT");
    localStringBuilder.append(" msgUsername TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "pluginUsername";
    localae.gfA.put("pluginUsername", "TEXT");
    localStringBuilder.append(" pluginUsername TEXT");
    localStringBuilder.append(", ");
    localae.bZx[5] = "appId";
    localae.gfA.put("appId", "TEXT");
    localStringBuilder.append(" appId TEXT");
    localae.bZx[6] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ar
 * JD-Core Version:    0.6.2
 */