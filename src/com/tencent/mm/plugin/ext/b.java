package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.ac;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.HashMap;

public final class b
  implements bb
{
  public static b Mm()
  {
    b localb = (b)be.uh().dN("plugin.ext");
    if (localb == null)
    {
      localb = new b();
      be.uh().a("plugin.ext", localb);
    }
    return localb;
  }

  public static i T(long paramLong)
  {
    if ((be.se()) && (paramLong > 0L))
      return be.uz().su().bQ(paramLong);
    return null;
  }

  public static void U(long paramLong)
  {
    if (paramLong <= 0L)
      return;
    try
    {
      if (be.uz().sw().bW(paramLong))
      {
        be.uz().sw().w(be.uz().sw().bU(paramLong));
        return;
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.SubCoreExt", localException.getMessage());
      return;
    }
    aa.e("MicroMsg.SubCoreExt", "msgId is out of range, " + paramLong);
  }

  public final void N(boolean paramBoolean)
  {
    ac localac = new ac();
    localac.bMr.op = 1;
    if (!a.ayH().f(localac))
      aa.e("MicroMsg.SubCoreExt", "ExtAgentLifeEvent event fail in onAccountPostReset");
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    ac localac = new ac();
    localac.bMr.op = 2;
    if (!a.ayH().f(localac))
      aa.e("MicroMsg.SubCoreExt", "ExtAgentLifeEvent event fail in onAccountRelease");
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.b
 * JD-Core Version:    0.6.2
 */