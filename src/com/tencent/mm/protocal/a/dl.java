package com.tencent.mm.protocal.a;

public final class dl extends com.tencent.mm.am.a
{
  public int cqC;
  public String cqD;
  public String cqE;
  public String cqF;

  public static boolean a(a.a.a.a.a parama, dl paramdl, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramdl.cqC = parama.aPQ();
      return true;
    case 2:
      paramdl.cqD = parama.aPS();
      return true;
    case 3:
      paramdl.cqE = parama.aPS();
      return true;
    case 4:
    }
    paramdl.cqF = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.cqC);
    if (this.cqD != null)
      parama.A(2, this.cqD);
    if (this.cqE != null)
      parama.A(3, this.cqE);
    if (this.cqF != null)
      parama.A(4, this.cqF);
  }

  public final dl aM(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.cqC);
    if (this.cqD != null)
      i += a.a.a.a.z(2, this.cqD);
    if (this.cqE != null)
      i += a.a.a.a.z(3, this.cqE);
    if (this.cqF != null)
      i += a.a.a.a.z(4, this.cqF);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.dl
 * JD-Core Version:    0.6.2
 */