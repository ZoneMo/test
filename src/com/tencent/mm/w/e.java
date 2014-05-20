package com.tencent.mm.w;

import android.content.ContentValues;
import android.database.Cursor;

public final class e
{
  private int bOY = -2;
  private int bUd;
  private int ckU;
  private long csX;
  private int csY;
  private String csZ = "";
  private String cta = "";
  private int ctb;
  private int ctc;
  private int ctd;
  private int cte = 0;
  private String ctf = "";
  private int offset;
  private int status;

  public final int AD()
  {
    return this.ctd;
  }

  public final int AE()
  {
    return this.ctb;
  }

  public final int AF()
  {
    return this.ctc;
  }

  public final long AG()
  {
    return this.csX;
  }

  public final int AH()
  {
    return this.csY;
  }

  public final String AI()
  {
    return this.csZ;
  }

  public final String AJ()
  {
    return this.cta;
  }

  public final int AK()
  {
    return this.cte;
  }

  public final boolean AL()
  {
    return (this.offset == this.ckU) && (this.ckU != 0);
  }

  public final boolean AM()
  {
    return this.cte > 0;
  }

  public final String AN()
  {
    return this.ctf;
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
    this.csX = paramCursor.getInt(0);
    this.csY = paramCursor.getInt(1);
    this.offset = paramCursor.getInt(2);
    this.ckU = paramCursor.getInt(3);
    this.csZ = paramCursor.getString(4);
    this.cta = paramCursor.getString(5);
    this.ctb = paramCursor.getInt(6);
    this.ctc = paramCursor.getInt(7);
    this.status = paramCursor.getInt(8);
    this.ctd = paramCursor.getInt(9);
    this.cte = paramCursor.getInt(10);
    this.bUd = paramCursor.getInt(11);
    this.ctf = paramCursor.getString(12);
  }

  public final void dA(int paramInt)
  {
    this.csY = paramInt;
  }

  public final void dB(int paramInt)
  {
    this.cte = paramInt;
  }

  public final void dw(int paramInt)
  {
    this.ctd = paramInt;
  }

  public final void dx(int paramInt)
  {
    this.ctb = paramInt;
  }

  public final void dy(int paramInt)
  {
    this.ctc = paramInt;
  }

  public final void dz(int paramInt)
  {
    this.csX = paramInt;
  }

  public final void fR(String paramString)
  {
    this.csZ = paramString;
  }

  public final void fS(String paramString)
  {
    this.cta = paramString;
  }

  public final void fT(String paramString)
  {
    this.ctf = paramString;
  }

  public final int getOffset()
  {
    return this.offset;
  }

  public final int getSource()
  {
    return this.bUd;
  }

  public final int getStatus()
  {
    return this.status;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("id", Long.valueOf(this.csX));
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("msgSvrId", Integer.valueOf(this.csY));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("offset", Integer.valueOf(this.offset));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("totalLen", Integer.valueOf(this.ckU));
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("bigImgPath", this.csZ);
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("thumbImgPath", this.cta);
    if ((0x40 & this.bOY) != 0)
      localContentValues.put("createtime", Integer.valueOf(this.ctb));
    if ((0x80 & this.bOY) != 0)
      localContentValues.put("msglocalid", Integer.valueOf(this.ctc));
    if ((0x100 & this.bOY) != 0)
      localContentValues.put("status", Integer.valueOf(this.status));
    if ((0x200 & this.bOY) != 0)
      localContentValues.put("nettimes", Integer.valueOf(this.ctd));
    if ((0x400 & this.bOY) != 0)
      localContentValues.put("reserved1", Integer.valueOf(this.cte));
    if ((0x800 & this.bOY) != 0)
      localContentValues.put("reserved2", Integer.valueOf(this.bUd));
    if ((0x1000 & this.bOY) != 0)
      localContentValues.put("reserved3", this.ctf);
    return localContentValues;
  }

  public final void setOffset(int paramInt)
  {
    this.offset = paramInt;
  }

  public final void setSource(int paramInt)
  {
    this.bUd = paramInt;
  }

  public final void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public final int vR()
  {
    return this.ckU;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.e
 * JD-Core Version:    0.6.2
 */