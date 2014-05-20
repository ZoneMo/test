package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class gs extends com.tencent.mm.am.a
{
  public String fJx;
  public String fyR;
  public String fyT;
  public String fyU;
  public String fyZ;
  public aal fza;

  public static boolean a(a.a.a.a.a parama, gs paramgs, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramgs.fyR = parama.aPS();
      return true;
    case 2:
      paramgs.fJx = parama.aPS();
      return true;
    case 3:
      paramgs.fyU = parama.aPS();
      return true;
    case 4:
      paramgs.fyT = parama.aPS();
      return true;
    case 5:
      paramgs.fyZ = parama.aPS();
      return true;
    case 6:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      aal localaal = new aal();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = aal.a(locala, localaal, a(locala)));
      paramgs.fza = localaal;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyR != null)
      parama.A(1, this.fyR);
    if (this.fJx != null)
      parama.A(2, this.fJx);
    if (this.fyU != null)
      parama.A(3, this.fyU);
    if (this.fyT != null)
      parama.A(4, this.fyT);
    if (this.fyZ != null)
      parama.A(5, this.fyZ);
    if (this.fza != null)
    {
      parama.bv(6, this.fza.ns());
      this.fza.a(parama);
    }
  }

  public final int ns()
  {
    String str = this.fyR;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyR);
    if (this.fJx != null)
      i += a.a.a.a.z(2, this.fJx);
    if (this.fyU != null)
      i += a.a.a.a.z(3, this.fyU);
    if (this.fyT != null)
      i += a.a.a.a.z(4, this.fyT);
    if (this.fyZ != null)
      i += a.a.a.a.z(5, this.fyZ);
    if (this.fza != null)
      i += a.a.a.a.bs(6, this.fza.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gs
 * JD-Core Version:    0.6.2
 */