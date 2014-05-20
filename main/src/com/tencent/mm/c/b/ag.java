package com.tencent.mm.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.ad;

public abstract class ag extends ad
{
  public static final String[] bRN = new String[0];
  private static final int bSe = "rowid".hashCode();
  private static final int bYJ = "tagId".hashCode();
  private static final int bYK = "tagName".hashCode();
  private static final int bYL = "count".hashCode();
  private static final int bYM = "memberList".hashCode();
  public int field_count;
  public String field_memberList;
  public long field_tagId;
  public String field_tagName;

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
      if (bYJ != k)
        break label57;
      this.field_tagId = paramCursor.getLong(i);
    }
    while (true)
    {
      i++;
      break label18;
      break;
      label57: if (bYK == k)
        this.field_tagName = paramCursor.getString(i);
      else if (bYL == k)
        this.field_count = paramCursor.getInt(i);
      else if (bYM == k)
        this.field_memberList = paramCursor.getString(i);
      else if (bSe == k)
        this.gfy = paramCursor.getLong(i);
    }
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("tagId", Long.valueOf(this.field_tagId));
    if (this.field_tagName == null)
      this.field_tagName = "";
    localContentValues.put("tagName", this.field_tagName);
    localContentValues.put("count", Integer.valueOf(this.field_count));
    if (this.field_memberList == null)
      this.field_memberList = "";
    localContentValues.put("memberList", this.field_memberList);
    if (this.gfy > 0L)
      localContentValues.put("rowid", Long.valueOf(this.gfy));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.ag
 * JD-Core Version:    0.6.2
 */