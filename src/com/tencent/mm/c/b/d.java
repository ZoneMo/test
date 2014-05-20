package com.tencent.mm.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ad;

public abstract class d extends ad
{
  public static final String[] bRN = new String[0];
  private static final int bRT = "type".hashCode();
  private static final int bRW = "status".hashCode();
  private static final int bSZ = "username".hashCode();
  private static final int bSe = "rowid".hashCode();
  private static final int bTa = "brandList".hashCode();
  private static final int bTb = "brandListVersion".hashCode();
  private static final int bTc = "brandListContent".hashCode();
  private static final int bTd = "brandFlag".hashCode();
  private static final int bTe = "extInfo".hashCode();
  private static final int bTf = "brandInfo".hashCode();
  private static final int bTg = "brandIconURL".hashCode();
  private static final int bTh = "updateTime".hashCode();
  private static final int bTi = "hadAlert".hashCode();
  private static final int bTj = "acceptType".hashCode();
  public int field_acceptType;
  public int field_brandFlag;
  public String field_brandIconURL;
  public String field_brandInfo;
  public String field_brandList;
  public String field_brandListContent;
  public String field_brandListVersion;
  public String field_extInfo;
  public int field_hadAlert;
  public int field_status;
  public int field_type;
  public long field_updateTime;
  public String field_username;

  public void convertFrom(Cursor paramCursor)
  {
    String[] arrayOfString = paramCursor.getColumnNames();
    if (arrayOfString == null)
      return;
    int i = 0;
    int j = arrayOfString.length;
    label18: int k;
    if (i < j)
    {
      k = arrayOfString[i].hashCode();
      if (bSZ != k)
        break label57;
      this.field_username = paramCursor.getString(i);
    }
    while (true)
    {
      i++;
      break label18;
      break;
      label57: if (bTa == k)
        this.field_brandList = paramCursor.getString(i);
      else if (bTb == k)
        this.field_brandListVersion = paramCursor.getString(i);
      else if (bTc == k)
        this.field_brandListContent = paramCursor.getString(i);
      else if (bTd == k)
        this.field_brandFlag = paramCursor.getInt(i);
      else if (bTe == k)
        this.field_extInfo = paramCursor.getString(i);
      else if (bTf == k)
        this.field_brandInfo = paramCursor.getString(i);
      else if (bTg == k)
        this.field_brandIconURL = paramCursor.getString(i);
      else if (bTh == k)
        this.field_updateTime = paramCursor.getLong(i);
      else if (bTi == k)
        this.field_hadAlert = paramCursor.getInt(i);
      else if (bTj == k)
        this.field_acceptType = paramCursor.getInt(i);
      else if (bRT == k)
        this.field_type = paramCursor.getInt(i);
      else if (bRW == k)
        this.field_status = paramCursor.getInt(i);
      else if (bSe == k)
        this.gfy = paramCursor.getLong(i);
    }
  }

  public ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("username", this.field_username);
    if (this.field_brandList == null)
      this.field_brandList = "";
    localContentValues.put("brandList", this.field_brandList);
    localContentValues.put("brandListVersion", this.field_brandListVersion);
    localContentValues.put("brandListContent", this.field_brandListContent);
    localContentValues.put("brandFlag", Integer.valueOf(this.field_brandFlag));
    localContentValues.put("extInfo", this.field_extInfo);
    localContentValues.put("brandInfo", this.field_brandInfo);
    localContentValues.put("brandIconURL", this.field_brandIconURL);
    localContentValues.put("updateTime", Long.valueOf(this.field_updateTime));
    localContentValues.put("hadAlert", Integer.valueOf(this.field_hadAlert));
    localContentValues.put("acceptType", Integer.valueOf(this.field_acceptType));
    localContentValues.put("type", Integer.valueOf(this.field_type));
    localContentValues.put("status", Integer.valueOf(this.field_status));
    if (this.gfy > 0L)
      localContentValues.put("rowid", Long.valueOf(this.gfy));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.d
 * JD-Core Version:    0.6.2
 */