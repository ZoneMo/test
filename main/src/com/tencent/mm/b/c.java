package com.tencent.mm.b;

import a.a.a.b;

public final class c extends com.tencent.mm.am.a
{
  private String bKm;
  private boolean bKn;
  private int bKo;
  private boolean bKp;
  private String bKq;
  private boolean bKr;
  private int bKs;
  private boolean bKt;
  private String bKu;
  private boolean bKv;
  private String bKw;
  private boolean bKx;

  public static c l(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = locala.aPY();
    c localc = new c();
    if (i <= 0)
      return localc.nr();
    int j;
    switch (i)
    {
    default:
      j = 0;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      if (j == 0)
        locala.aPZ();
      i = locala.aPY();
      break;
      localc.az(locala.aPS());
      j = 1;
      continue;
      localc.bKo = locala.aPP();
      localc.bKp = true;
      j = 1;
      continue;
      localc.bKq = locala.aPS();
      localc.bKr = true;
      j = 1;
      continue;
      localc.bKs = locala.aPP();
      localc.bKt = true;
      j = 1;
      continue;
      localc.bKu = locala.aPS();
      localc.bKv = true;
      j = 1;
      continue;
      localc.bKw = locala.aPS();
      localc.bKx = true;
      j = 1;
    }
  }

  private c nr()
  {
    if (!this.bKn)
      throw new b("Not all required fields were included (false = not included in message),  apkMd5:" + this.bKn);
    return this;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.A(1, this.bKm);
    if (this.bKp)
      parama.bx(2, this.bKo);
    if (this.bKr)
      parama.A(3, this.bKq);
    if (this.bKt)
      parama.bx(4, this.bKs);
    if (this.bKv)
      parama.A(5, this.bKu);
    if (this.bKx)
      parama.A(6, this.bKw);
  }

  public final c az(String paramString)
  {
    this.bKm = paramString;
    this.bKn = true;
    return this;
  }

  public final String ng()
  {
    return this.bKm;
  }

  public final int nh()
  {
    return this.bKo;
  }

  public final boolean ni()
  {
    return this.bKp;
  }

  public final String nj()
  {
    return this.bKq;
  }

  public final boolean nk()
  {
    return this.bKr;
  }

  public final int nl()
  {
    return this.bKs;
  }

  public final boolean nm()
  {
    return this.bKt;
  }

  public final String nn()
  {
    return this.bKu;
  }

  public final boolean no()
  {
    return this.bKv;
  }

  public final String np()
  {
    return this.bKw;
  }

  public final boolean nq()
  {
    return this.bKx;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.b.b.a.z(1, this.bKm);
    if (this.bKp)
      i += a.a.a.a.bq(2, this.bKo);
    if (this.bKr)
      i += a.a.a.b.b.a.z(3, this.bKq);
    if (this.bKt)
      i += a.a.a.a.bq(4, this.bKs);
    if (this.bKv)
      i += a.a.a.b.b.a.z(5, this.bKu);
    if (this.bKx)
      i += a.a.a.b.b.a.z(6, this.bKw);
    return i + 0;
  }

  public final byte[] toByteArray()
  {
    nr();
    return super.toByteArray();
  }

  public final String toString()
  {
    String str = new StringBuilder(String.valueOf("")).append(getClass().getName()).append("(").toString() + "apkMd5 = " + this.bKm + "   ";
    if (this.bKp)
      str = str + "channelId = " + this.bKo + "   ";
    if (this.bKr)
      str = str + "profileDeviceType = " + this.bKq + "   ";
    if (this.bKt)
      str = str + "updateMode = " + this.bKs + "   ";
    if (this.bKv)
      str = str + "buildVersion = " + this.bKu + "   ";
    if (this.bKx)
      str = str + "marketUrl = " + this.bKw + "   ";
    return str + ")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.b.c
 * JD-Core Version:    0.6.2
 */