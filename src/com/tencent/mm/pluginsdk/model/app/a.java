package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class a extends com.tencent.mm.c.b.a
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[16];
    localae.bZx = new String[17];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "appId";
    localae.gfA.put("appId", "TEXT");
    localStringBuilder.append(" appId TEXT");
    localStringBuilder.append(", ");
    localae.bZx[1] = "sdkVer";
    localae.gfA.put("sdkVer", "LONG");
    localStringBuilder.append(" sdkVer LONG");
    localStringBuilder.append(", ");
    localae.bZx[2] = "mediaSvrId";
    localae.gfA.put("mediaSvrId", "TEXT");
    localStringBuilder.append(" mediaSvrId TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "mediaId";
    localae.gfA.put("mediaId", "TEXT");
    localStringBuilder.append(" mediaId TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "clientAppDataId";
    localae.gfA.put("clientAppDataId", "TEXT");
    localStringBuilder.append(" clientAppDataId TEXT");
    localStringBuilder.append(", ");
    localae.bZx[5] = "type";
    localae.gfA.put("type", "LONG");
    localStringBuilder.append(" type LONG");
    localStringBuilder.append(", ");
    localae.bZx[6] = "totalLen";
    localae.gfA.put("totalLen", "LONG");
    localStringBuilder.append(" totalLen LONG");
    localStringBuilder.append(", ");
    localae.bZx[7] = "offset";
    localae.gfA.put("offset", "LONG");
    localStringBuilder.append(" offset LONG");
    localStringBuilder.append(", ");
    localae.bZx[8] = "status";
    localae.gfA.put("status", "LONG");
    localStringBuilder.append(" status LONG");
    localStringBuilder.append(", ");
    localae.bZx[9] = "isUpload";
    localae.gfA.put("isUpload", "INTEGER");
    localStringBuilder.append(" isUpload INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[10] = "createTime";
    localae.gfA.put("createTime", "LONG");
    localStringBuilder.append(" createTime LONG");
    localStringBuilder.append(", ");
    localae.bZx[11] = "lastModifyTime";
    localae.gfA.put("lastModifyTime", "LONG");
    localStringBuilder.append(" lastModifyTime LONG");
    localStringBuilder.append(", ");
    localae.bZx[12] = "fileFullPath";
    localae.gfA.put("fileFullPath", "TEXT");
    localStringBuilder.append(" fileFullPath TEXT");
    localStringBuilder.append(", ");
    localae.bZx[13] = "msgInfoId";
    localae.gfA.put("msgInfoId", "LONG");
    localStringBuilder.append(" msgInfoId LONG");
    localStringBuilder.append(", ");
    localae.bZx[14] = "netTimes";
    localae.gfA.put("netTimes", "LONG");
    localStringBuilder.append(" netTimes LONG");
    localStringBuilder.append(", ");
    localae.bZx[15] = "isUseCdn";
    localae.gfA.put("isUseCdn", "INTEGER");
    localStringBuilder.append(" isUseCdn INTEGER");
    localae.bZx[16] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public a()
  {
    this.field_netTimes = 0L;
  }

  protected final ae qE()
  {
    return cfX;
  }

  public final boolean vN()
  {
    if (this.field_totalLen <= 0L);
    while (this.field_offset != this.field_totalLen)
      return false;
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.a
 * JD-Core Version:    0.6.2
 */