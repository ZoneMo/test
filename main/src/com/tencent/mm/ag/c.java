package com.tencent.mm.ag;

import com.tencent.mm.c.b.ak;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class c extends ak
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[2];
    localae.bZx = new String[3];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "urlHash";
    localae.gfA.put("urlHash", "INTEGER");
    localStringBuilder.append(" urlHash INTEGER PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "urlHash";
    localae.bZx[1] = "value";
    localae.gfA.put("value", "TEXT");
    localStringBuilder.append(" value TEXT");
    localae.bZx[2] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public c()
  {
    this.field_urlHash = 0;
    this.field_value = "";
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ag.c
 * JD-Core Version:    0.6.2
 */