package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;

public final class n
{
  private int bOY = -1;
  private int bTN = 0;
  private long bTP = 0L;
  private String bTQ = "";
  private int bTX = 0;
  private String bTY = "";
  private String bTZ = "";
  private String bUa = "";
  private String cie = "";
  private String cqG = "";
  private int cqH = 0;
  private String cqk = "";
  private String cql = "";
  private int status = 0;
  private int type = 0;
  private String username = "";
  private String wN = "";

  public final void A(long paramLong)
  {
    this.bTP = paramLong;
  }

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

  public final void bx(String paramString)
  {
    this.wN = paramString;
  }

  public final void bz(String paramString)
  {
    this.bTY = paramString;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.bTP = paramCursor.getLong(0);
    this.cqG = paramCursor.getString(1);
    this.cqH = paramCursor.getInt(2);
    this.status = paramCursor.getInt(3);
    this.username = paramCursor.getString(4);
    this.cie = paramCursor.getString(5);
    this.cqk = paramCursor.getString(6);
    this.cql = paramCursor.getString(7);
    this.bTN = paramCursor.getInt(8);
    this.bTX = paramCursor.getInt(9);
    this.bTZ = paramCursor.getString(10);
    this.bUa = paramCursor.getString(11);
    this.bTY = paramCursor.getString(12);
    this.wN = paramCursor.getString(13);
    this.type = paramCursor.getInt(14);
    this.bTQ = paramCursor.getString(15);
  }

  public final void da(int paramInt)
  {
    this.cqH = paramInt;
  }

  public final void fc(String paramString)
  {
    this.cie = paramString;
  }

  public final void fd(String paramString)
  {
    this.cqk = paramString;
  }

  public final void fe(String paramString)
  {
    this.cql = paramString;
  }

  public final void fu(String paramString)
  {
    this.cqG = paramString;
  }

  public final int getStatus()
  {
    return this.status;
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
      localContentValues.put("fbid", Long.valueOf(this.bTP));
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("fbname", zg());
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("fbimgkey", Integer.valueOf(this.cqH));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("status", Integer.valueOf(this.status));
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("username", getUsername());
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("nickname", yP());
    String str7;
    String str6;
    label185: String str5;
    label263: String str4;
    label293: String str3;
    label323: String str2;
    if ((0x40 & this.bOY) != 0)
    {
      if (this.cqk == null)
      {
        str7 = "";
        localContentValues.put("nicknamepyinitial", str7);
      }
    }
    else
    {
      if ((0x80 & this.bOY) != 0)
      {
        if (this.cql != null)
          break label421;
        str6 = "";
        localContentValues.put("nicknamequanpin", str6);
      }
      if ((0x100 & this.bOY) != 0)
        localContentValues.put("sex", Integer.valueOf(this.bTN));
      if ((0x200 & this.bOY) != 0)
        localContentValues.put("personalcard", Integer.valueOf(this.bTX));
      if ((0x400 & this.bOY) != 0)
      {
        if (this.bTZ != null)
          break label430;
        str5 = "";
        localContentValues.put("province", str5);
      }
      if ((0x800 & this.bOY) != 0)
      {
        if (this.bUa != null)
          break label439;
        str4 = "";
        localContentValues.put("city", str4);
      }
      if ((0x1000 & this.bOY) != 0)
      {
        if (this.bTY != null)
          break label448;
        str3 = "";
        localContentValues.put("signature", str3);
      }
      if ((0x2000 & this.bOY) != 0)
      {
        if (this.wN != null)
          break label457;
        str2 = "";
        label352: localContentValues.put("alias", str2);
      }
      if ((0x4000 & this.bOY) != 0)
        localContentValues.put("type", Integer.valueOf(this.type));
      if ((0x8000 & this.bOY) != 0)
        if (this.bTQ != null)
          break label465;
    }
    label421: label430: label439: label448: label457: label465: for (String str1 = ""; ; str1 = this.bTQ)
    {
      localContentValues.put("email", str1);
      return localContentValues;
      str7 = this.cqk;
      break;
      str6 = this.cql;
      break label185;
      str5 = this.bTZ;
      break label263;
      str4 = this.bUa;
      break label293;
      str3 = this.bTY;
      break label323;
      str2 = this.wN;
      break label352;
    }
  }

  public final void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public final void setUsername(String paramString)
  {
    this.username = paramString;
  }

  public final int vU()
  {
    return this.bOY;
  }

  public final void vg()
  {
    this.bOY = -1;
  }

  public final String yP()
  {
    if (this.cie == null)
      return "";
    return this.cie;
  }

  public final long zf()
  {
    return this.bTP;
  }

  public final String zg()
  {
    if (this.cqG == null)
      return "";
    return this.cqG;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.n
 * JD-Core Version:    0.6.2
 */