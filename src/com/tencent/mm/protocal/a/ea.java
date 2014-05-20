package com.tencent.mm.protocal.a;

public final class ea extends rs
{
  public String fEQ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fEQ != null)
      parama.A(2, this.fEQ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fEQ != null)
      i += a.a.a.a.z(2, this.fEQ);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ea
 * JD-Core Version:    0.6.2
 */