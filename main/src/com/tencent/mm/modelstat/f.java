package com.tencent.mm.modelstat;

import android.content.ContentValues;
import android.database.Cursor;

public final class f
{
  private static final String czk = localStringBuilder.toString();
  private int bOY = -2;
  private int cyL = 0;
  private int cyM = 0;
  private int cyN = 0;
  private int cyO = 0;
  private int cyP = 0;
  private int cyQ = 0;
  private int cyR = 0;
  private int cyS = 0;
  private int cyT = 0;
  private int cyU = 0;
  private int cyV = 0;
  private int cyW = 0;
  private int cyX = 0;
  private int cyY = 0;
  private int cyZ = 0;
  private int cza = 0;
  private int czb = 0;
  private int czc = 0;
  private int czd = 0;
  private int cze = 0;
  private int czf = 0;
  private int czg = 0;
  private int czh = 0;
  private int czi = 0;
  private int czj = 0;
  private int id = 0;

  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("NetStatInfo: \n");
    localStringBuilder.append("|- text in=%d/%dB, out=%d/%dB\n");
    localStringBuilder.append("|- image in=%d/%dB, out=%d/%dB\n");
    localStringBuilder.append("|- voice in=%d/%dB, out=%d/%dB\n");
    localStringBuilder.append("|- video in=%d/%dB, out=%d/%dB\n");
    localStringBuilder.append("|- mobile in=%dB/%dB, out=%dB/%dB\n");
    localStringBuilder.append("`- wifi in=%dB/%dB, out=%dB/%dB\n");
  }

  public final int CP()
  {
    return this.cyL;
  }

  public final int CQ()
  {
    return this.cyU;
  }

  public final int CR()
  {
    return this.cyV;
  }

  public final int CS()
  {
    return this.cyW;
  }

  public final int CT()
  {
    return this.cyX;
  }

  public final int CU()
  {
    return this.czg;
  }

  public final int CV()
  {
    return this.czh;
  }

  public final int CW()
  {
    return this.czi;
  }

  public final int CX()
  {
    return this.czj;
  }

  public final boolean a(f paramf)
  {
    this.bOY = (0x1 | paramf.bOY);
    this.cyM += paramf.cyN;
    this.cyN += paramf.cyN;
    this.cyO += paramf.cyP;
    this.cyP += paramf.cyP;
    this.cyQ += paramf.cyQ;
    this.cyR += paramf.cyR;
    this.cyS += paramf.cyS;
    this.cyT += paramf.cyT;
    this.cyU += paramf.cyU;
    this.cyV += paramf.cyV;
    this.cyW += paramf.cyW;
    this.cyX += paramf.cyX;
    this.cyY += paramf.cyZ;
    this.cyZ += paramf.cyZ;
    this.cza += paramf.czb;
    this.czb += paramf.czb;
    this.czc += paramf.czc;
    this.czd += paramf.czd;
    this.cze += paramf.cze;
    this.czf += paramf.czf;
    this.czg += paramf.czg;
    this.czh += paramf.czh;
    this.czi += paramf.czi;
    this.czj += paramf.czj;
    return (this.cyU > 4096) || (this.cyV > 4096) || (this.czg > 4096) || (this.czh > 4096);
  }

  public final void cL(int paramInt)
  {
    this.bOY = paramInt;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.cyL = paramCursor.getInt(1);
    this.cyM = paramCursor.getInt(2);
    this.cyN = paramCursor.getInt(3);
    this.cyO = paramCursor.getInt(4);
    this.cyP = paramCursor.getInt(5);
    this.cyQ = paramCursor.getInt(6);
    this.cyR = paramCursor.getInt(7);
    this.cyS = paramCursor.getInt(8);
    this.cyT = paramCursor.getInt(9);
    this.cyU = paramCursor.getInt(10);
    this.cyV = paramCursor.getInt(11);
    this.cyW = paramCursor.getInt(12);
    this.cyX = paramCursor.getInt(13);
    this.cyY = paramCursor.getInt(14);
    this.cyZ = paramCursor.getInt(15);
    this.cza = paramCursor.getInt(16);
    this.czb = paramCursor.getInt(17);
    this.czc = paramCursor.getInt(18);
    this.czd = paramCursor.getInt(19);
    this.cze = paramCursor.getInt(20);
    this.czf = paramCursor.getInt(21);
    this.czg = paramCursor.getInt(22);
    this.czh = paramCursor.getInt(23);
    this.czi = paramCursor.getInt(24);
    this.czj = paramCursor.getInt(25);
  }

  public final void dU(int paramInt)
  {
    this.cyL = paramInt;
  }

  public final void dV(int paramInt)
  {
    this.cyN = paramInt;
  }

  public final void dW(int paramInt)
  {
    this.cyP = paramInt;
  }

  public final void dX(int paramInt)
  {
    this.cyR = paramInt;
  }

  public final void dY(int paramInt)
  {
    this.cyT = paramInt;
  }

  public final void dZ(int paramInt)
  {
    this.cyU = paramInt;
  }

  public final void ea(int paramInt)
  {
    this.cyV = paramInt;
  }

  public final void eb(int paramInt)
  {
    this.cyW = paramInt;
  }

  public final void ec(int paramInt)
  {
    this.cyX = paramInt;
  }

  public final void ed(int paramInt)
  {
    this.cyZ = paramInt;
  }

  public final void ee(int paramInt)
  {
    this.czb = paramInt;
  }

  public final void ef(int paramInt)
  {
    this.czd = paramInt;
  }

  public final void eg(int paramInt)
  {
    this.czf = paramInt;
  }

  public final void eh(int paramInt)
  {
    this.czg = paramInt;
  }

  public final void ei(int paramInt)
  {
    this.czh = paramInt;
  }

  public final void ej(int paramInt)
  {
    this.czi = paramInt;
  }

  public final void ek(int paramInt)
  {
    this.czj = paramInt;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("peroid", Integer.valueOf(this.cyL));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("textCountIn", Integer.valueOf(this.cyM));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("textBytesIn", Integer.valueOf(this.cyN));
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("imageCountIn", Integer.valueOf(this.cyO));
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("imageBytesIn", Integer.valueOf(this.cyP));
    if ((0x40 & this.bOY) != 0)
      localContentValues.put("voiceCountIn", Integer.valueOf(this.cyQ));
    if ((0x80 & this.bOY) != 0)
      localContentValues.put("voiceBytesIn", Integer.valueOf(this.cyR));
    if ((0x100 & this.bOY) != 0)
      localContentValues.put("videoCountIn", Integer.valueOf(this.cyS));
    if ((0x200 & this.bOY) != 0)
      localContentValues.put("videoBytesIn", Integer.valueOf(this.cyT));
    if ((0x400 & this.bOY) != 0)
      localContentValues.put("mobileBytesIn", Integer.valueOf(this.cyU));
    if ((0x800 & this.bOY) != 0)
      localContentValues.put("wifiBytesIn", Integer.valueOf(this.cyV));
    if ((0x1000 & this.bOY) != 0)
      localContentValues.put("sysMobileBytesIn", Integer.valueOf(this.cyW));
    if ((0x2000 & this.bOY) != 0)
      localContentValues.put("sysWifiBytesIn", Integer.valueOf(this.cyX));
    if ((0x4000 & this.bOY) != 0)
      localContentValues.put("textCountOut", Integer.valueOf(this.cyY));
    if ((0x8000 & this.bOY) != 0)
      localContentValues.put("textBytesOut", Integer.valueOf(this.cyZ));
    if ((0x10000 & this.bOY) != 0)
      localContentValues.put("imageCountOut", Integer.valueOf(this.cza));
    if ((0x20000 & this.bOY) != 0)
      localContentValues.put("imageBytesOut", Integer.valueOf(this.czb));
    if ((0x40000 & this.bOY) != 0)
      localContentValues.put("voiceCountOut", Integer.valueOf(this.czc));
    if ((0x80000 & this.bOY) != 0)
      localContentValues.put("voiceBytesOut", Integer.valueOf(this.czd));
    if ((0x100000 & this.bOY) != 0)
      localContentValues.put("videoCountOut", Integer.valueOf(this.cze));
    if ((0x200000 & this.bOY) != 0)
      localContentValues.put("videoBytesOut", Integer.valueOf(this.czf));
    if ((0x400000 & this.bOY) != 0)
      localContentValues.put("mobileBytesOut", Integer.valueOf(this.czg));
    if ((0x800000 & this.bOY) != 0)
      localContentValues.put("wifiBytesOut", Integer.valueOf(this.czh));
    if ((0x1000000 & this.bOY) != 0)
      localContentValues.put("sysMobileBytesOut", Integer.valueOf(this.czi));
    if ((0x2000000 & this.bOY) != 0)
      localContentValues.put("sysWifiBytesOut", Integer.valueOf(this.czj));
    return localContentValues;
  }

  public final String toString()
  {
    String str = czk;
    Object[] arrayOfObject = new Object[24];
    arrayOfObject[0] = Integer.valueOf(this.cyM);
    arrayOfObject[1] = Integer.valueOf(this.cyN);
    arrayOfObject[2] = Integer.valueOf(this.cyY);
    arrayOfObject[3] = Integer.valueOf(this.cyZ);
    arrayOfObject[4] = Integer.valueOf(this.cyO);
    arrayOfObject[5] = Integer.valueOf(this.cyP);
    arrayOfObject[6] = Integer.valueOf(this.cza);
    arrayOfObject[7] = Integer.valueOf(this.czb);
    arrayOfObject[8] = Integer.valueOf(this.cyQ);
    arrayOfObject[9] = Integer.valueOf(this.cyR);
    arrayOfObject[10] = Integer.valueOf(this.czc);
    arrayOfObject[11] = Integer.valueOf(this.czd);
    arrayOfObject[12] = Integer.valueOf(this.cyS);
    arrayOfObject[13] = Integer.valueOf(this.cyT);
    arrayOfObject[14] = Integer.valueOf(this.cze);
    arrayOfObject[15] = Integer.valueOf(this.czf);
    arrayOfObject[16] = Integer.valueOf(this.cyU);
    arrayOfObject[17] = Integer.valueOf(this.cyW);
    arrayOfObject[18] = Integer.valueOf(this.czg);
    arrayOfObject[19] = Integer.valueOf(this.czi);
    arrayOfObject[20] = Integer.valueOf(this.cyV);
    arrayOfObject[21] = Integer.valueOf(this.cyX);
    arrayOfObject[22] = Integer.valueOf(this.czh);
    arrayOfObject[23] = Integer.valueOf(this.czj);
    return String.format(str, arrayOfObject);
  }

  public final int vU()
  {
    return this.bOY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.f
 * JD-Core Version:    0.6.2
 */