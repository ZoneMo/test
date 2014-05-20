package com.tencent.mm.ab;

import android.content.ContentValues;
import android.database.Cursor;

public final class a
{
  private int bOY = -1;
  private String bRt = "";
  private String ckX = "";
  private String ckY = "";
  private int ckZ = 0;
  private int cla = 0;
  private int cvE = 0;
  private String username = "";

  public final int BC()
  {
    return this.cvE;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.username = paramCursor.getString(0);
    this.cvE = paramCursor.getInt(1);
    this.bRt = paramCursor.getString(2);
    this.ckX = paramCursor.getString(3);
    this.ckY = paramCursor.getString(4);
    this.ckZ = paramCursor.getInt(5);
    this.cla = paramCursor.getInt(6);
  }

  public final void dN(int paramInt)
  {
    this.cvE = paramInt;
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
      localContentValues.put("bgflag", Integer.valueOf(this.cvE));
    String str3;
    String str2;
    if ((0x4 & this.bOY) != 0)
    {
      if (this.bRt == null)
      {
        str3 = "";
        localContentValues.put("path", str3);
      }
    }
    else
    {
      if ((0x8 & this.bOY) != 0)
      {
        if (this.ckX != null)
          break label188;
        str2 = "";
        label97: localContentValues.put("reserved1", str2);
      }
      if ((0x10 & this.bOY) != 0)
        if (this.ckY != null)
          break label196;
    }
    label188: label196: for (String str1 = ""; ; str1 = this.ckY)
    {
      localContentValues.put("reserved2", str1);
      if ((0x20 & this.bOY) != 0)
        localContentValues.put("reserved3", Integer.valueOf(this.ckZ));
      if ((0x40 & this.bOY) != 0)
        localContentValues.put("reserved4", Integer.valueOf(this.cla));
      return localContentValues;
      str3 = this.bRt;
      break;
      str2 = this.ckX;
      break label97;
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
 * Qualified Name:     com.tencent.mm.ab.a
 * JD-Core Version:    0.6.2
 */