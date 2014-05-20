package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class sx extends rs
{
  public String dGS;
  public LinkedList fUA = new LinkedList();
  public String fUB;
  public String fUy;
  public int fUz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fUy != null)
      parama.A(2, this.fUy);
    parama.by(3, this.fUz);
    parama.c(4, 8, this.fUA);
    if (this.fUB != null)
      parama.A(5, this.fUB);
    if (this.dGS != null)
      parama.A(6, this.dGS);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fUy != null)
      i += a.a.a.a.z(2, this.fUy);
    int j = i + a.a.a.a.br(3, this.fUz) + a.a.a.a.b(4, 8, this.fUA);
    if (this.fUB != null)
      j += a.a.a.a.z(5, this.fUB);
    if (this.dGS != null)
      j += a.a.a.a.z(6, this.dGS);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sx
 * JD-Core Version:    0.6.2
 */