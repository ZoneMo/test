package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class jq extends rs
{
  public String fEv;
  public String fLK;
  public int fLL;
  public LinkedList fLM = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fLK != null)
      parama.A(2, this.fLK);
    parama.by(3, this.fLL);
    parama.c(4, 8, this.fLM);
    if (this.fEv != null)
      parama.A(5, this.fEv);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fLK != null)
      i += a.a.a.a.z(2, this.fLK);
    int j = i + a.a.a.a.br(3, this.fLL) + a.a.a.a.b(4, 8, this.fLM);
    if (this.fEv != null)
      j += a.a.a.a.z(5, this.fEv);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.jq
 * JD-Core Version:    0.6.2
 */