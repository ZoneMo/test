package com.tencent.mm.storage;

import com.tencent.mm.c.b.ah;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class ce extends ah
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[2];
    localae.bZx = new String[3];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "encryptUsername";
    localae.gfA.put("encryptUsername", "TEXT");
    localStringBuilder.append(" encryptUsername TEXT default ''  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "encryptUsername";
    localae.bZx[1] = "conRemark";
    localae.gfA.put("conRemark", "TEXT");
    localStringBuilder.append(" conRemark TEXT default '' ");
    localae.bZx[2] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public ce()
  {
    this.field_encryptUsername = "";
    this.field_conRemark = "";
  }

  public ce(String paramString1, String paramString2)
  {
    this();
    if (paramString1 == null)
      paramString1 = "";
    this.field_encryptUsername = paramString1;
    if (paramString2 == null)
      paramString2 = "";
    this.field_conRemark = paramString2;
  }

  public final String aAs()
  {
    return this.field_encryptUsername;
  }

  protected final ae qE()
  {
    return cfX;
  }

  public final String ru()
  {
    return this.field_conRemark;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ce
 * JD-Core Version:    0.6.2
 */