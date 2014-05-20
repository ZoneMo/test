package com.tencent.mm.plugin.safedevice.a;

import com.tencent.mm.c.a.cq;
import com.tencent.mm.c.a.cr;
import com.tencent.mm.c.a.ct;
import com.tencent.mm.c.a.hm;
import com.tencent.mm.c.a.hn;
import com.tencent.mm.c.a.ho;
import com.tencent.mm.c.a.hp;
import com.tencent.mm.sdk.b.g;

final class h extends g
{
  h(f paramf)
  {
  }

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    if (parame.getId().equals("UpdateLocalSafeDevice"))
      e.a(((hm)parame).bRg.bRh);
    while (true)
    {
      return false;
      if (parame.getId().equals("UpdateLocalVerifySwitch"))
      {
        ho localho = (ho)parame;
        e.j(localho.bRi.bRj, localho.bRi.bRk);
      }
      else if (parame.getId().equals("GetSafeDeviceName"))
      {
        cq localcq = (cq)parame;
        localcq.bNU.bNV = e.aG(localcq.bNT.context);
      }
      else if (parame.getId().equals("GetSafeDeviceType"))
      {
        ((ct)parame).bNW.bNX = e.Zs();
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.a.h
 * JD-Core Version:    0.6.2
 */