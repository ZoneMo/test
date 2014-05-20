package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class zy extends rs
{
  public int fGe;
  public long fGf;
  public int fUN;
  public String fVg;
  public aac fZI;
  public aac fZJ;
  public int fZZ;
  public int gac;
  public LinkedList gad = new LinkedList();
  public int gae;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fZI == null) || (this.fZJ == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fVg != null)
      parama.A(2, this.fVg);
    parama.by(3, this.gac);
    parama.c(4, 8, this.gad);
    if (this.fZI != null)
    {
      parama.bv(6, this.fZI.ns());
      this.fZI.a(parama);
    }
    if (this.fZJ != null)
    {
      parama.bv(7, this.fZJ.ns());
      this.fZJ.a(parama);
    }
    parama.by(8, this.fUN);
    parama.by(9, this.gae);
    parama.by(10, this.fGe);
    parama.k(11, this.fGf);
    parama.by(12, this.fZZ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fVg != null)
      i += a.a.a.a.z(2, this.fVg);
    int j = i + a.a.a.a.br(3, this.gac) + a.a.a.a.b(4, 8, this.gad);
    if (this.fZI != null)
      j += a.a.a.a.bs(6, this.fZI.ns());
    if (this.fZJ != null)
      j += a.a.a.a.bs(7, this.fZJ.ns());
    return j + a.a.a.a.br(8, this.fUN) + a.a.a.a.br(9, this.gae) + a.a.a.a.br(10, this.fGe) + a.a.a.a.i(11, this.fGf) + a.a.a.a.br(12, this.fZZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zy
 * JD-Core Version:    0.6.2
 */