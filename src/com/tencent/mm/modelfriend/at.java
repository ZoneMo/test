package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;

public final class at
{
  private int bOY = -1;
  private int crA = 0;
  private int crB = 0;
  private String crC = "";
  private String crD = "";
  private int crw = 0;
  private int crx = 0;
  private int cry = 0;
  private int crz = 0;

  public final int Aa()
  {
    return this.crB;
  }

  public final String Ab()
  {
    if (this.crC == null)
      return "";
    return this.crC;
  }

  public final String Ac()
  {
    if (this.crD == null)
      return "";
    return this.crD;
  }

  public final void cL(int paramInt)
  {
    this.bOY = paramInt;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.crw = paramCursor.getInt(0);
    this.crx = paramCursor.getInt(1);
    this.cry = paramCursor.getInt(2);
    this.crz = paramCursor.getInt(3);
    this.crA = paramCursor.getInt(4);
    this.crB = paramCursor.getInt(5);
    this.crC = paramCursor.getString(6);
    this.crD = paramCursor.getString(7);
  }

  public final void dk(int paramInt)
  {
    this.crw = paramInt;
  }

  public final void dl(int paramInt)
  {
    this.crx = paramInt;
  }

  public final void dm(int paramInt)
  {
    this.cry = paramInt;
  }

  public final void dn(int paramInt)
  {
    this.crz = paramInt;
  }

  public final void jdMethod_do(int paramInt)
  {
    this.crA = paramInt;
  }

  public final void dp(int paramInt)
  {
    this.crB = paramInt;
  }

  public final void fE(String paramString)
  {
    this.crC = paramString;
  }

  public final void fF(String paramString)
  {
    this.crD = paramString;
  }

  public final ContentValues zW()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("grouopid", Integer.valueOf(this.crw));
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("membernum", Integer.valueOf(this.crx));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("weixinnum", Integer.valueOf(this.cry));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("insert_time", Integer.valueOf(this.crz));
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("lastupdate_time", Integer.valueOf(this.crA));
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("needupdate", Integer.valueOf(this.crB));
    if ((0x40 & this.bOY) != 0)
      localContentValues.put("updatekey", Ab());
    if ((0x80 & this.bOY) != 0)
      localContentValues.put("groupname", Ac());
    return localContentValues;
  }

  public final int zX()
  {
    return this.crw;
  }

  public final int zY()
  {
    return this.crx;
  }

  public final int zZ()
  {
    return this.cry;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.at
 * JD-Core Version:    0.6.2
 */