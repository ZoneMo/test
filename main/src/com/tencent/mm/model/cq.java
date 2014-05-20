package com.tencent.mm.model;

import com.tencent.mm.n.j;
import com.tencent.mm.n.k;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.e;
import java.util.Map;
import junit.framework.Assert;

public final class cq
  implements j
{
  public final k a(l paraml)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paraml != null)
    {
      bool2 = bool1;
      Assert.assertTrue(bool2);
      if (paraml.fzv == null)
        break label90;
    }
    while (true)
    {
      Assert.assertTrue(bool1);
      String str = (String)u.aL(an.a(paraml.fzv), "tips").get(".tips.tip.url");
      aa.v("MicroMsg.SoftwareMsgExtension", "url:" + str);
      be.uz().sr().set(12308, str);
      return null;
      bool2 = false;
      break;
      label90: bool1 = false;
    }
  }

  public final void c(ak paramak)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cq
 * JD-Core Version:    0.6.2
 */