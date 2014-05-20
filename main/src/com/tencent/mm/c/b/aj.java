package com.tencent.mm.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ad;

public abstract class aj extends ad
{
  public static final String[] bRN = new String[0];
  private static final int bSU = "msgId".hashCode();
  private static final int bSe = "rowid".hashCode();
  private static final int bUt;
  private static final int bYZ = "cmsgId".hashCode();
  public String field_cmsgId;
  public String field_content;
  public long field_msgId;

  static
  {
    bUt = "content".hashCode();
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
      this.field_msgId = paramCursor.getLong(i);
    }
    while (true)
    {
      i++;
      break label18;
      break;
      label57: if (bYZ == k)
        this.field_cmsgId = paramCursor.getString(i);
      else if (bUt == k)
        this.field_content = paramCursor.getString(i);
      else if (bSe == k)
        this.gfy = paramCursor.getLong(i);
    }
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("msgId", Long.valueOf(this.field_msgId));
    localContentValues.put("cmsgId", this.field_cmsgId);
    if (this.field_content == null)
      this.field_content = "";
    localContentValues.put("content", this.field_content);
    if (this.gfy > 0L)
      localContentValues.put("rowid", Long.valueOf(this.gfy));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.aj
 * JD-Core Version:    0.6.2
 */