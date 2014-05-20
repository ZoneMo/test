package com.tencent.mm.t;

import android.content.ContentValues;
import android.database.Cursor;

public final class a
{
  private int bOY = -1;
  private String cjA = "";
  private int cjx = 0;
  private int cjy = 0;
  private String cjz = "";
  private long csd = 0L;
  private int cse = 0;
  private int type = 0;
  private String username = "";

  public final void D(long paramLong)
  {
    this.csd = paramLong;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.username = paramCursor.getString(0);
    this.csd = paramCursor.getLong(1);
    this.type = paramCursor.getInt(2);
    this.cse = paramCursor.getInt(3);
    this.cjx = paramCursor.getInt(4);
    this.cjy = paramCursor.getInt(5);
    this.cjz = paramCursor.getString(6);
    this.cjA = paramCursor.getString(7);
  }

  public final String getUsername()
  {
    if (this.username == null)
      return "";
    return this.username;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("username", getUsername());
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("inserttime", Long.valueOf(this.csd));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("type", Integer.valueOf(this.type));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("lastgettime", Integer.valueOf(this.cse));
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("reserved1", Integer.valueOf(this.cjx));
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("reserved2", Integer.valueOf(this.cjy));
    String str2;
    if ((0x40 & this.bOY) != 0)
    {
      if (this.cjz == null)
      {
        str2 = "";
        localContentValues.put("reserved3", str2);
      }
    }
    else if ((0x80 & this.bOY) != 0)
      if (this.cjA != null)
        break label205;
    label205: for (String str1 = ""; ; str1 = this.cjA)
    {
      localContentValues.put("reserved4", str1);
      return localContentValues;
      str2 = this.cjz;
      break;
    }
  }

  public final void setUsername(String paramString)
  {
    this.username = paramString;
  }

  public final void vg()
  {
    this.bOY = -1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.t.a
 * JD-Core Version:    0.6.2
 */