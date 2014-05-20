package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ph extends com.tencent.mm.am.a
{
  public com.tencent.mm.am.b fAl;
  public int fRH;
  public String fRI;
  public rv fRJ;

  public static boolean a(a.a.a.a.a parama, ph paramph, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramph.fRH = parama.aPQ();
      return true;
    case 2:
      paramph.fAl = parama.aPX();
      return true;
    case 3:
      paramph.fRI = parama.aPS();
      return true;
    case 4:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      rv localrv = new rv();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = rv.a(locala, localrv, a(locala)));
      paramph.fRJ = localrv;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fAl == null) || (this.fRJ == null))
      throw new a.a.a.b("Not all required fields were included");
    parama.by(1, this.fRH);
    if (this.fAl != null)
      parama.c(2, this.fAl);
    if (this.fRI != null)
      parama.A(3, this.fRI);
    if (this.fRJ != null)
    {
      parama.bv(4, this.fRJ.ns());
      this.fRJ.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fRH);
    if (this.fAl != null)
      i += a.a.a.a.a(2, this.fAl);
    if (this.fRI != null)
      i += a.a.a.a.z(3, this.fRI);
    if (this.fRJ != null)
      i += a.a.a.a.bs(4, this.fRJ.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ph
 * JD-Core Version:    0.6.2
 */