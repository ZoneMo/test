package com.tencent.mm.protocal.a;

public final class fu extends com.tencent.mm.am.a
{
  private double bOZ;
  private double bPa;
  private int bPb;
  private String bPc;
  public boolean fHF = false;
  public boolean fHG = false;
  public boolean fHH = false;
  public boolean fHI = false;
  public boolean fHJ = false;
  private String label;

  public static boolean a(a.a.a.a.a parama, fu paramfu, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfu.bPa = parama.aPU();
      paramfu.fHF = true;
      return true;
    case 2:
      paramfu.bOZ = parama.aPU();
      paramfu.fHG = true;
      return true;
    case 3:
      paramfu.bPb = parama.aPQ();
      paramfu.fHH = true;
      return true;
    case 4:
      paramfu.label = parama.aPS();
      paramfu.fHI = true;
      return true;
    case 5:
    }
    paramfu.bPc = parama.aPS();
    paramfu.fHJ = true;
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fHF == true)
      parama.a(1, this.bPa);
    if (this.fHG == true)
      parama.a(2, this.bOZ);
    if (this.fHH == true)
      parama.by(3, this.bPb);
    if (this.label != null)
      parama.A(4, this.label);
    if (this.bPc != null)
      parama.A(5, this.bPc);
  }

  public final double axD()
  {
    return this.bPa;
  }

  public final double axE()
  {
    return this.bOZ;
  }

  public final int axF()
  {
    return this.bPb;
  }

  public final String axG()
  {
    return this.bPc;
  }

  public final fu f(double paramDouble)
  {
    this.bPa = paramDouble;
    this.fHF = true;
    return this;
  }

  public final fu g(double paramDouble)
  {
    this.bOZ = paramDouble;
    this.fHG = true;
    return this;
  }

  public final String kI()
  {
    return this.label;
  }

  public final fu lp(int paramInt)
  {
    this.bPb = paramInt;
    this.fHH = true;
    return this;
  }

  public final int ns()
  {
    boolean bool = this.fHF;
    int i = 0;
    if (bool == true)
      i = 0 + a.a.a.a.oJ(1);
    if (this.fHG == true)
      i += a.a.a.a.oJ(2);
    if (this.fHH == true)
      i += a.a.a.a.br(3, this.bPb);
    if (this.label != null)
      i += a.a.a.a.z(4, this.label);
    if (this.bPc != null)
      i += a.a.a.a.z(5, this.bPc);
    return i;
  }

  public final fu rR(String paramString)
  {
    this.label = paramString;
    this.fHI = true;
    return this;
  }

  public final fu rS(String paramString)
  {
    this.bPc = paramString;
    this.fHJ = true;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fu
 * JD-Core Version:    0.6.2
 */