package com.tencent.mm.protocal.a;

public final class sa extends com.tencent.mm.am.a
{
  public int fAC;
  public String fLQ;
  public String fST;
  public String fSU;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fLQ != null)
      parama.A(1, this.fLQ);
    if (this.fSU != null)
      parama.A(2, this.fSU);
    parama.by(3, this.fAC);
    if (this.fST != null)
      parama.A(4, this.fST);
  }

  public final int ns()
  {
    String str = this.fLQ;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fLQ);
    if (this.fSU != null)
      i += a.a.a.a.z(2, this.fSU);
    int j = i + a.a.a.a.br(3, this.fAC);
    if (this.fST != null)
      j += a.a.a.a.z(4, this.fST);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sa
 * JD-Core Version:    0.6.2
 */