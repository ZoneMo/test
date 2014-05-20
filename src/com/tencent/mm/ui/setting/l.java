package com.tencent.mm.ui.setting;

import com.tencent.mm.m.c;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.aa;

final class l
  implements Runnable
{
  l(MoreTabLiteUI paramMoreTabLiteUI)
  {
  }

  public final void run()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(be.se());
    arrayOfObject[1] = v.th();
    aa.e("MicroMsg.SettingsPersonalInfoUI", "updateHeadImg hasUin:%b user:%s", arrayOfObject);
    if (be.se())
      bd.cik.s("last_avatar_path", c.dW(v.th()));
    MoreTabLiteUI.a(this.hdS);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.l
 * JD-Core Version:    0.6.2
 */