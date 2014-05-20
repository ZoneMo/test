package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class my extends rs
{
  public String fFm;
  public int fNM;
  public LinkedList fNN = new LinkedList();
  public int fNO;
  public LinkedList fNP = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fFm != null)
      parama.A(2, this.fFm);
    parama.by(3, this.fNM);
    parama.c(4, 8, this.fNN);
    parama.by(5, this.fNO);
    parama.c(6, 8, this.fNP);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fFm != null)
      i += a.a.a.a.z(2, this.fFm);
    return i + a.a.a.a.br(3, this.fNM) + a.a.a.a.b(4, 8, this.fNN) + a.a.a.a.br(5, this.fNO) + a.a.a.a.b(6, 8, this.fNP);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.my
 * JD-Core Version:    0.6.2
 */