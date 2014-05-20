package com.tencent.mm.protocal.a;

public final class cg extends com.tencent.mm.am.a
{
  public String fDj;
  public String fDk;
  public String fDl;
  public int fDm;
  public int fDn;
  public String fDo;
  public int fDp;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fDj != null)
      parama.A(1, this.fDj);
    if (this.fDk != null)
      parama.A(2, this.fDk);
    if (this.fDl != null)
      parama.A(3, this.fDl);
    parama.by(4, this.fDm);
    parama.by(5, this.fDn);
    if (this.fDo != null)
      parama.A(6, this.fDo);
    parama.by(7, this.fDp);
  }

  public final int ns()
  {
    String str = this.fDj;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fDj);
    if (this.fDk != null)
      i += a.a.a.a.z(2, this.fDk);
    if (this.fDl != null)
      i += a.a.a.a.z(3, this.fDl);
    int j = i + a.a.a.a.br(4, this.fDm) + a.a.a.a.br(5, this.fDn);
    if (this.fDo != null)
      j += a.a.a.a.z(6, this.fDo);
    return j + a.a.a.a.br(7, this.fDp);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.cg
 * JD-Core Version:    0.6.2
 */