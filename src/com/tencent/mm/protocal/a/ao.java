package com.tencent.mm.protocal.a;

public final class ao extends rs
{
  public String fAi;
  public String fAk;
  public int fAs;
  public int fAt;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fAi != null)
      parama.A(2, this.fAi);
    if (this.fAk != null)
      parama.A(3, this.fAk);
    parama.by(4, this.fAs);
    parama.by(5, this.fAt);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fAi != null)
      i += a.a.a.a.z(2, this.fAi);
    if (this.fAk != null)
      i += a.a.a.a.z(3, this.fAk);
    return i + a.a.a.a.br(4, this.fAs) + a.a.a.a.br(5, this.fAt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ao
 * JD-Core Version:    0.6.2
 */