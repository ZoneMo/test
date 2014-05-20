package com.tencent.mm.ah;

import com.tencent.mm.c.b.ac;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public class i extends ac
{
  protected static Field[] cAj = ac.d(i.class);
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[11];
    localae.bZx = new String[12];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "svrid";
    localae.gfA.put("svrid", "LONG");
    localStringBuilder.append(" svrid LONG default '0'  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "svrid";
    localae.bZx[1] = "status";
    localae.gfA.put("status", "INTEGER");
    localStringBuilder.append(" status INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[2] = "type";
    localae.gfA.put("type", "INTEGER");
    localStringBuilder.append(" type INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[3] = "scene";
    localae.gfA.put("scene", "INTEGER");
    localStringBuilder.append(" scene INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[4] = "createtime";
    localae.gfA.put("createtime", "LONG");
    localStringBuilder.append(" createtime LONG");
    localStringBuilder.append(", ");
    localae.bZx[5] = "talker";
    localae.gfA.put("talker", "TEXT");
    localStringBuilder.append(" talker TEXT");
    localStringBuilder.append(", ");
    localae.bZx[6] = "content";
    localae.gfA.put("content", "TEXT");
    localStringBuilder.append(" content TEXT");
    localStringBuilder.append(", ");
    localae.bZx[7] = "sayhiuser";
    localae.gfA.put("sayhiuser", "TEXT");
    localStringBuilder.append(" sayhiuser TEXT");
    localStringBuilder.append(", ");
    localae.bZx[8] = "sayhicontent";
    localae.gfA.put("sayhicontent", "TEXT");
    localStringBuilder.append(" sayhicontent TEXT");
    localStringBuilder.append(", ");
    localae.bZx[9] = "imgpath";
    localae.gfA.put("imgpath", "TEXT");
    localStringBuilder.append(" imgpath TEXT");
    localStringBuilder.append(", ");
    localae.bZx[10] = "isSend";
    localae.gfA.put("isSend", "INTEGER");
    localStringBuilder.append(" isSend INTEGER");
    localae.bZx[11] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.i
 * JD-Core Version:    0.6.2
 */