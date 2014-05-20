package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class y extends com.tencent.mm.am.a
{
  public String Th;
  public String bMa;
  public String fAa;
  public String fAb;
  public z fAc;

  public static boolean a(a.a.a.a.a parama, y paramy, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramy.Th = parama.aPS();
      return true;
    case 2:
      paramy.bMa = parama.aPS();
      return true;
    case 3:
      paramy.fAa = parama.aPS();
      return true;
    case 4:
      paramy.fAb = parama.aPS();
      return true;
    case 5:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      z localz = new z();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = z.a(locala, localz, a(locala)));
      paramy.fAc = localz;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAc == null)
      throw new b("Not all required fields were included");
    if (this.Th != null)
      parama.A(1, this.Th);
    if (this.bMa != null)
      parama.A(2, this.bMa);
    if (this.fAa != null)
      parama.A(3, this.fAa);
    if (this.fAb != null)
      parama.A(4, this.fAb);
    if (this.fAc != null)
    {
      parama.bv(5, this.fAc.ns());
      this.fAc.a(parama);
    }
  }

  public final y aG(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    if (this.fAc == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    String str = this.Th;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.Th);
    if (this.bMa != null)
      i += a.a.a.a.z(2, this.bMa);
    if (this.fAa != null)
      i += a.a.a.a.z(3, this.fAa);
    if (this.fAb != null)
      i += a.a.a.a.z(4, this.fAb);
    if (this.fAc != null)
      i += a.a.a.a.bs(5, this.fAc.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.y
 * JD-Core Version:    0.6.2
 */