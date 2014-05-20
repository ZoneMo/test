package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ad extends com.tencent.mm.am.a
{
  public String fAi;
  public int fAj;
  public String fAk;
  public com.tencent.mm.am.b fAl;
  public int fAm;
  public com.tencent.mm.am.b fAn;
  public int fAo;
  public int fAp;
  public int fAq;
  public rw fAr;
  public int fAs;
  public int fAt;
  public int fyJ;
  public int fzh;
  public int fzy;

  public static boolean a(a.a.a.a.a parama, ad paramad, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramad.fAi = parama.aPS();
      return true;
    case 2:
      paramad.fAk = parama.aPS();
      return true;
    case 3:
      paramad.fAl = parama.aPX();
      return true;
    case 4:
      paramad.fAm = parama.aPQ();
      return true;
    case 5:
      paramad.fAn = parama.aPX();
      return true;
    case 6:
      paramad.fyJ = parama.aPQ();
      return true;
    case 7:
      paramad.fzy = parama.aPQ();
      return true;
    case 8:
      paramad.fAj = parama.aPQ();
      return true;
    case 9:
      paramad.fAo = parama.aPQ();
      return true;
    case 10:
      paramad.fzh = parama.aPQ();
      return true;
    case 11:
      paramad.fAp = parama.aPQ();
      return true;
    case 12:
      paramad.fAq = parama.aPQ();
      return true;
    case 13:
      LinkedList localLinkedList = parama.oL(paramInt);
      int i = localLinkedList.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte = (byte[])localLinkedList.get(j);
        rw localrw = new rw();
        a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
        for (boolean bool = true; bool; bool = rw.a(locala, localrw, a(locala)));
        paramad.fAr = localrw;
      }
      return true;
    case 14:
      paramad.fAs = parama.aPQ();
      return true;
    case 15:
    }
    paramad.fAt = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fAl == null) || (this.fAn == null))
      throw new a.a.a.b("Not all required fields were included");
    if (this.fAi != null)
      parama.A(1, this.fAi);
    if (this.fAk != null)
      parama.A(2, this.fAk);
    if (this.fAl != null)
      parama.c(3, this.fAl);
    parama.by(4, this.fAm);
    if (this.fAn != null)
      parama.c(5, this.fAn);
    parama.by(6, this.fyJ);
    parama.by(7, this.fzy);
    parama.by(8, this.fAj);
    parama.by(9, this.fAo);
    parama.by(10, this.fzh);
    parama.by(11, this.fAp);
    parama.by(12, this.fAq);
    if (this.fAr != null)
    {
      parama.bv(13, this.fAr.ns());
      this.fAr.a(parama);
    }
    parama.by(14, this.fAs);
    parama.by(15, this.fAt);
  }

  public final int ns()
  {
    String str = this.fAi;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fAi);
    if (this.fAk != null)
      i += a.a.a.a.z(2, this.fAk);
    if (this.fAl != null)
      i += a.a.a.a.a(3, this.fAl);
    int j = i + a.a.a.a.br(4, this.fAm);
    if (this.fAn != null)
      j += a.a.a.a.a(5, this.fAn);
    int k = j + a.a.a.a.br(6, this.fyJ) + a.a.a.a.br(7, this.fzy) + a.a.a.a.br(8, this.fAj) + a.a.a.a.br(9, this.fAo) + a.a.a.a.br(10, this.fzh) + a.a.a.a.br(11, this.fAp) + a.a.a.a.br(12, this.fAq);
    if (this.fAr != null)
      k += a.a.a.a.bs(13, this.fAr.ns());
    return k + a.a.a.a.br(14, this.fAs) + a.a.a.a.br(15, this.fAt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ad
 * JD-Core Version:    0.6.2
 */