package com.tencent.mm.protocal.a;

public final class er extends com.tencent.mm.am.a
{
  public String ID;
  public int fAL;
  public int fEd;
  public String fFn;

  public final void a(a.a.a.c.a parama)
  {
    if (this.ID != null)
      parama.A(1, this.ID);
    parama.by(2, this.fEd);
    parama.by(3, this.fAL);
    if (this.fFn != null)
      parama.A(4, this.fFn);
  }

  public final int ns()
  {
    String str = this.ID;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.ID);
    int j = i + a.a.a.a.br(2, this.fEd) + a.a.a.a.br(3, this.fAL);
    if (this.fFn != null)
      j += a.a.a.a.z(4, this.fFn);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.er
 * JD-Core Version:    0.6.2
 */