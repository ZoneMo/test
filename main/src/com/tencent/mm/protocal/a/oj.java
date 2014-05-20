package com.tencent.mm.protocal.a;

public final class oj extends com.tencent.mm.am.a
{
  public String fNk;
  public String fPw;
  public String fPx;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fPw != null)
      parama.A(1, this.fPw);
    if (this.fPx != null)
      parama.A(2, this.fPx);
    if (this.fNk != null)
      parama.A(3, this.fNk);
  }

  public final int ns()
  {
    String str = this.fPw;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fPw);
    if (this.fPx != null)
      i += a.a.a.a.z(2, this.fPx);
    if (this.fNk != null)
      i += a.a.a.a.z(3, this.fNk);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.oj
 * JD-Core Version:    0.6.2
 */