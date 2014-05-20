package com.tencent.mm.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ad;

public abstract class ak extends ad
{
  public static final String[] bRN = new String[0];
  private static final int bSe = "rowid".hashCode();
  private static final int bZa = "urlHash".hashCode();
  private static final int bZb = "value".hashCode();
  public int field_urlHash;
  public String field_value;

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
      if (bZa != k)
        break label57;
      this.field_urlHash = paramCursor.getInt(i);
    }
    while (true)
    {
      i++;
      break label18;
      break;
      label57: if (bZb == k)
        this.field_value = paramCursor.getString(i);
      else if (bSe == k)
        this.gfy = paramCursor.getLong(i);
    }
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("urlHash", Integer.valueOf(this.field_urlHash));
    localContentValues.put("value", this.field_value);
    if (this.gfy > 0L)
      localContentValues.put("rowid", Long.valueOf(this.gfy));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.ak
 * JD-Core Version:    0.6.2
 */