package com.tencent.mm.j;

public final class d extends com.tencent.mm.am.a
{
  public String chf;
  public String chg;
  public String chh;
  public String chi;
  public String chj;
  public long time;
  public String title;
  public int type;
  public String url;

  public static boolean a(a.a.a.a.a parama, d paramd, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramd.title = parama.aPS();
      return true;
    case 2:
      paramd.url = parama.aPS();
      return true;
    case 3:
      paramd.chf = parama.aPS();
      return true;
    case 4:
      paramd.chg = parama.aPS();
      return true;
    case 5:
      paramd.time = parama.aPW();
      return true;
    case 6:
      paramd.chh = parama.aPS();
      return true;
    case 7:
      paramd.chi = parama.aPS();
      return true;
    case 8:
      paramd.chj = parama.aPS();
      return true;
    case 9:
    }
    paramd.type = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.title != null)
      parama.A(1, this.title);
    if (this.url != null)
      parama.A(2, this.url);
    if (this.chf != null)
      parama.A(3, this.chf);
    if (this.chg != null)
      parama.A(4, this.chg);
    parama.k(5, this.time);
    if (this.chh != null)
      parama.A(6, this.chh);
    if (this.chi != null)
      parama.A(7, this.chi);
    if (this.chj != null)
      parama.A(8, this.chj);
    parama.by(9, this.type);
  }

  public final int ns()
  {
    String str = this.title;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.title);
    if (this.url != null)
      i += a.a.a.a.z(2, this.url);
    if (this.chf != null)
      i += a.a.a.a.z(3, this.chf);
    if (this.chg != null)
      i += a.a.a.a.z(4, this.chg);
    int j = i + a.a.a.a.i(5, this.time);
    if (this.chh != null)
      j += a.a.a.a.z(6, this.chh);
    if (this.chi != null)
      j += a.a.a.a.z(7, this.chi);
    if (this.chj != null)
      j += a.a.a.a.z(8, this.chj);
    return j + a.a.a.a.br(9, this.type);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.j.d
 * JD-Core Version:    0.6.2
 */