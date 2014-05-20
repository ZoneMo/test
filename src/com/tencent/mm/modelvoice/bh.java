package com.tencent.mm.modelvoice;

import android.content.ContentValues;
import android.database.Cursor;

public final class bh
{
  private int bOY = -1;
  private int cAG = 0;
  private String cAP = "";
  private int cAR = 0;
  private long cAU = 0L;
  private long cAV = 0L;
  private int cAY = 0;
  private int cBN = 0;
  private int cDe = 0;
  private int ckU = 0;
  private String ckY = "";
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

  public final long DL()
  {
    return this.cAU;
  }

  public final long DM()
  {
    return this.cAV;
  }

  public final int DP()
  {
    return this.cAY;
  }

  public final int EA()
  {
    return this.cDe;
  }

  public final String EB()
  {
    return this.cwF;
  }

  public final boolean Ex()
  {
    return (this.status == 5) || (this.status == 6);
  }

  public final boolean Ey()
  {
    return ((this.status > 1) && (this.status <= 3)) || (this.status == 8);
  }

  public final int Ez()
  {
    return this.cBN;
  }

  public final void G(long paramLong)
  {
    this.cAU = paramLong;
  }

  public final void H(long paramLong)
  {
    this.cAV = paramLong;
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
    this.user = paramCursor.getString(1);
    this.csY = paramCursor.getInt(2);
    this.cAG = paramCursor.getInt(3);
    this.cAR = paramCursor.getInt(4);
    this.ckU = paramCursor.getInt(5);
    this.status = paramCursor.getInt(6);
    this.cAU = paramCursor.getLong(7);
    this.cAV = paramCursor.getLong(8);
    this.cwF = paramCursor.getString(9);
    this.cDe = paramCursor.getInt(10);
    this.ctc = paramCursor.getInt(11);
    this.cAP = paramCursor.getString(12);
    this.cAY = paramCursor.getInt(13);
    this.ckY = paramCursor.getString(14);
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

  public final void eC(int paramInt)
  {
    this.cBN = paramInt;
  }

  public final void eD(int paramInt)
  {
    this.cDe = paramInt;
  }

  public final void ev(int paramInt)
  {
    this.cAG = paramInt;
  }

  public final void ew(int paramInt)
  {
    this.cAR = paramInt;
  }

  public final void gR(String paramString)
  {
    this.rD = paramString;
  }

  public final void gS(String paramString)
  {
    this.cAP = paramString;
  }

  public final String getFileName()
  {
    return this.rD;
  }

  public final int getStatus()
  {
    return this.status;
  }

  public final String getUser()
  {
    return this.user;
  }

  public final void hn(String paramString)
  {
    this.cwF = paramString;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("FileName", this.rD);
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("User", this.user);
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("MsgId", Integer.valueOf(this.csY));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("NetOffset", Integer.valueOf(this.cAG));
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("FileNowSize", Integer.valueOf(this.cAR));
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("TotalLen", Integer.valueOf(this.ckU));
    if ((0x40 & this.bOY) != 0)
      localContentValues.put("Status", Integer.valueOf(this.status));
    if ((0x80 & this.bOY) != 0)
      localContentValues.put("CreateTime", Long.valueOf(this.cAU));
    if ((0x100 & this.bOY) != 0)
      localContentValues.put("LastModifyTime", Long.valueOf(this.cAV));
    if ((0x200 & this.bOY) != 0)
      localContentValues.put("ClientId", this.cwF);
    if ((0x400 & this.bOY) != 0)
      localContentValues.put("VoiceLength", Integer.valueOf(this.cDe));
    if ((0x800 & this.bOY) != 0)
      localContentValues.put("MsgLocalId", Integer.valueOf(this.ctc));
    if ((0x1000 & this.bOY) != 0)
      localContentValues.put("Human", this.cAP);
    if ((0x2000 & this.bOY) != 0)
      localContentValues.put("reserved1", Integer.valueOf(this.cAY));
    if ((0x4000 & this.bOY) != 0)
      localContentValues.put("reserved2", this.ckY);
    return localContentValues;
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
 * Qualified Name:     com.tencent.mm.modelvoice.bh
 * JD-Core Version:    0.6.2
 */