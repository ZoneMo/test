package com.tencent.mm.protocal.a;

public final class aag extends com.tencent.mm.am.a
{
  public String fBM;
  public int fzr;

  public static boolean a(a.a.a.a.a parama, aag paramaag, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramaag.fBM = parama.aPS();
      return true;
    case 2:
    }
    paramaag.fzr = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fBM != null)
      parama.A(1, this.fBM);
    parama.by(2, this.fzr);
  }

  public final aag ci(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    return this;
  }

  public final int ns()
  {
    String str = this.fBM;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fBM);
    return i + a.a.a.a.br(2, this.fzr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.aag
 * JD-Core Version:    0.6.2
 */