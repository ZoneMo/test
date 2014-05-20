package com.tencent.mm.u;

import com.tencent.mm.protocal.a.lb;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.yw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import java.util.LinkedList;

final class b
  implements az
{
  b(a parama)
  {
  }

  public final boolean ok()
  {
    if (a.a(this.csB) < 0)
      return false;
    lb locallb = (lb)a.b(this.csB).ws();
    try
    {
      localyw = (yw)locallb.fMK.get(a.a(this.csB));
      if (localyw != null)
      {
        aa.d("MicroMsg.NetSceneGetVUserInfo", "onGYNetEnd ver:" + locallb.fFT + " idx:" + a.a(this.csB) + " id:" + Integer.toHexString(localyw.fZj) + " size:" + localyw.fZk.ayg() + " hdsize:" + localyw.fZl.ayg());
        a.b(localyw.fZj, true, localyw.fZl.ayh().toByteArray());
        a.b(localyw.fZj, false, localyw.fZk.ayh().toByteArray());
      }
      a.c(this.csB);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.e("MicroMsg.NetSceneGetVUserInfo", "get item :" + a.a(this.csB) + " not Found");
        yw localyw = null;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.u.b
 * JD-Core Version:    0.6.2
 */