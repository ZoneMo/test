package com.tencent.mm.protocal.a;

import a.a.a.a.a;
import java.util.LinkedList;

public final class ns extends rt
{
  public int dGR;
  public int fAY;
  public int fOR;
  public int fOS;
  public int fzo;
  public rw fzt;
  public int fzy;

  public static boolean a(a parama, ns paramns, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramns.fAY = parama.aPQ();
      return true;
    case 2:
      LinkedList localLinkedList = parama.oL(paramInt);
      int i = localLinkedList.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte = (byte[])localLinkedList.get(j);
        rw localrw = new rw();
        a locala = new a(arrayOfByte, fxi);
        for (boolean bool = true; bool; bool = rw.a(locala, localrw, a(locala)));
        paramns.fzt = localrw;
      }
      return true;
    case 3:
      paramns.fzo = parama.aPQ();
      return true;
    case 4:
      paramns.fOR = parama.aPQ();
      return true;
    case 5:
      paramns.fzy = parama.aPQ();
      return true;
    case 6:
      paramns.fOS = parama.aPQ();
      return true;
    case 7:
    }
    paramns.dGR = parama.aPQ();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ns
 * JD-Core Version:    0.6.2
 */