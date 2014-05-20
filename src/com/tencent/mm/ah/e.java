package com.tencent.mm.ah;

import com.tencent.mm.c.b.o;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class e extends o
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[7];
    localae.bZx = new String[8];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "msgContent";
    localae.gfA.put("msgContent", "TEXT");
    localStringBuilder.append(" msgContent TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[1] = "isSend";
    localae.gfA.put("isSend", "INTEGER");
    localStringBuilder.append(" isSend INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[2] = "talker";
    localae.gfA.put("talker", "TEXT");
    localStringBuilder.append(" talker TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[3] = "encryptTalker";
    localae.gfA.put("encryptTalker", "TEXT");
    localStringBuilder.append(" encryptTalker TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[4] = "svrId";
    localae.gfA.put("svrId", "INTEGER");
    localStringBuilder.append(" svrId INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[5] = "type";
    localae.gfA.put("type", "INTEGER");
    localStringBuilder.append(" type INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[6] = "createTime";
    localae.gfA.put("createTime", "LONG");
    localStringBuilder.append(" createTime LONG default '0' ");
    localae.bZx[7] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.e
 * JD-Core Version:    0.6.2
 */