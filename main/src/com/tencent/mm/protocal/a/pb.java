package com.tencent.mm.protocal.a;

public final class pb extends rs
{
  public String cqt;
  public String eBo;
  public int fBB;
  public rv fBE;
  public String fBF;
  public String fBI;
  public String fBL;
  public String fDe;
  public String fFk;
  public String fFm;
  public String fMk;
  public String fMl;
  public int fMm;
  public String fNA;
  public int fPH;
  public String fQC;
  public int fQo;
  public String fQr;
  public String fRk;
  public String fRl;
  public int fRm;
  public int fRn;
  public int fRo;
  public String fRp;
  public String fRq;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.eBo != null)
      parama.A(2, this.eBo);
    if (this.fBL != null)
      parama.A(3, this.fBL);
    if (this.fDe != null)
      parama.A(4, this.fDe);
    parama.by(5, this.fPH);
    if (this.fRk != null)
      parama.A(6, this.fRk);
    if (this.fRl != null)
      parama.A(7, this.fRl);
    if (this.fFm != null)
      parama.A(8, this.fFm);
    parama.by(12, this.fQo);
    parama.by(13, this.fRm);
    parama.by(14, this.fMm);
    if (this.fQr != null)
      parama.A(15, this.fQr);
    if (this.fBF != null)
      parama.A(16, this.fBF);
    parama.by(17, this.fBB);
    if (this.fFk != null)
      parama.A(18, this.fFk);
    if (this.fBE != null)
    {
      parama.bv(19, this.fBE.ns());
      this.fBE.a(parama);
    }
    if (this.cqt != null)
      parama.A(20, this.cqt);
    if (this.fMk != null)
      parama.A(21, this.fMk);
    if (this.fMl != null)
      parama.A(22, this.fMl);
    parama.by(23, this.fRn);
    parama.by(24, this.fRo);
    if (this.fBI != null)
      parama.A(31, this.fBI);
    if (this.fQC != null)
      parama.A(32, this.fQC);
    if (this.fRp != null)
      parama.A(33, this.fRp);
    if (this.fNA != null)
      parama.A(34, this.fNA);
    if (this.fRq != null)
      parama.A(35, this.fRq);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    if (this.fBL != null)
      i += a.a.a.a.z(3, this.fBL);
    if (this.fDe != null)
      i += a.a.a.a.z(4, this.fDe);
    int j = i + a.a.a.a.br(5, this.fPH);
    if (this.fRk != null)
      j += a.a.a.a.z(6, this.fRk);
    if (this.fRl != null)
      j += a.a.a.a.z(7, this.fRl);
    if (this.fFm != null)
      j += a.a.a.a.z(8, this.fFm);
    int k = j + a.a.a.a.br(12, this.fQo) + a.a.a.a.br(13, this.fRm) + a.a.a.a.br(14, this.fMm);
    if (this.fQr != null)
      k += a.a.a.a.z(15, this.fQr);
    if (this.fBF != null)
      k += a.a.a.a.z(16, this.fBF);
    int m = k + a.a.a.a.br(17, this.fBB);
    if (this.fFk != null)
      m += a.a.a.a.z(18, this.fFk);
    if (this.fBE != null)
      m += a.a.a.a.bs(19, this.fBE.ns());
    if (this.cqt != null)
      m += a.a.a.a.z(20, this.cqt);
    if (this.fMk != null)
      m += a.a.a.a.z(21, this.fMk);
    if (this.fMl != null)
      m += a.a.a.a.z(22, this.fMl);
    int n = m + a.a.a.a.br(23, this.fRn) + a.a.a.a.br(24, this.fRo);
    if (this.fBI != null)
      n += a.a.a.a.z(31, this.fBI);
    if (this.fQC != null)
      n += a.a.a.a.z(32, this.fQC);
    if (this.fRp != null)
      n += a.a.a.a.z(33, this.fRp);
    if (this.fNA != null)
      n += a.a.a.a.z(34, this.fNA);
    if (this.fRq != null)
      n += a.a.a.a.z(35, this.fRq);
    return n;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pb
 * JD-Core Version:    0.6.2
 */