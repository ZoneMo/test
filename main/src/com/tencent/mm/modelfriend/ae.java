package com.tencent.mm.modelfriend;

import android.content.ContentValues;

public final class ae
{
  private int bOY = -1;
  private String cjA = "";
  private int cjx = 0;
  private int cjy = 0;
  private String cjz = "";
  private int cnB = 0;
  private int crg = 0;
  private String username = "";

  public final void dg(int paramInt)
  {
    this.crg = paramInt;
  }

  public final void dh(int paramInt)
  {
    this.cnB = paramInt;
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
      localContentValues.put("friendtype", Integer.valueOf(this.crg));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("updatetime", Integer.valueOf(this.cnB));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("reserved1", Integer.valueOf(this.cjx));
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("reserved2", Integer.valueOf(this.cjy));
    String str2;
    if ((0x20 & this.bOY) != 0)
    {
      if (this.cjz == null)
      {
        str2 = "";
        localContentValues.put("reserved3", str2);
      }
    }
    else if ((0x40 & this.bOY) != 0)
      if (this.cjA != null)
        break label181;
    label181: for (String str1 = ""; ; str1 = this.cjA)
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
 * Qualified Name:     com.tencent.mm.modelfriend.ae
 * JD-Core Version:    0.6.2
 */