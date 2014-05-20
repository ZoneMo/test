package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ve extends com.tencent.mm.am.a
{
  public int fAC;
  public LinkedList fAD = new LinkedList();
  public String fPw;
  public long fVV;

  public static boolean a(a.a.a.a.a parama, ve paramve, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramve.fVV = parama.aPW();
      return true;
    case 2:
      paramve.fPw = parama.aPS();
      return true;
    case 3:
      paramve.fAC = parama.aPQ();
      return true;
    case 4:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      rw localrw = new rw();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = rw.a(locala, localrw, a(locala)));
      paramve.fAD.add(localrw);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.k(1, this.fVV);
    if (this.fPw != null)
      parama.A(2, this.fPw);
    parama.by(3, this.fAC);
    parama.c(4, 8, this.fAD);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.i(1, this.fVV);
    if (this.fPw != null)
      i += a.a.a.a.z(2, this.fPw);
    return i + a.a.a.a.br(3, this.fAC) + a.a.a.a.b(4, 8, this.fAD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ve
 * JD-Core Version:    0.6.2
 */