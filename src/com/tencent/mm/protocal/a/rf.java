package com.tencent.mm.protocal.a;

public final class rf extends rs
{
  public int bLN;
  public String bNG;
  public String fTJ;
  public int timestamp;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.timestamp);
    if (this.fTJ != null)
      parama.A(3, this.fTJ);
    if (this.bNG != null)
      parama.A(4, this.bNG);
    parama.by(5, this.bLN);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.timestamp);
    if (this.fTJ != null)
      j += a.a.a.a.z(3, this.fTJ);
    if (this.bNG != null)
      j += a.a.a.a.z(4, this.bNG);
    return j + a.a.a.a.br(5, this.bLN);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rf
 * JD-Core Version:    0.6.2
 */