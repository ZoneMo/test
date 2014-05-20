package com.tencent.mm.booter;

import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.protocal.a.mi;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.d;
import java.util.LinkedList;

public final class ai
{
  public static void run()
  {
    LinkedList localLinkedList = new LinkedList();
    int i = cj.a((Integer)be.us().get(19), 0);
    for (int j = 0; j < i; j++)
    {
      mi localmi1 = new mi();
      localmi1.fAs = 31;
      localmi1.fNk = "0";
      localLinkedList.add(localmi1);
    }
    int k = cj.a((Integer)be.us().get(20), 0);
    for (int m = 0; m < k; m++)
    {
      mi localmi2 = new mi();
      localmi2.fAs = 31;
      localmi2.fNk = "1";
      localLinkedList.add(localmi2);
    }
    if (localLinkedList.size() > 0)
    {
      ct.a(localLinkedList);
      be.us().set(19, Integer.valueOf(0));
      be.us().set(20, Integer.valueOf(0));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.ai
 * JD-Core Version:    0.6.2
 */