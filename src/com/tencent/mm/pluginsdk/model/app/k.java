package com.tencent.mm.pluginsdk.model.app;

import android.content.ContentValues;
import com.tencent.mm.c.b.b;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.platformtools.cj;
import java.lang.reflect.Field;
import java.util.Map;

public final class k extends b
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[20];
    localae.bZx = new String[21];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "appId";
    localae.gfA.put("appId", "TEXT");
    localStringBuilder.append(" appId TEXT default ''  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "appId";
    localae.bZx[1] = "appName";
    localae.gfA.put("appName", "TEXT");
    localStringBuilder.append(" appName TEXT");
    localStringBuilder.append(", ");
    localae.bZx[2] = "appDiscription";
    localae.gfA.put("appDiscription", "TEXT");
    localStringBuilder.append(" appDiscription TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "appIconUrl";
    localae.gfA.put("appIconUrl", "TEXT");
    localStringBuilder.append(" appIconUrl TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "appStoreUrl";
    localae.gfA.put("appStoreUrl", "TEXT");
    localStringBuilder.append(" appStoreUrl TEXT");
    localStringBuilder.append(", ");
    localae.bZx[5] = "appVersion";
    localae.gfA.put("appVersion", "INTEGER");
    localStringBuilder.append(" appVersion INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[6] = "appWatermarkUrl";
    localae.gfA.put("appWatermarkUrl", "TEXT");
    localStringBuilder.append(" appWatermarkUrl TEXT");
    localStringBuilder.append(", ");
    localae.bZx[7] = "packageName";
    localae.gfA.put("packageName", "TEXT");
    localStringBuilder.append(" packageName TEXT");
    localStringBuilder.append(", ");
    localae.bZx[8] = "status";
    localae.gfA.put("status", "INTEGER");
    localStringBuilder.append(" status INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[9] = "signature";
    localae.gfA.put("signature", "TEXT");
    localStringBuilder.append(" signature TEXT");
    localStringBuilder.append(", ");
    localae.bZx[10] = "modifyTime";
    localae.gfA.put("modifyTime", "LONG");
    localStringBuilder.append(" modifyTime LONG");
    localStringBuilder.append(", ");
    localae.bZx[11] = "appName_en";
    localae.gfA.put("appName_en", "TEXT");
    localStringBuilder.append(" appName_en TEXT");
    localStringBuilder.append(", ");
    localae.bZx[12] = "appName_tw";
    localae.gfA.put("appName_tw", "TEXT");
    localStringBuilder.append(" appName_tw TEXT");
    localStringBuilder.append(", ");
    localae.bZx[13] = "appDiscription_en";
    localae.gfA.put("appDiscription_en", "TEXT");
    localStringBuilder.append(" appDiscription_en TEXT");
    localStringBuilder.append(", ");
    localae.bZx[14] = "appDiscription_tw";
    localae.gfA.put("appDiscription_tw", "TEXT");
    localStringBuilder.append(" appDiscription_tw TEXT");
    localStringBuilder.append(", ");
    localae.bZx[15] = "appType";
    localae.gfA.put("appType", "TEXT");
    localStringBuilder.append(" appType TEXT");
    localStringBuilder.append(", ");
    localae.bZx[16] = "openId";
    localae.gfA.put("openId", "TEXT");
    localStringBuilder.append(" openId TEXT");
    localStringBuilder.append(", ");
    localae.bZx[17] = "authFlag";
    localae.gfA.put("authFlag", "INTEGER");
    localStringBuilder.append(" authFlag INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[18] = "appInfoFlag";
    localae.gfA.put("appInfoFlag", "INTEGER");
    localStringBuilder.append(" appInfoFlag INTEGER default '-1' ");
    localStringBuilder.append(", ");
    localae.bZx[19] = "lvbuff";
    localae.gfA.put("lvbuff", "BLOB");
    localStringBuilder.append(" lvbuff BLOB");
    localae.bZx[20] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public k()
  {
    this.field_appId = "";
    this.field_appName = "";
    this.field_appDiscription = "";
    this.field_appIconUrl = "";
    this.field_appStoreUrl = "";
    this.field_appVersion = 0;
    this.field_appWatermarkUrl = "";
    this.field_packageName = "";
    this.field_status = 4;
    this.field_signature = "";
    this.field_modifyTime = 0L;
    this.field_appName_en = "";
    this.field_appName_tw = "";
    this.field_appDiscription_en = "";
    this.field_appDiscription_tw = "";
    this.field_appInfoFlag = 0;
    this.field_appType = "";
    this.field_openId = "";
    this.field_authFlag = 0;
    this.field_appInfoFlag = 0;
    this.bSz = "";
    this.bSy = "";
    this.bSx = "";
    this.bSA = "";
    this.bSB = "";
    this.bSI = "";
    this.bSJ = "";
    this.bSK = "";
  }

  public final boolean apQ()
  {
    if (cj.hX(this.field_appType));
    while (true)
    {
      return false;
      String[] arrayOfString = this.field_appType.split(",");
      if ((arrayOfString != null) && (arrayOfString.length != 0))
      {
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
          if (arrayOfString[j].equals("1"))
            return true;
      }
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
    {
      return false;
      if (paramObject == this)
        return true;
    }
    while (!(paramObject instanceof k));
    return ((k)paramObject).field_appId.equals(this.field_appId);
  }

  public final int hashCode()
  {
    if (!cj.hX(this.field_appId))
      return this.field_appId.hashCode();
    return super.hashCode();
  }

  public final ContentValues oa()
  {
    if ((!cj.hX(this.field_appType)) && (this.field_appType.startsWith("1")))
      this.field_appType = ("," + this.field_appType);
    return super.oa();
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.k
 * JD-Core Version:    0.6.2
 */