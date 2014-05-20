package com.tencent.mm.j;

import com.tencent.mm.c.b.w;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public class e extends w
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[12];
    localae.bZx = new String[13];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "msgId";
    localae.gfA.put("msgId", "LONG");
    localStringBuilder.append(" msgId LONG PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "msgId";
    localae.bZx[1] = "msgSvrId";
    localae.gfA.put("msgSvrId", "INTEGER");
    localStringBuilder.append(" msgSvrId INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[2] = "type";
    localae.gfA.put("type", "INTEGER");
    localStringBuilder.append(" type INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[3] = "status";
    localae.gfA.put("status", "INTEGER");
    localStringBuilder.append(" status INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[4] = "isSend";
    localae.gfA.put("isSend", "INTEGER");
    localStringBuilder.append(" isSend INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[5] = "isShowTimer";
    localae.gfA.put("isShowTimer", "INTEGER");
    localStringBuilder.append(" isShowTimer INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[6] = "createTime";
    localae.gfA.put("createTime", "LONG");
    localStringBuilder.append(" createTime LONG");
    localStringBuilder.append(", ");
    localae.bZx[7] = "talker";
    localae.gfA.put("talker", "TEXT");
    localStringBuilder.append(" talker TEXT");
    localStringBuilder.append(", ");
    localae.bZx[8] = "content";
    localae.gfA.put("content", "TEXT");
    localStringBuilder.append(" content TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[9] = "imgPath";
    localae.gfA.put("imgPath", "TEXT");
    localStringBuilder.append(" imgPath TEXT");
    localStringBuilder.append(", ");
    localae.bZx[10] = "reserved";
    localae.gfA.put("reserved", "TEXT");
    localStringBuilder.append(" reserved TEXT");
    localStringBuilder.append(", ");
    localae.bZx[11] = "lvbuffer";
    localae.gfA.put("lvbuffer", "BLOB");
    localStringBuilder.append(" lvbuffer BLOB");
    localae.bZx[12] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.j.e
 * JD-Core Version:    0.6.2
 */