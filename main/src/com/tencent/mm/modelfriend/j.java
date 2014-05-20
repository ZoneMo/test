package com.tencent.mm.modelfriend;

import com.tencent.mm.c.a.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bt;

final class j extends g
{
  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    if (!(parame instanceof com.tencent.mm.c.a.j))
    {
      aa.aM("MicroMsg.FriendBindQQ.EventListener", "not bind qq event");
      return false;
    }
    if (((com.tencent.mm.c.a.j)parame).bLR.bLT == 0);
    try
    {
      int i = 0x1000 | v.tq();
      be.uz().sr().set(34, Integer.valueOf(i));
      be.uz().st().a(new bt(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", i, "", 0, "", 0));
      aa.d("MicroMsg.FriendBindQQ.EventListener", "doClearQQFriendHelper succ ");
      label105: return false;
    }
    catch (Exception localException)
    {
      break label105;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.j
 * JD-Core Version:    0.6.2
 */