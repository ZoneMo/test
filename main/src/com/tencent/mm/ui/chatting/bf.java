package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.bv;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.mm.ui.base.ch;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

final class bf
  implements bw
{
  private ch gLG;
  private Set gMa;
  private fn gMb;

  public bf(Set paramSet, ch paramch, fn paramfn)
  {
    this.gMa = paramSet;
    this.gLG = paramch;
    this.gMb = paramfn;
  }

  public final boolean ve()
  {
    Set localSet = this.gMa;
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext())
      localLinkedList.add((Long)localIterator.next());
    bv.h(localLinkedList);
    return true;
  }

  public final boolean vf()
  {
    if (this.gLG != null)
    {
      this.gLG.dismiss();
      if (this.gMb != null)
        this.gMb.aJs();
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bf
 * JD-Core Version:    0.6.2
 */