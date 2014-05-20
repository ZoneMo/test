package com.tencent.mm.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ad;

public abstract class ah extends ad
{
  public static final String[] bRN = new String[0];
  private static final int bSe = "rowid".hashCode();
  private static final int bTJ = "encryptUsername".hashCode();
  private static final int bTy = "conRemark".hashCode();
  public String field_conRemark;
  public String field_encryptUsername;

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
      if (bTJ != k)
        break label57;
      this.field_encryptUsername = paramCursor.getString(i);
    }
    while (true)
    {
      i++;
      break label18;
      break;
      label57: if (bTy == k)
        this.field_conRemark = paramCursor.getString(i);
      else if (bSe == k)
        this.gfy = paramCursor.getLong(i);
    }
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if (this.field_encryptUsername == null)
      this.field_encryptUsername = "";
    localContentValues.put("encryptUsername", this.field_encryptUsername);
    if (this.field_conRemark == null)
      this.field_conRemark = "";
    localContentValues.put("conRemark", this.field_conRemark);
    if (this.gfy > 0L)
      localContentValues.put("rowid", Long.valueOf(this.gfy));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.ah
 * JD-Core Version:    0.6.2
 */