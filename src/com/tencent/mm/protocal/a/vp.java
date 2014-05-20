package com.tencent.mm.protocal.a;

public final class vp extends com.tencent.mm.am.a
{
  public String cqA;
  public long cqB;
  public int cqz;
  public int fWj;

  public static boolean a(a.a.a.a.a parama, vp paramvp, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramvp.cqz = parama.aPQ();
      return true;
    case 2:
      paramvp.cqA = parama.aPS();
      return true;
    case 3:
      paramvp.cqB = parama.aPW();
      return true;
    case 4:
    }
    paramvp.fWj = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.cqz);
    if (this.cqA != null)
      parama.A(2, this.cqA);
    parama.k(3, this.cqB);
    parama.by(4, this.fWj);
  }

  public final vp bV(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.cqz);
    if (this.cqA != null)
      i += a.a.a.a.z(2, this.cqA);
    return i + a.a.a.a.i(3, this.cqB) + a.a.a.a.br(4, this.fWj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.vp
 * JD-Core Version:    0.6.2
 */