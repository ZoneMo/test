package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;

public final class av
{
  private int bOY = -1;
  private String cif = "";
  private String ckX = "";
  private String ckY = "";
  private int ckZ = 0;
  private int cla = 0;
  private long crE = 0L;
  private int crF = 0;
  private int crG = 0;
  private String crH = "";
  private String crI = "";
  private String crJ = "";
  private String crK = "";
  private String crL = "";
  private String crM = "";
  private String crN = "";
  private String crO = "";
  private String username = "";

  public final ContentValues Ae()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("qq", Long.valueOf(this.crE));
    int i;
    String str6;
    label144: String str5;
    label173: String str4;
    label224: String str3;
    label254: String str2;
    if ((0x2 & this.bOY) != 0)
    {
      i = this.crF;
      if (i == 0)
        localContentValues.put("wexinstatus", Integer.valueOf(65536));
    }
    else
    {
      if ((0x4 & this.bOY) != 0)
        localContentValues.put("groupid", Integer.valueOf(this.crG));
      if ((0x8 & this.bOY) != 0)
        localContentValues.put("username", getUsername());
      if ((0x10 & this.bOY) != 0)
        localContentValues.put("nickname", kn());
      if ((0x20 & this.bOY) != 0)
      {
        if (this.crI != null)
          break label378;
        str6 = "";
        localContentValues.put("pyinitial", str6);
      }
      if ((0x40 & this.bOY) != 0)
      {
        if (this.cif != null)
          break label387;
        str5 = "";
        localContentValues.put("quanpin", str5);
      }
      if ((0x80 & this.bOY) != 0)
        localContentValues.put("qqnickname", Ah());
      if ((0x100 & this.bOY) != 0)
      {
        if (this.crK != null)
          break label396;
        str4 = "";
        localContentValues.put("qqpyinitial", str4);
      }
      if ((0x200 & this.bOY) != 0)
      {
        if (this.crL != null)
          break label405;
        str3 = "";
        localContentValues.put("qqquanpin", str3);
      }
      if ((0x400 & this.bOY) != 0)
        localContentValues.put("qqremark", Ai());
      if ((0x800 & this.bOY) != 0)
      {
        if (this.crN != null)
          break label414;
        str2 = "";
        label304: localContentValues.put("qqremarkpyinitial", str2);
      }
      if ((0x1000 & this.bOY) != 0)
        if (this.crO != null)
          break label422;
    }
    label387: label396: label405: label414: label422: for (String str1 = ""; ; str1 = this.crO)
    {
      localContentValues.put("qqremarkquanpin", str1);
      if ((0x8000 & this.bOY) != 0)
        localContentValues.put("reserved3", Integer.valueOf(this.ckZ));
      return localContentValues;
      localContentValues.put("wexinstatus", Integer.valueOf(i));
      break;
      label378: str6 = this.crI;
      break label144;
      str5 = this.cif;
      break label173;
      str4 = this.crK;
      break label224;
      str3 = this.crL;
      break label254;
      str2 = this.crN;
      break label304;
    }
  }

  public final long Af()
  {
    return this.crE;
  }

  public final int Ag()
  {
    return this.crF;
  }

  public final String Ah()
  {
    if (this.crJ == null)
      return "";
    return this.crJ;
  }

  public final String Ai()
  {
    if (this.crM == null)
      return "";
    return this.crM;
  }

  public final void Aj()
  {
    this.ckZ = (0x1 | this.ckZ);
  }

  public final void B(long paramLong)
  {
    this.crE = paramLong;
  }

  public final void bt(String paramString)
  {
    this.crH = paramString;
  }

  public final void bv(String paramString)
  {
    this.crI = paramString;
  }

  public final void bw(String paramString)
  {
    this.cif = paramString;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.crE = paramCursor.getLong(0);
    int i = paramCursor.getInt(1);
    if (i == 65536);
    for (this.crF = 0; ; this.crF = i)
    {
      this.crG = paramCursor.getInt(2);
      this.username = paramCursor.getString(3);
      this.crH = paramCursor.getString(4);
      this.crI = paramCursor.getString(5);
      this.cif = paramCursor.getString(6);
      this.crJ = paramCursor.getString(7);
      this.crK = paramCursor.getString(8);
      this.crL = paramCursor.getString(9);
      this.crM = paramCursor.getString(10);
      this.crN = paramCursor.getString(11);
      this.crO = paramCursor.getString(12);
      this.ckX = paramCursor.getString(13);
      this.ckY = paramCursor.getString(14);
      this.ckZ = paramCursor.getInt(15);
      this.cla = paramCursor.getInt(16);
      return;
    }
  }

  public final void ds(int paramInt)
  {
    this.crF = paramInt;
  }

  public final void dt(int paramInt)
  {
    this.crG = paramInt;
  }

  public final void fG(String paramString)
  {
    this.crJ = paramString;
  }

  public final void fH(String paramString)
  {
    this.crK = paramString;
  }

  public final void fI(String paramString)
  {
    this.crL = paramString;
  }

  public final void fJ(String paramString)
  {
    this.crM = paramString;
  }

  public final void fK(String paramString)
  {
    this.crN = paramString;
  }

  public final void fL(String paramString)
  {
    this.crO = paramString;
  }

  public final String getDisplayName()
  {
    if ((Ai() == null) || (Ai().length() <= 0))
      return Ah();
    return Ai();
  }

  public final String getUsername()
  {
    if (this.username == null)
      return "";
    return this.username;
  }

  public final String kn()
  {
    if (this.crH == null)
      return "";
    return this.crH;
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
 * Qualified Name:     com.tencent.mm.modelfriend.av
 * JD-Core Version:    0.6.2
 */