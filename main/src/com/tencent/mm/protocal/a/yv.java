package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class yv extends com.tencent.mm.am.a
{
  public String fBM;
  public qh fZi;

  public static boolean a(a.a.a.a.a parama, yv paramyv, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramyv.fBM = parama.aPS();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      qh localqh = new qh();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = qh.a(locala, localqh, a(locala)));
      paramyv.fZi = localqh;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fZi == null)
      throw new b("Not all required fields were included");
    if (this.fBM != null)
      parama.A(1, this.fBM);
    if (this.fZi != null)
    {
      parama.bv(2, this.fZi.ns());
      this.fZi.a(parama);
    }
  }

  public final yv ce(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    if (this.fZi == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    String str = this.fBM;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fBM);
    if (this.fZi != null)
      i += a.a.a.a.bs(2, this.fZi.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yv
 * JD-Core Version:    0.6.2
 */