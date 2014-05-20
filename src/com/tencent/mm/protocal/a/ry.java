package com.tencent.mm.protocal.a;

public final class ry extends com.tencent.mm.am.a
{
  public String Th;
  public String fEM;
  public String fQw;
  public int fzy;

  public static boolean a(a.a.a.a.a parama, ry paramry, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramry.Th = parama.aPS();
      return true;
    case 2:
      paramry.fEM = parama.aPS();
      return true;
    case 3:
      paramry.fQw = parama.aPS();
      return true;
    case 4:
    }
    paramry.fzy = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.Th != null)
      parama.A(1, this.Th);
    if (this.fEM != null)
      parama.A(2, this.fEM);
    if (this.fQw != null)
      parama.A(3, this.fQw);
    parama.by(4, this.fzy);
  }

  public final int ns()
  {
    String str = this.Th;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.Th);
    if (this.fEM != null)
      i += a.a.a.a.z(2, this.fEM);
    if (this.fQw != null)
      i += a.a.a.a.z(3, this.fQw);
    return i + a.a.a.a.br(4, this.fzy);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ry
 * JD-Core Version:    0.6.2
 */