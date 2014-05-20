package com.tencent.mm.protocal.a;

public final class fy extends com.tencent.mm.am.a
{
  private String appId;
  private String bQK;
  private String bQq;
  private long cAU;
  private String cgI;
  private String cxM;
  private String dCX;
  private int dHB;
  private String euP;
  public boolean fIh = false;
  public boolean fIi = false;
  public boolean fIj = false;
  private String fIk;
  public boolean fIl = false;
  private String fIm;
  public boolean fIn = false;
  public boolean fIo = false;
  public boolean fIp = false;
  public boolean fIq = false;
  public boolean fIr = false;
  public boolean fIs = false;
  public boolean fIt = false;
  private String fIu;
  public boolean fIv = false;

  public static boolean a(a.a.a.a.a parama, fy paramfy, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfy.dHB = parama.aPQ();
      paramfy.fIh = true;
      return true;
    case 2:
      paramfy.cgI = parama.aPS();
      paramfy.fIi = true;
      return true;
    case 3:
      paramfy.bQq = parama.aPS();
      paramfy.fIj = true;
      return true;
    case 4:
      paramfy.fIk = parama.aPS();
      paramfy.fIl = true;
      return true;
    case 5:
      paramfy.fIm = parama.aPS();
      paramfy.fIn = true;
      return true;
    case 6:
      paramfy.cAU = parama.aPW();
      paramfy.fIo = true;
      return true;
    case 7:
      paramfy.dCX = parama.aPS();
      paramfy.fIp = true;
      return true;
    case 8:
      paramfy.bQK = parama.aPS();
      paramfy.fIq = true;
      return true;
    case 9:
      paramfy.appId = parama.aPS();
      paramfy.fIr = true;
      return true;
    case 10:
      paramfy.cxM = parama.aPS();
      paramfy.fIs = true;
      return true;
    case 11:
      paramfy.euP = parama.aPS();
      paramfy.fIt = true;
      return true;
    case 12:
    }
    paramfy.fIu = parama.aPS();
    paramfy.fIv = true;
    return true;
  }

  public final long DL()
  {
    return this.cAU;
  }

  public final String Xe()
  {
    return this.cgI;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fIh == true)
      parama.by(1, this.dHB);
    if (this.cgI != null)
      parama.A(2, this.cgI);
    if (this.bQq != null)
      parama.A(3, this.bQq);
    if (this.fIk != null)
      parama.A(4, this.fIk);
    if (this.fIm != null)
      parama.A(5, this.fIm);
    if (this.fIo == true)
      parama.k(6, this.cAU);
    if (this.dCX != null)
      parama.A(7, this.dCX);
    if (this.bQK != null)
      parama.A(8, this.bQK);
    if (this.appId != null)
      parama.A(9, this.appId);
    if (this.cxM != null)
      parama.A(10, this.cxM);
    if (this.euP != null)
      parama.A(11, this.euP);
    if (this.fIu != null)
      parama.A(12, this.fIu);
  }

  public final int axS()
  {
    return this.dHB;
  }

  public final String axT()
  {
    return this.bQq;
  }

  public final String axU()
  {
    return this.fIk;
  }

  public final String axV()
  {
    return this.fIm;
  }

  public final String axW()
  {
    return this.dCX;
  }

  public final String axX()
  {
    return this.bQK;
  }

  public final String axY()
  {
    return this.cxM;
  }

  public final String axZ()
  {
    return this.fIu;
  }

  public final fy bM(long paramLong)
  {
    this.cAU = paramLong;
    this.fIo = true;
    return this;
  }

  public final String getAppId()
  {
    return this.appId;
  }

  public final fy ls(int paramInt)
  {
    this.dHB = paramInt;
    this.fIh = true;
    return this;
  }

  public final int ns()
  {
    boolean bool = this.fIh;
    int i = 0;
    if (bool == true)
      i = 0 + a.a.a.a.br(1, this.dHB);
    if (this.cgI != null)
      i += a.a.a.a.z(2, this.cgI);
    if (this.bQq != null)
      i += a.a.a.a.z(3, this.bQq);
    if (this.fIk != null)
      i += a.a.a.a.z(4, this.fIk);
    if (this.fIm != null)
      i += a.a.a.a.z(5, this.fIm);
    if (this.fIo == true)
      i += a.a.a.a.i(6, this.cAU);
    if (this.dCX != null)
      i += a.a.a.a.z(7, this.dCX);
    if (this.bQK != null)
      i += a.a.a.a.z(8, this.bQK);
    if (this.appId != null)
      i += a.a.a.a.z(9, this.appId);
    if (this.cxM != null)
      i += a.a.a.a.z(10, this.cxM);
    if (this.euP != null)
      i += a.a.a.a.z(11, this.euP);
    if (this.fIu != null)
      i += a.a.a.a.z(12, this.fIu);
    return i;
  }

  public final fy sa(String paramString)
  {
    this.cgI = paramString;
    this.fIi = true;
    return this;
  }

  public final fy sb(String paramString)
  {
    this.bQq = paramString;
    this.fIj = true;
    return this;
  }

  public final fy sc(String paramString)
  {
    this.fIk = paramString;
    this.fIl = true;
    return this;
  }

  public final fy sd(String paramString)
  {
    this.fIm = paramString;
    this.fIn = true;
    return this;
  }

  public final fy se(String paramString)
  {
    this.dCX = paramString;
    this.fIp = true;
    return this;
  }

  public final fy sf(String paramString)
  {
    this.bQK = paramString;
    this.fIq = true;
    return this;
  }

  public final fy sg(String paramString)
  {
    this.appId = paramString;
    this.fIr = true;
    return this;
  }

  public final fy sh(String paramString)
  {
    this.cxM = paramString;
    this.fIs = true;
    return this;
  }

  public final fy si(String paramString)
  {
    this.fIu = paramString;
    this.fIv = true;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fy
 * JD-Core Version:    0.6.2
 */