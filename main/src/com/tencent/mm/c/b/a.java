package com.tencent.mm.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ad;

public abstract class a extends ad
{
  public static final String[] bRN = new String[0];
  private static final int bRO = "appId".hashCode();
  private static final int bRP = "sdkVer".hashCode();
  private static final int bRQ = "mediaSvrId".hashCode();
  private static final int bRR = "mediaId".hashCode();
  private static final int bRS = "clientAppDataId".hashCode();
  private static final int bRT = "type".hashCode();
  private static final int bRU = "totalLen".hashCode();
  private static final int bRV = "offset".hashCode();
  private static final int bRW = "status".hashCode();
  private static final int bRX = "isUpload".hashCode();
  private static final int bRY = "createTime".hashCode();
  private static final int bRZ = "lastModifyTime".hashCode();
  private static final int bSa = "fileFullPath".hashCode();
  private static final int bSb = "msgInfoId".hashCode();
  private static final int bSc = "netTimes".hashCode();
  private static final int bSd = "isUseCdn".hashCode();
  private static final int bSe = "rowid".hashCode();
  public String field_appId;
  public String field_clientAppDataId;
  public long field_createTime;
  public String field_fileFullPath;
  public boolean field_isUpload;
  public int field_isUseCdn;
  public long field_lastModifyTime;
  public String field_mediaId;
  public String field_mediaSvrId;
  public long field_msgInfoId;
  public long field_netTimes;
  public long field_offset;
  public long field_sdkVer;
  public long field_status;
  public long field_totalLen;
  public long field_type;

  public void convertFrom(Cursor paramCursor)
  {
    String[] arrayOfString = paramCursor.getColumnNames();
    if (arrayOfString == null)
      return;
    int i = arrayOfString.length;
    int j = 0;
    label18: int k;
    if (j < i)
    {
      k = arrayOfString[j].hashCode();
      if (bRO != k)
        break label59;
      this.field_appId = paramCursor.getString(j);
    }
    while (true)
    {
      j++;
      break label18;
      break;
      label59: if (bRP == k)
      {
        this.field_sdkVer = paramCursor.getLong(j);
      }
      else if (bRQ == k)
      {
        this.field_mediaSvrId = paramCursor.getString(j);
      }
      else if (bRR == k)
      {
        this.field_mediaId = paramCursor.getString(j);
      }
      else if (bRS == k)
      {
        this.field_clientAppDataId = paramCursor.getString(j);
      }
      else if (bRT == k)
      {
        this.field_type = paramCursor.getLong(j);
      }
      else if (bRU == k)
      {
        this.field_totalLen = paramCursor.getLong(j);
      }
      else if (bRV == k)
      {
        this.field_offset = paramCursor.getLong(j);
      }
      else if (bRW == k)
      {
        this.field_status = paramCursor.getLong(j);
      }
      else
      {
        if (bRX == k)
        {
          if (paramCursor.getInt(j) != 0);
          for (boolean bool = true; ; bool = false)
          {
            this.field_isUpload = bool;
            break;
          }
        }
        if (bRY == k)
          this.field_createTime = paramCursor.getLong(j);
        else if (bRZ == k)
          this.field_lastModifyTime = paramCursor.getLong(j);
        else if (bSa == k)
          this.field_fileFullPath = paramCursor.getString(j);
        else if (bSb == k)
          this.field_msgInfoId = paramCursor.getLong(j);
        else if (bSc == k)
          this.field_netTimes = paramCursor.getLong(j);
        else if (bSd == k)
          this.field_isUseCdn = paramCursor.getInt(j);
        else if (bSe == k)
          this.gfy = paramCursor.getLong(j);
      }
    }
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("appId", this.field_appId);
    localContentValues.put("sdkVer", Long.valueOf(this.field_sdkVer));
    localContentValues.put("mediaSvrId", this.field_mediaSvrId);
    localContentValues.put("mediaId", this.field_mediaId);
    localContentValues.put("clientAppDataId", this.field_clientAppDataId);
    localContentValues.put("type", Long.valueOf(this.field_type));
    localContentValues.put("totalLen", Long.valueOf(this.field_totalLen));
    localContentValues.put("offset", Long.valueOf(this.field_offset));
    localContentValues.put("status", Long.valueOf(this.field_status));
    localContentValues.put("isUpload", Boolean.valueOf(this.field_isUpload));
    localContentValues.put("createTime", Long.valueOf(this.field_createTime));
    localContentValues.put("lastModifyTime", Long.valueOf(this.field_lastModifyTime));
    localContentValues.put("fileFullPath", this.field_fileFullPath);
    localContentValues.put("msgInfoId", Long.valueOf(this.field_msgInfoId));
    localContentValues.put("netTimes", Long.valueOf(this.field_netTimes));
    localContentValues.put("isUseCdn", Integer.valueOf(this.field_isUseCdn));
    if (this.gfy > 0L)
      localContentValues.put("rowid", Long.valueOf(this.gfy));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.a
 * JD-Core Version:    0.6.2
 */