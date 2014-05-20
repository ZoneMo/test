package com.tencent.mm.ai;

import android.content.ContentValues;
import android.database.Cursor;

public final class q
{
  private int bOY = -1;
  private int cAG = 0;
  private String cAP = "";
  private int cAR = 0;
  private int cAS = 0;
  private int cAT = 0;
  private long cAU = 0L;
  private long cAV = 0L;
  private long cAW = 0L;
  private int cAX = 0;
  private int cAY = 0;
  private int cAZ = 0;
  private String cAu = "";
  private int cBa = 0;
  private int cBb = 0;
  private String cBc = "";
  private int ckU = 0;
  private int csY = 0;
  private int ctc = 0;
  private String cwF = "";
  private String rD = "";
  private int status = 0;
  private String user = "";

  public final int AF()
  {
    return this.ctc;
  }

  public final int AH()
  {
    return this.csY;
  }

  public final String DG()
  {
    if (this.cAP == null)
      return "";
    return this.cAP;
  }

  public final int DH()
  {
    return this.cAG;
  }

  public final int DI()
  {
    return this.cAR;
  }

  public final int DJ()
  {
    return this.cAS;
  }

  public final int DK()
  {
    return this.cAT;
  }

  public final long DL()
  {
    return this.cAU;
  }

  public final long DM()
  {
    return this.cAV;
  }

  public final long DN()
  {
    return this.cAW;
  }

  public final int DO()
  {
    return this.cAX;
  }

  public final int DP()
  {
    return this.cAY;
  }

  public final int DQ()
  {
    return this.cBa;
  }

  public final void DR()
  {
    this.cBb = 1;
  }

  public final int DS()
  {
    return this.cBb;
  }

  public final String DT()
  {
    if (this.cBc == null)
      return "";
    return this.cBc;
  }

  public final void G(long paramLong)
  {
    this.cAU = paramLong;
  }

  public final void H(long paramLong)
  {
    this.cAV = paramLong;
  }

  public final void I(long paramLong)
  {
    this.cAW = paramLong;
  }

  public final void cJ(int paramInt)
  {
    this.ckU = paramInt;
  }

  public final void cL(int paramInt)
  {
    this.bOY = paramInt;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.rD = paramCursor.getString(0);
    this.cwF = paramCursor.getString(1);
    this.csY = paramCursor.getInt(2);
    this.cAG = paramCursor.getInt(3);
    this.cAR = paramCursor.getInt(4);
    this.ckU = paramCursor.getInt(5);
    this.cAS = paramCursor.getInt(6);
    this.cAT = paramCursor.getInt(7);
    this.status = paramCursor.getInt(8);
    this.cAU = paramCursor.getLong(9);
    this.cAV = paramCursor.getLong(10);
    this.cAW = paramCursor.getLong(11);
    this.cAX = paramCursor.getInt(12);
    this.ctc = paramCursor.getInt(13);
    this.cAY = paramCursor.getInt(14);
    this.cAZ = paramCursor.getInt(15);
    this.user = paramCursor.getString(16);
    this.cAP = paramCursor.getString(17);
    this.cBa = paramCursor.getInt(18);
    this.cBb = paramCursor.getInt(19);
    this.cAu = paramCursor.getString(20);
    this.cBc = paramCursor.getString(21);
  }

  public final void dA(int paramInt)
  {
    this.csY = paramInt;
  }

  public final void dw(int paramInt)
  {
    this.cAY = paramInt;
  }

  public final void dy(int paramInt)
  {
    this.ctc = paramInt;
  }

  public final void eA(int paramInt)
  {
    this.cBa = paramInt;
  }

  public final void ev(int paramInt)
  {
    this.cAG = paramInt;
  }

  public final void ew(int paramInt)
  {
    this.cAR = paramInt;
  }

  public final void ex(int paramInt)
  {
    this.cAS = paramInt;
  }

  public final void ey(int paramInt)
  {
    this.cAT = paramInt;
  }

  public final void ez(int paramInt)
  {
    this.cAX = paramInt;
  }

  public final void gR(String paramString)
  {
    this.rD = paramString;
  }

  public final void gS(String paramString)
  {
    this.cAP = paramString;
  }

  public final void gT(String paramString)
  {
    this.cAu = paramString;
  }

  public final void gU(String paramString)
  {
    this.cBc = paramString;
  }

  public final String getFileName()
  {
    if (this.rD == null)
      return "";
    return this.rD;
  }

  public final int getStatus()
  {
    return this.status;
  }

  public final String getUser()
  {
    if (this.user == null)
      return "";
    return this.user;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("filename", getFileName());
    String str2;
    if ((0x2 & this.bOY) != 0)
    {
      if (this.cwF == null)
      {
        str2 = "";
        localContentValues.put("clientid", str2);
      }
    }
    else
    {
      if ((0x4 & this.bOY) != 0)
        localContentValues.put("msgsvrid", Integer.valueOf(this.csY));
      if ((0x8 & this.bOY) != 0)
        localContentValues.put("netoffset", Integer.valueOf(this.cAG));
      if ((0x10 & this.bOY) != 0)
        localContentValues.put("filenowsize", Integer.valueOf(this.cAR));
      if ((0x20 & this.bOY) != 0)
        localContentValues.put("totallen", Integer.valueOf(this.ckU));
      if ((0x40 & this.bOY) != 0)
        localContentValues.put("thumbnetoffset", Integer.valueOf(this.cAS));
      if ((0x80 & this.bOY) != 0)
        localContentValues.put("thumblen", Integer.valueOf(this.cAT));
      if ((0x100 & this.bOY) != 0)
        localContentValues.put("status", Integer.valueOf(this.status));
      if ((0x200 & this.bOY) != 0)
        localContentValues.put("createtime", Long.valueOf(this.cAU));
      if ((0x400 & this.bOY) != 0)
        localContentValues.put("lastmodifytime", Long.valueOf(this.cAV));
      if ((0x800 & this.bOY) != 0)
        localContentValues.put("downloadtime", Long.valueOf(this.cAW));
      if ((0x1000 & this.bOY) != 0)
        localContentValues.put("videolength", Integer.valueOf(this.cAX));
      if ((0x2000 & this.bOY) != 0)
        localContentValues.put("msglocalid", Integer.valueOf(this.ctc));
      if ((0x4000 & this.bOY) != 0)
        localContentValues.put("nettimes", Integer.valueOf(this.cAY));
      if ((0x8000 & this.bOY) != 0)
        localContentValues.put("cameratype", Integer.valueOf(this.cAZ));
      if ((0x10000 & this.bOY) != 0)
        localContentValues.put("user", getUser());
      if ((0x20000 & this.bOY) != 0)
        localContentValues.put("human", DG());
      if ((0x40000 & this.bOY) != 0)
        localContentValues.put("reserved1", Integer.valueOf(this.cBa));
      if ((0x80000 & this.bOY) != 0)
        localContentValues.put("reserved2", Integer.valueOf(this.cBb));
      if ((0x100000 & this.bOY) != 0)
        if (this.cAu != null)
          break label525;
    }
    label525: for (String str1 = ""; ; str1 = this.cAu)
    {
      localContentValues.put("reserved3", str1);
      if ((0x200000 & this.bOY) != 0)
        localContentValues.put("reserved4", DT());
      return localContentValues;
      str2 = this.cwF;
      break;
    }
  }

  public final void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public final void setUser(String paramString)
  {
    this.user = paramString;
  }

  public final int vR()
  {
    return this.ckU;
  }

  public final int vU()
  {
    return this.bOY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.q
 * JD-Core Version:    0.6.2
 */