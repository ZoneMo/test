package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.webwx.a.c;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.az;

final class ap
  implements az
{
  ap(an paraman, c paramc)
  {
  }

  public final boolean ok()
  {
    be.uA().c(this.ffc);
    be.uA().b(281, an.a(this.heA));
    an.b(this.heA);
    if (an.c(this.heA) != null)
    {
      an.c(this.heA).azn();
      an.d(this.heA);
    }
    if (SettingsAboutMicroMsgUI.a(this.heA.hey) != null)
      SettingsAboutMicroMsgUI.a(this.heA.hey).dismiss();
    SettingsAboutMicroMsgUI.b(this.heA.hey);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ap
 * JD-Core Version:    0.6.2
 */