package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class cu extends rs
{
  public LinkedList fAD = new LinkedList();
  public String fDS;
  public String fDT;
  public String fDU;
  public String fDV;
  public String fDW;
  public int fDX;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fDS != null)
      parama.A(2, this.fDS);
    if (this.fDT != null)
      parama.A(3, this.fDT);
    if (this.fDU != null)
      parama.A(4, this.fDU);
    if (this.fDV != null)
      parama.A(5, this.fDV);
    if (this.fDW != null)
      parama.A(6, this.fDW);
    parama.by(7, this.fDX);
    parama.c(8, 8, this.fAD);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fDS != null)
      i += a.a.a.a.z(2, this.fDS);
    if (this.fDT != null)
      i += a.a.a.a.z(3, this.fDT);
    if (this.fDU != null)
      i += a.a.a.a.z(4, this.fDU);
    if (this.fDV != null)
      i += a.a.a.a.z(5, this.fDV);
    if (this.fDW != null)
      i += a.a.a.a.z(6, this.fDW);
    return i + a.a.a.a.br(7, this.fDX) + a.a.a.a.b(8, 8, this.fAD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.cu
 * JD-Core Version:    0.6.2
 */