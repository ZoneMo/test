package com.tencent.mm.ui.setting;

import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;

final class ep
  implements m
{
  ep(eo parameo)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.SettingsUI", "onSceneEnd " + paramInt1 + " errCode " + paramInt2 + " errMsg " + paramString + "  " + paramx.getType());
    an.i(new eq(this, paramx, paramInt2, paramInt1));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ep
 * JD-Core Version:    0.6.2
 */