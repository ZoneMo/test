package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.ay;

final class ao
  implements m
{
  ao(an paraman)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
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
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ao
 * JD-Core Version:    0.6.2
 */