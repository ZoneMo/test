package com.tencent.mm.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ad;

public abstract class g extends ad
{
  public static final String[] bRN = new String[0];
  private static final int bSZ = "username".hashCode();
  private static final int bSe = "rowid".hashCode();
  private static final int bUo = "cmdbuf".hashCode();
  public byte[] field_cmdbuf;
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
      label57: if (bUo == k)
        this.field_cmdbuf = paramCursor.getBlob(i);
      else if (bSe == k)
        this.gfy = paramCursor.getLong(i);
    }
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if (this.field_username == null)
      this.field_username = "";
    localContentValues.put("username", this.field_username);
    localContentValues.put("cmdbuf", this.field_cmdbuf);
    if (this.gfy > 0L)
      localContentValues.put("rowid", Long.valueOf(this.gfy));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.g
 * JD-Core Version:    0.6.2
 */