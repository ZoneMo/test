package com.tencent.mm.protocal.a;

public final class ny extends com.tencent.mm.am.a
{
  public String eBo;
  public String fEJ;
  public int fOV;
  public int fOW;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEJ != null)
      parama.A(1, this.fEJ);
    if (this.eBo != null)
      parama.A(2, this.eBo);
    parama.by(3, this.fOV);
    parama.by(4, this.fOW);
  }

  public final int ns()
  {
    String str = this.fEJ;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fEJ);
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    return i + a.a.a.a.br(3, this.fOV) + a.a.a.a.br(4, this.fOW);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ny
 * JD-Core Version:    0.6.2
 */