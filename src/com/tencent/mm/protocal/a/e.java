package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class e extends com.tencent.mm.am.a
{
  public String fyR;
  public String fyS;
  public String fyT;
  public String fyU;
  public String fyV;
  public String fyW;
  public String fyX;
  public String fyY;
  public String fyZ;
  public aal fza;
  public String fzb;

  public static boolean a(a.a.a.a.a parama, e parame, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parame.fyR = parama.aPS();
      return true;
    case 2:
      parame.fyS = parama.aPS();
      return true;
    case 3:
      parame.fyT = parama.aPS();
      return true;
    case 4:
      parame.fyU = parama.aPS();
      return true;
    case 5:
      parame.fyV = parama.aPS();
      return true;
    case 6:
      parame.fyW = parama.aPS();
      return true;
    case 7:
      parame.fyX = parama.aPS();
      return true;
    case 8:
      parame.fyY = parama.aPS();
      return true;
    case 9:
      parame.fyZ = parama.aPS();
      return true;
    case 10:
      LinkedList localLinkedList = parama.oL(paramInt);
      int i = localLinkedList.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte = (byte[])localLinkedList.get(j);
        aal localaal = new aal();
        a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
        for (boolean bool = true; bool; bool = aal.a(locala, localaal, a(locala)));
        parame.fza = localaal;
      }
      return true;
    case 11:
    }
    parame.fzb = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyR != null)
      parama.A(1, this.fyR);
    if (this.fyS != null)
      parama.A(2, this.fyS);
    if (this.fyT != null)
      parama.A(3, this.fyT);
    if (this.fyU != null)
      parama.A(4, this.fyU);
    if (this.fyV != null)
      parama.A(5, this.fyV);
    if (this.fyW != null)
      parama.A(6, this.fyW);
    if (this.fyX != null)
      parama.A(7, this.fyX);
    if (this.fyY != null)
      parama.A(8, this.fyY);
    if (this.fyZ != null)
      parama.A(9, this.fyZ);
    if (this.fza != null)
    {
      parama.bv(10, this.fza.ns());
      this.fza.a(parama);
    }
    if (this.fzb != null)
      parama.A(11, this.fzb);
  }

  public final int ns()
  {
    String str = this.fyR;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyR);
    if (this.fyS != null)
      i += a.a.a.a.z(2, this.fyS);
    if (this.fyT != null)
      i += a.a.a.a.z(3, this.fyT);
    if (this.fyU != null)
      i += a.a.a.a.z(4, this.fyU);
    if (this.fyV != null)
      i += a.a.a.a.z(5, this.fyV);
    if (this.fyW != null)
      i += a.a.a.a.z(6, this.fyW);
    if (this.fyX != null)
      i += a.a.a.a.z(7, this.fyX);
    if (this.fyY != null)
      i += a.a.a.a.z(8, this.fyY);
    if (this.fyZ != null)
      i += a.a.a.a.z(9, this.fyZ);
    if (this.fza != null)
      i += a.a.a.a.bs(10, this.fza.ns());
    if (this.fzb != null)
      i += a.a.a.a.z(11, this.fzb);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.e
 * JD-Core Version:    0.6.2
 */