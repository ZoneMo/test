package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class nk extends com.tencent.mm.am.a
{
  public String bMa;
  public int cyA;
  public int dGR;
  public String eAj;
  public int eun;
  public String fEA;
  public int fOm;
  public String fOn;
  public int fOo;
  public int fOp;
  public nm fOq;
  public String fOr;
  public int fOs;
  public int fOt;
  public String fyI;
  public String fzM;

  public static boolean a(a.a.a.a.a parama, nk paramnk, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramnk.fzM = parama.aPS();
      return true;
    case 2:
      paramnk.dGR = parama.aPQ();
      return true;
    case 3:
      paramnk.fEA = parama.aPS();
      return true;
    case 4:
      paramnk.fyI = parama.aPS();
      return true;
    case 5:
      paramnk.fOm = parama.aPQ();
      return true;
    case 6:
      paramnk.fOn = parama.aPS();
      return true;
    case 7:
      paramnk.fOo = parama.aPQ();
      return true;
    case 8:
      paramnk.fOp = parama.aPQ();
      return true;
    case 9:
      paramnk.bMa = parama.aPS();
      return true;
    case 10:
      LinkedList localLinkedList = parama.oL(paramInt);
      int i = localLinkedList.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte = (byte[])localLinkedList.get(j);
        nm localnm = new nm();
        a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
        for (boolean bool = true; bool; bool = nm.a(locala, localnm, a(locala)));
        paramnk.fOq = localnm;
      }
      return true;
    case 11:
      paramnk.fOr = parama.aPS();
      return true;
    case 12:
      paramnk.fOs = parama.aPQ();
      return true;
    case 13:
      paramnk.eun = parama.aPQ();
      return true;
    case 14:
      paramnk.fOt = parama.aPQ();
      return true;
    case 15:
      paramnk.eAj = parama.aPS();
      return true;
    case 16:
    }
    paramnk.cyA = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzM != null)
      parama.A(1, this.fzM);
    parama.by(2, this.dGR);
    if (this.fEA != null)
      parama.A(3, this.fEA);
    if (this.fyI != null)
      parama.A(4, this.fyI);
    parama.by(5, this.fOm);
    if (this.fOn != null)
      parama.A(6, this.fOn);
    parama.by(7, this.fOo);
    parama.by(8, this.fOp);
    if (this.bMa != null)
      parama.A(9, this.bMa);
    if (this.fOq != null)
    {
      parama.bv(10, this.fOq.ns());
      this.fOq.a(parama);
    }
    if (this.fOr != null)
      parama.A(11, this.fOr);
    parama.by(12, this.fOs);
    parama.by(13, this.eun);
    parama.by(14, this.fOt);
    if (this.eAj != null)
      parama.A(15, this.eAj);
    parama.by(16, this.cyA);
  }

  public final int ns()
  {
    String str = this.fzM;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fzM);
    int j = i + a.a.a.a.br(2, this.dGR);
    if (this.fEA != null)
      j += a.a.a.a.z(3, this.fEA);
    if (this.fyI != null)
      j += a.a.a.a.z(4, this.fyI);
    int k = j + a.a.a.a.br(5, this.fOm);
    if (this.fOn != null)
      k += a.a.a.a.z(6, this.fOn);
    int m = k + a.a.a.a.br(7, this.fOo) + a.a.a.a.br(8, this.fOp);
    if (this.bMa != null)
      m += a.a.a.a.z(9, this.bMa);
    if (this.fOq != null)
      m += a.a.a.a.bs(10, this.fOq.ns());
    if (this.fOr != null)
      m += a.a.a.a.z(11, this.fOr);
    int n = m + a.a.a.a.br(12, this.fOs) + a.a.a.a.br(13, this.eun) + a.a.a.a.br(14, this.fOt);
    if (this.eAj != null)
      n += a.a.a.a.z(15, this.eAj);
    return n + a.a.a.a.br(16, this.cyA);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nk
 * JD-Core Version:    0.6.2
 */