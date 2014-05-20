package com.tencent.mm.plugin.safedevice.a;

import com.tencent.mm.c.b.aa;
import com.tencent.mm.protocal.a.ry;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class c extends aa
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[4];
    localae.bZx = new String[5];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "uid";
    localae.gfA.put("uid", "TEXT");
    localStringBuilder.append(" uid TEXT default ''  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "uid";
    localae.bZx[1] = "name";
    localae.gfA.put("name", "TEXT");
    localStringBuilder.append(" name TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[2] = "devicetype";
    localae.gfA.put("devicetype", "TEXT");
    localStringBuilder.append(" devicetype TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[3] = "createtime";
    localae.gfA.put("createtime", "LONG");
    localStringBuilder.append(" createtime LONG default '0' ");
    localae.bZx[4] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public c()
  {
    this.field_uid = "0";
    this.field_name = "";
    this.field_devicetype = "";
    this.field_createtime = 0L;
  }

  public c(ry paramry)
  {
    this.field_createtime = paramry.fzy;
    this.field_devicetype = paramry.fQw;
    this.field_name = paramry.Th;
    this.field_uid = paramry.fEM;
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.a.c
 * JD-Core Version:    0.6.2
 */