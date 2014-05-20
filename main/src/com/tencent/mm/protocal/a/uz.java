package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class uz extends rs
{
  public LinkedList fOB = new LinkedList();
  public int fOv;
  public int fRc;
  public int fVE;
  public LinkedList fVF = new LinkedList();
  public long fVJ;
  public int fVO;
  public int fVP;
  public int fVQ;
  public int fVR;
  public LinkedList fVS = new LinkedList();
  public rv fVv;
  public String fzj;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fVv == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fVv != null)
    {
      parama.bv(2, this.fVv.ns());
      this.fVv.a(parama);
    }
    parama.by(3, this.fVE);
    parama.c(4, 8, this.fVF);
    parama.by(5, this.fVO);
    parama.by(6, this.fOv);
    if (this.fzj != null)
      parama.A(7, this.fzj);
    parama.by(8, this.fVP);
    parama.by(9, this.fRc);
    parama.c(10, 8, this.fOB);
    parama.by(11, this.fVQ);
    parama.k(12, this.fVJ);
    parama.by(13, this.fVR);
    parama.c(14, 8, this.fVS);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fVv != null)
      i += a.a.a.a.bs(2, this.fVv.ns());
    int j = i + a.a.a.a.br(3, this.fVE) + a.a.a.a.b(4, 8, this.fVF) + a.a.a.a.br(5, this.fVO) + a.a.a.a.br(6, this.fOv);
    if (this.fzj != null)
      j += a.a.a.a.z(7, this.fzj);
    return j + a.a.a.a.br(8, this.fVP) + a.a.a.a.br(9, this.fRc) + a.a.a.a.b(10, 8, this.fOB) + a.a.a.a.br(11, this.fVQ) + a.a.a.a.i(12, this.fVJ) + a.a.a.a.br(13, this.fVR) + a.a.a.a.b(14, 8, this.fVS);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.uz
 * JD-Core Version:    0.6.2
 */