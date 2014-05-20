package com.tencent.mm.m;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.az;
import java.util.LinkedList;
import java.util.Stack;

final class h
  implements az
{
  private long cku = 0L;

  h(e parame)
  {
  }

  public final boolean ok()
  {
    long l = System.currentTimeMillis();
    if ((e.b(this.cks)) && (l - this.cku > 60000L))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(l - this.cku);
      aa.c("MicroMsg.AvatarService", "do scene TIMEOUT: %d", arrayOfObject);
      e.a(this.cks, false);
    }
    if (e.b(this.cks))
    {
      e.c(this.cks).bO(1000L);
      return false;
    }
    this.cku = l;
    e.a(this.cks, true);
    LinkedList localLinkedList = new LinkedList();
    for (int i = 0; (i < 5) && (e.d(this.cks).size() > 0); i++)
      localLinkedList.add(new rw().sn(((x)e.d(this.cks).pop()).getUsername()));
    be.uA().d(new z(localLinkedList));
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.h
 * JD-Core Version:    0.6.2
 */