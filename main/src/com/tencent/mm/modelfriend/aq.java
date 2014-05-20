package com.tencent.mm.modelfriend;

import com.tencent.mm.m.af;
import com.tencent.mm.m.x;
import com.tencent.mm.m.y;
import com.tencent.mm.protocal.a.mx;
import com.tencent.mm.protocal.a.mz;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ar;
import java.util.Iterator;
import java.util.LinkedList;

final class aq
  implements ar
{
  aq(ap paramap, mz parammz)
  {
  }

  public final boolean ve()
  {
    if ((this.crp != null) && (this.crp.fNQ.size() > 0))
    {
      Iterator localIterator = this.crp.fNQ.iterator();
      while (localIterator.hasNext())
      {
        mx localmx = (mx)localIterator.next();
        if (localmx.fzr == 1)
        {
          x localx = new x();
          localx.setUsername(localmx.eBo);
          localx.eo(localmx.fDg);
          localx.ep(localmx.fDh);
          localx.cL(-1);
          Object[] arrayOfObject = new Object[3];
          arrayOfObject[0] = localx.getUsername();
          arrayOfObject[1] = localx.vV();
          arrayOfObject[2] = localx.vW();
          aa.e("MicroMsg.NetSceneListMFriend", "getmlist  %s b[%s] s[%s]", arrayOfObject);
          localx.bU(3);
          localx.Q(true);
          af.wm().a(localx);
        }
      }
    }
    return true;
  }

  public final boolean vf()
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.aq
 * JD-Core Version:    0.6.2
 */