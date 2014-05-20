package com.tencent.mm.ui.setting;

import com.tencent.mm.m.c;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.aa;

final class dr
  implements Runnable
{
  dr(SettingsPersonalInfoUI paramSettingsPersonalInfoUI)
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
    SettingsPersonalInfoUI.a(this.hfL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.dr
 * JD-Core Version:    0.6.2
 */