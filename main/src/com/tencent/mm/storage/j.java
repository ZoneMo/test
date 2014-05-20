package com.tencent.mm.storage;

import com.tencent.mm.c.b.g;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class j extends g
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[2];
    localae.bZx = new String[3];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "username";
    localae.gfA.put("username", "TEXT");
    localStringBuilder.append(" username TEXT default ''  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "username";
    localae.bZx[1] = "cmdbuf";
    localae.gfA.put("cmdbuf", "BLOB");
    localStringBuilder.append(" cmdbuf BLOB default '' ");
    localae.bZx[2] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public final byte[] aAu()
  {
    return this.field_cmdbuf;
  }

  public final void cq(byte[] paramArrayOfByte)
  {
    this.field_cmdbuf = paramArrayOfByte;
  }

  protected final ae qE()
  {
    return cfX;
  }

  public final void setUsername(String paramString)
  {
    this.field_username = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.j
 * JD-Core Version:    0.6.2
 */