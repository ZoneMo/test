package com.tencent.mm.protocal.a;

public final class s extends com.tencent.mm.am.a
{
  public String fyV;
  public String fzM;
  public String fzN;
  public String fzO;
  public String fzP;

  public static boolean a(a.a.a.a.a parama, s params, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      params.fzM = parama.aPS();
      return true;
    case 2:
      params.fzN = parama.aPS();
      return true;
    case 3:
      params.fyV = parama.aPS();
      return true;
    case 4:
      params.fzO = parama.aPS();
      return true;
    case 5:
    }
    params.fzP = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzM != null)
      parama.A(1, this.fzM);
    if (this.fzN != null)
      parama.A(2, this.fzN);
    if (this.fyV != null)
      parama.A(3, this.fyV);
    if (this.fzO != null)
      parama.A(4, this.fzO);
    if (this.fzP != null)
      parama.A(5, this.fzP);
  }

  public final int ns()
  {
    String str = this.fzM;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fzM);
    if (this.fzN != null)
      i += a.a.a.a.z(2, this.fzN);
    if (this.fyV != null)
      i += a.a.a.a.z(3, this.fyV);
    if (this.fzO != null)
      i += a.a.a.a.z(4, this.fzO);
    if (this.fzP != null)
      i += a.a.a.a.z(5, this.fzP);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.s
 * JD-Core Version:    0.6.2
 */