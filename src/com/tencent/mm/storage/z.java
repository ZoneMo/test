package com.tencent.mm.storage;

import com.tencent.mm.c.b.k;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class z extends k
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[6];
    localae.bZx = new String[7];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "md5_lang";
    localae.gfA.put("md5_lang", "TEXT");
    localStringBuilder.append(" md5_lang TEXT PRIMARY KEY  COLLATE NOCASE ");
    localStringBuilder.append(", ");
    localae.gfz = "md5_lang";
    localae.bZx[1] = "md5";
    localae.gfA.put("md5", "TEXT");
    localStringBuilder.append(" md5 TEXT COLLATE NOCASE ");
    localStringBuilder.append(", ");
    localae.bZx[2] = "lang";
    localae.gfA.put("lang", "TEXT");
    localStringBuilder.append(" lang TEXT COLLATE NOCASE ");
    localStringBuilder.append(", ");
    localae.bZx[3] = "desc";
    localae.gfA.put("desc", "TEXT");
    localStringBuilder.append(" desc TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "groupId";
    localae.gfA.put("groupId", "TEXT");
    localStringBuilder.append(" groupId TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[5] = "click_flag";
    localae.gfA.put("click_flag", "INTEGER");
    localStringBuilder.append(" click_flag INTEGER");
    localae.bZx[6] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public final boolean aBE()
  {
    return yK().length() == 32;
  }

  protected final ae qE()
  {
    return null;
  }

  public final String yK()
  {
    if (this.field_md5 == null)
      return "";
    return this.field_md5;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.z
 * JD-Core Version:    0.6.2
 */