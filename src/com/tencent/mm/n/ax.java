package com.tencent.mm.n;

import com.tencent.mm.sdk.platformtools.aa;
import oicq.wlogin_sdk.c.c;

final class ax extends c
{
  public ax(aw paramaw)
  {
  }

  public final void d(int paramInt, String paramString1, String paramString2)
  {
    if (paramInt == 1)
      aa.d("MicroMsg.WtloginMgr.Core", "[%s]%s", new Object[] { paramString1, paramString2 });
    do
    {
      return;
      if (paramInt == 2)
      {
        aa.e("MicroMsg.WtloginMgr.Core", "[%s]%s", new Object[] { paramString1, paramString2 });
        return;
      }
    }
    while (paramInt != 0);
    aa.c("MicroMsg.WtloginMgr.Core", "[%s]%s", new Object[] { paramString1, paramString2 });
  }

  public final void f(int paramInt, String paramString)
  {
    d(paramInt, "", paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.ax
 * JD-Core Version:    0.6.2
 */