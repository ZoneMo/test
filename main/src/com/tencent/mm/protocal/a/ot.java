package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ot extends rs
{
  public String cqr;
  public String fBA;
  public rv fBE;
  public String fBF;
  public String fBI;
  public String fBY;
  public rw fCc;
  public rv fCd;
  public String fDS;
  public String fDT;
  public rw fEI;
  public String fFk;
  public int fJD;
  public String fJP;
  public rw fML;
  public rw fMM;
  public rv fQA;
  public int fQB;
  public String fQC;
  public rv fQD;
  public rv fQE;
  public rw fQn;
  public int fQo;
  public String fQp;
  public String fQq;
  public String fQr;
  public String fQs;
  public String fQt;
  public int fQu;
  public String fQv;
  public String fQw;
  public String fQx;
  public String fQy;
  public String fQz;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fEI == null) || (this.fML == null) || (this.fMM == null) || (this.fQn == null) || (this.fBE == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fEI != null)
    {
      parama.bv(2, this.fEI.ns());
      this.fEI.a(parama);
    }
    if (this.fML != null)
    {
      parama.bv(3, this.fML.ns());
      this.fML.a(parama);
    }
    if (this.fMM != null)
    {
      parama.bv(4, this.fMM.ns());
      this.fMM.a(parama);
    }
    if (this.fQn != null)
    {
      parama.bv(5, this.fQn.ns());
      this.fQn.a(parama);
    }
    if (this.fBY != null)
      parama.A(6, this.fBY);
    parama.by(7, this.fQo);
    if (this.fQp != null)
      parama.A(8, this.fQp);
    if (this.fQq != null)
      parama.A(9, this.fQq);
    if (this.fQr != null)
      parama.A(10, this.fQr);
    if (this.fBF != null)
      parama.A(11, this.fBF);
    if (this.fQs != null)
      parama.A(12, this.fQs);
    parama.by(13, this.fJD);
    if (this.fQt != null)
      parama.A(14, this.fQt);
    if (this.fCc != null)
    {
      parama.bv(15, this.fCc.ns());
      this.fCc.a(parama);
    }
    if (this.fCd != null)
    {
      parama.bv(16, this.fCd.ns());
      this.fCd.a(parama);
    }
    parama.by(17, this.fQu);
    if (this.fDT != null)
      parama.A(18, this.fDT);
    if (this.fDS != null)
      parama.A(19, this.fDS);
    if (this.fQv != null)
      parama.A(20, this.fQv);
    if (this.fQw != null)
      parama.A(21, this.fQw);
    if (this.fQx != null)
      parama.A(22, this.fQx);
    if (this.fBA != null)
      parama.A(23, this.fBA);
    if (this.fFk != null)
      parama.A(24, this.fFk);
    if (this.cqr != null)
      parama.A(25, this.cqr);
    if (this.fBE != null)
    {
      parama.bv(26, this.fBE.ns());
      this.fBE.a(parama);
    }
    if (this.fQy != null)
      parama.A(27, this.fQy);
    if (this.fQz != null)
      parama.A(28, this.fQz);
    if (this.fQA != null)
    {
      parama.bv(29, this.fQA.ns());
      this.fQA.a(parama);
    }
    parama.by(30, this.fQB);
    if (this.fBI != null)
      parama.A(31, this.fBI);
    if (this.fJP != null)
      parama.A(32, this.fJP);
    if (this.fQC != null)
      parama.A(33, this.fQC);
    if (this.fQD != null)
    {
      parama.bv(34, this.fQD.ns());
      this.fQD.a(parama);
    }
    if (this.fQE != null)
    {
      parama.bv(35, this.fQE.ns());
      this.fQE.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fEI != null)
      i += a.a.a.a.bs(2, this.fEI.ns());
    if (this.fML != null)
      i += a.a.a.a.bs(3, this.fML.ns());
    if (this.fMM != null)
      i += a.a.a.a.bs(4, this.fMM.ns());
    if (this.fQn != null)
      i += a.a.a.a.bs(5, this.fQn.ns());
    if (this.fBY != null)
      i += a.a.a.a.z(6, this.fBY);
    int j = i + a.a.a.a.br(7, this.fQo);
    if (this.fQp != null)
      j += a.a.a.a.z(8, this.fQp);
    if (this.fQq != null)
      j += a.a.a.a.z(9, this.fQq);
    if (this.fQr != null)
      j += a.a.a.a.z(10, this.fQr);
    if (this.fBF != null)
      j += a.a.a.a.z(11, this.fBF);
    if (this.fQs != null)
      j += a.a.a.a.z(12, this.fQs);
    int k = j + a.a.a.a.br(13, this.fJD);
    if (this.fQt != null)
      k += a.a.a.a.z(14, this.fQt);
    if (this.fCc != null)
      k += a.a.a.a.bs(15, this.fCc.ns());
    if (this.fCd != null)
      k += a.a.a.a.bs(16, this.fCd.ns());
    int m = k + a.a.a.a.br(17, this.fQu);
    if (this.fDT != null)
      m += a.a.a.a.z(18, this.fDT);
    if (this.fDS != null)
      m += a.a.a.a.z(19, this.fDS);
    if (this.fQv != null)
      m += a.a.a.a.z(20, this.fQv);
    if (this.fQw != null)
      m += a.a.a.a.z(21, this.fQw);
    if (this.fQx != null)
      m += a.a.a.a.z(22, this.fQx);
    if (this.fBA != null)
      m += a.a.a.a.z(23, this.fBA);
    if (this.fFk != null)
      m += a.a.a.a.z(24, this.fFk);
    if (this.cqr != null)
      m += a.a.a.a.z(25, this.cqr);
    if (this.fBE != null)
      m += a.a.a.a.bs(26, this.fBE.ns());
    if (this.fQy != null)
      m += a.a.a.a.z(27, this.fQy);
    if (this.fQz != null)
      m += a.a.a.a.z(28, this.fQz);
    if (this.fQA != null)
      m += a.a.a.a.bs(29, this.fQA.ns());
    int n = m + a.a.a.a.br(30, this.fQB);
    if (this.fBI != null)
      n += a.a.a.a.z(31, this.fBI);
    if (this.fJP != null)
      n += a.a.a.a.z(32, this.fJP);
    if (this.fQC != null)
      n += a.a.a.a.z(33, this.fQC);
    if (this.fQD != null)
      n += a.a.a.a.bs(34, this.fQD.ns());
    if (this.fQE != null)
      n += a.a.a.a.bs(35, this.fQE.ns());
    return n;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ot
 * JD-Core Version:    0.6.2
 */