package com.tencent.mm.model;

import com.tencent.mm.n.j;
import com.tencent.mm.n.k;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.e;
import java.util.Map;

public final class du
  implements j
{
  public final k a(l paraml)
  {
    if (paraml == null)
    {
      aa.e("MicroMsg.SysNoticeMsgExtension", "onPreAddMessage cmdAM is null");
      return null;
    }
    try
    {
      Map localMap = u.aL("<root>" + paraml.fzv + "</root>", "root");
      int i = Integer.valueOf((String)localMap.get(".root.newcount")).intValue();
      int j = Integer.valueOf((String)localMap.get(".root.version")).intValue();
      e locale = be.uz().sr();
      if (j == cj.c((Integer)locale.get(12305)))
      {
        aa.i("MicroMsg.SysNoticeMsgExtension", "ignore new sys notice count, same version");
        return null;
      }
      locale.set(12304, Integer.valueOf(i));
      locale.set(12305, Integer.valueOf(j));
      return null;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final void c(ak paramak)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.du
 * JD-Core Version:    0.6.2
 */