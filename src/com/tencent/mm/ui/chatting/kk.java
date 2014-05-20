package com.tencent.mm.ui.chatting;

import com.tencent.mm.j.b;
import com.tencent.mm.storage.ak;

final class kk
{
  String bPE;
  String bPx;
  String bQs;
  String bQt;
  String bXF;
  String cWi;
  ak cad;
  int dws;
  boolean gJU;
  boolean gQK;
  String gQL;
  b gQM;
  boolean gQN;
  int gQO;
  int gQP;
  int position;
  String title;

  public kk()
  {
  }

  public kk(ak paramak, String paramString)
  {
    this(paramString);
    this.cad = paramak;
  }

  private kk(ak paramak, boolean paramBoolean, int paramInt1, String paramString, int paramInt2)
  {
    this(paramak, paramBoolean, paramInt1, paramString, paramInt2, false, null, null, null);
  }

  private kk(ak paramak, boolean paramBoolean, int paramInt1, String paramString, int paramInt2, byte paramByte)
  {
    this(paramak, paramBoolean, paramInt1, paramString, paramInt2);
  }

  public kk(ak paramak, boolean paramBoolean, int paramInt1, String paramString, int paramInt2, char paramChar)
  {
    this(paramak, paramBoolean, paramInt1, paramString, paramInt2, (byte)0);
  }

  public kk(ak paramak, boolean paramBoolean1, int paramInt1, String paramString1, int paramInt2, boolean paramBoolean2, String paramString2, String paramString3, String paramString4)
  {
    this(paramak, paramBoolean1, paramInt1, paramString1, paramInt2, paramBoolean2, paramString2, paramString3, paramString4, null);
  }

  public kk(ak paramak, boolean paramBoolean1, int paramInt1, String paramString1, int paramInt2, boolean paramBoolean2, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this(paramak, paramBoolean1, paramInt1, paramString1, paramInt2, paramBoolean2, paramString2, paramString3, paramString4, paramString5, null, null);
  }

  public kk(ak paramak, boolean paramBoolean1, int paramInt1, String paramString1, int paramInt2, boolean paramBoolean2, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this.cad = paramak;
    this.gJU = paramBoolean1;
    this.position = paramInt1;
    this.bPx = paramString1;
    this.dws = paramInt2;
    this.gQK = paramBoolean2;
    this.title = paramString2;
    this.bQs = paramString3;
    this.bQt = paramString4;
    this.gQL = paramString5;
    this.bPE = paramString6;
    this.bXF = paramString7;
  }

  public kk(ak paramak, boolean paramBoolean, int paramInt, String paramString1, String paramString2)
  {
    this(paramak, paramBoolean, paramInt, paramString1, 0, (byte)0);
    this.cWi = paramString2;
  }

  public kk(String paramString)
  {
    this.bPx = paramString;
    this.dws = 1;
  }

  public static kk a(b paramb, ak paramak)
  {
    kk localkk = new kk();
    localkk.gQM = paramb;
    localkk.cad = paramak;
    return localkk;
  }

  public static kk a(ak paramak, boolean paramBoolean, int paramInt)
  {
    kk localkk = new kk();
    localkk.cad = paramak;
    localkk.gJU = paramBoolean;
    localkk.position = paramInt;
    localkk.dws = 0;
    localkk.gQN = false;
    return localkk;
  }

  public static kk wG(String paramString)
  {
    kk localkk = new kk();
    localkk.dws = 7;
    localkk.bXF = paramString;
    return localkk;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.kk
 * JD-Core Version:    0.6.2
 */