package com.tencent.mm.m;

import android.content.ContentValues;
import android.database.Cursor;

public final class v
{
  private int bOY = -1;
  private int ckR;
  private int ckS;
  private String ckT;
  private int ckU;
  private int ckV;
  private int ckW;
  private String ckX;
  private String ckY;
  private int ckZ;
  private int cla;
  private String username;

  public v()
  {
    reset();
  }

  public final void cH(int paramInt)
  {
    this.ckR = paramInt;
  }

  public final void cI(int paramInt)
  {
    this.ckS = paramInt;
  }

  public final void cJ(int paramInt)
  {
    this.ckU = paramInt;
  }

  public final void cK(int paramInt)
  {
    this.ckV = paramInt;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.username = paramCursor.getString(0);
    this.ckR = paramCursor.getInt(1);
    this.ckS = paramCursor.getInt(2);
    this.ckT = paramCursor.getString(3);
    this.ckU = paramCursor.getInt(4);
    this.ckV = paramCursor.getInt(5);
    this.ckW = paramCursor.getInt(6);
    this.ckX = paramCursor.getString(7);
    this.ckY = paramCursor.getString(8);
    this.ckZ = paramCursor.getInt(9);
    this.cla = paramCursor.getInt(10);
  }

  public final void em(String paramString)
  {
    this.ckT = paramString;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    String str3;
    String str2;
    if ((0x1 & this.bOY) != 0)
    {
      if (this.username == null)
      {
        str3 = "";
        localContentValues.put("username", str3);
      }
    }
    else
    {
      if ((0x2 & this.bOY) != 0)
        localContentValues.put("imgwidth", Integer.valueOf(this.ckR));
      if ((0x4 & this.bOY) != 0)
        localContentValues.put("imgheigth", Integer.valueOf(this.ckS));
      if ((0x8 & this.bOY) != 0)
        localContentValues.put("imgformat", vQ());
      if ((0x10 & this.bOY) != 0)
        localContentValues.put("totallen", Integer.valueOf(this.ckU));
      if ((0x20 & this.bOY) != 0)
        localContentValues.put("startpos", Integer.valueOf(this.ckV));
      if ((0x40 & this.bOY) != 0)
        localContentValues.put("headimgtype", Integer.valueOf(this.ckW));
      if ((0x80 & this.bOY) != 0)
      {
        if (this.ckX != null)
          break label284;
        str2 = "";
        label190: localContentValues.put("reserved1", str2);
      }
      if ((0x100 & this.bOY) != 0)
        if (this.ckY != null)
          break label292;
    }
    label284: label292: for (String str1 = ""; ; str1 = this.ckY)
    {
      localContentValues.put("reserved2", str1);
      if ((0x200 & this.bOY) != 0)
        localContentValues.put("reserved3", Integer.valueOf(this.ckZ));
      if ((0x400 & this.bOY) != 0)
        localContentValues.put("reserved4", Integer.valueOf(this.cla));
      return localContentValues;
      str3 = this.username;
      break;
      str2 = this.ckX;
      break label190;
    }
  }

  public final void reset()
  {
    this.username = "";
    this.ckR = 0;
    this.ckS = 0;
    this.ckT = "";
    this.ckU = 0;
    this.ckV = 0;
    this.ckW = 0;
    this.ckX = "";
    this.ckY = "";
    this.ckZ = 0;
    this.cla = 0;
  }

  public final void setUsername(String paramString)
  {
    this.username = paramString;
  }

  public final boolean vN()
  {
    return this.ckV >= this.ckU;
  }

  public final int vO()
  {
    return this.ckR;
  }

  public final int vP()
  {
    return this.ckS;
  }

  public final String vQ()
  {
    if (this.ckT == null)
      return "";
    return this.ckT;
  }

  public final int vR()
  {
    return this.ckU;
  }

  public final int vS()
  {
    return this.ckV;
  }

  public final void vg()
  {
    this.bOY = -1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.v
 * JD-Core Version:    0.6.2
 */