package com.tencent.mm.storage;

import com.tencent.mm.c.b.aj;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.platformtools.cj;
import java.lang.reflect.Field;
import java.util.Map;

public final class ci extends aj
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[3];
    localae.bZx = new String[4];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "msgId";
    localae.gfA.put("msgId", "LONG");
    localStringBuilder.append(" msgId LONG PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "msgId";
    localae.bZx[1] = "cmsgId";
    localae.gfA.put("cmsgId", "TEXT");
    localStringBuilder.append(" cmsgId TEXT");
    localStringBuilder.append(", ");
    localae.bZx[2] = "content";
    localae.gfA.put("content", "TEXT");
    localStringBuilder.append(" content TEXT default '' ");
    localae.bZx[3] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public final String aDq()
  {
    return this.field_content;
  }

  public final void bT(long paramLong)
  {
    this.field_msgId = paramLong;
  }

  protected final ae qE()
  {
    return null;
  }

  public final void vH(String paramString)
  {
    if (cj.hX(paramString))
      return;
    this.field_cmsgId = paramString;
  }

  public final void vI(String paramString)
  {
    this.field_content = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ci
 * JD-Core Version:    0.6.2
 */