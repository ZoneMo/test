package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;

public final class x
{
  private int bOY = -1;
  private int bTN = 0;
  private int bTX = 0;
  private String bTY = "";
  private String bTZ = "";
  private String bUa = "";
  private String username = "";

  public final void bA(String paramString)
  {
    this.bTZ = paramString;
  }

  public final void bB(String paramString)
  {
    this.bUa = paramString;
  }

  public final void bL(int paramInt)
  {
    this.bTN = paramInt;
  }

  public final void bN(int paramInt)
  {
    this.bTX = paramInt;
  }

  public final void bz(String paramString)
  {
    this.bTY = paramString;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.username = paramCursor.getString(0);
    this.bTN = paramCursor.getInt(1);
    this.bTX = paramCursor.getInt(2);
    this.bTZ = paramCursor.getString(3);
    this.bUa = paramCursor.getString(4);
    this.bTY = paramCursor.getString(5);
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
      localContentValues.put("sex", Integer.valueOf(this.bTN));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("personalcard", Integer.valueOf(this.bTX));
    String str3;
    String str2;
    if ((0x8 & this.bOY) != 0)
    {
      if (this.bTZ == null)
      {
        str3 = "";
        localContentValues.put("province", str3);
      }
    }
    else
    {
      if ((0x10 & this.bOY) != 0)
      {
        if (this.bUa != null)
          break label165;
        str2 = "";
        label120: localContentValues.put("city", str2);
      }
      if ((0x20 & this.bOY) != 0)
        if (this.bTY != null)
          break label173;
    }
    label165: label173: for (String str1 = ""; ; str1 = this.bTY)
    {
      localContentValues.put("signature", str1);
      return localContentValues;
      str3 = this.bTZ;
      break;
      str2 = this.bUa;
      break label120;
    }
  }

  public final int rk()
  {
    return this.bTN;
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
 * Qualified Name:     com.tencent.mm.modelfriend.x
 * JD-Core Version:    0.6.2
 */