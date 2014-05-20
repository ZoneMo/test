package com.tencent.mm.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ad;

public abstract class x extends ad
{
  public static final String[] bRN = new String[0];
  private static final int bSU = "msgId".hashCode();
  private static final int bSe = "rowid".hashCode();
  private static final int bWN;
  private static final int bXL = "msgContentXml".hashCode();
  public String field_isRead;
  public String field_msgContentXml;
  public String field_msgId;

  static
  {
    bWN = "isRead".hashCode();
  }

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
      if (bSU != k)
        break label57;
      this.field_msgId = paramCursor.getString(i);
    }
    while (true)
    {
      i++;
      break label18;
      break;
      label57: if (bXL == k)
        this.field_msgContentXml = paramCursor.getString(i);
      else if (bWN == k)
        this.field_isRead = paramCursor.getString(i);
      else if (bSe == k)
        this.gfy = paramCursor.getLong(i);
    }
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("msgId", this.field_msgId);
    localContentValues.put("msgContentXml", this.field_msgContentXml);
    localContentValues.put("isRead", this.field_isRead);
    if (this.gfy > 0L)
      localContentValues.put("rowid", Long.valueOf(this.gfy));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.x
 * JD-Core Version:    0.6.2
 */