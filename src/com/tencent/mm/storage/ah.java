package com.tencent.mm.storage;

import com.tencent.mm.c.b.s;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class ah extends s
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[13];
    localae.bZx = new String[14];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "downloadId";
    localae.gfA.put("downloadId", "LONG");
    localStringBuilder.append(" downloadId LONG PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "downloadId";
    localae.bZx[1] = "downloadKey";
    localae.gfA.put("downloadKey", "TEXT");
    localStringBuilder.append(" downloadKey TEXT");
    localStringBuilder.append(", ");
    localae.bZx[2] = "fileName";
    localae.gfA.put("fileName", "TEXT");
    localStringBuilder.append(" fileName TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "filePath";
    localae.gfA.put("filePath", "TEXT");
    localStringBuilder.append(" filePath TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "status";
    localae.gfA.put("status", "INTEGER");
    localStringBuilder.append(" status INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[5] = "isNotified";
    localae.gfA.put("isNotified", "INTEGER");
    localStringBuilder.append(" isNotified INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[6] = "md5";
    localae.gfA.put("md5", "TEXT");
    localStringBuilder.append(" md5 TEXT default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[7] = "downloadUrl";
    localae.gfA.put("downloadUrl", "TEXT");
    localStringBuilder.append(" downloadUrl TEXT default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[8] = "source";
    localae.gfA.put("source", "INTEGER");
    localStringBuilder.append(" source INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[9] = "filePathFromURI";
    localae.gfA.put("filePathFromURI", "TEXT");
    localStringBuilder.append(" filePathFromURI TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[10] = "isGameFile";
    localae.gfA.put("isGameFile", "INTEGER");
    localStringBuilder.append(" isGameFile INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[11] = "autoInstall";
    localae.gfA.put("autoInstall", "INTEGER");
    localStringBuilder.append(" autoInstall INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[12] = "fromAppId";
    localae.gfA.put("fromAppId", "TEXT");
    localStringBuilder.append(" fromAppId TEXT");
    localae.bZx[13] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public ah()
  {
    this.field_downloadId = -1L;
    this.field_downloadKey = "";
    this.field_fileName = "";
    this.field_filePath = "";
    this.field_isNotified = 0;
    this.field_md5 = "";
    this.field_status = 64;
    this.field_downloadUrl = "";
    this.field_isGameFile = 0;
    this.field_autoInstall = 0;
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ah
 * JD-Core Version:    0.6.2
 */