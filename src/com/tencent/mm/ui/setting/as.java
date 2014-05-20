package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.account.RegByMobileSetPwdUI;

final class as
  implements Runnable
{
  as(ar paramar, x paramx, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    be.uA().b(255, SettingsAboutMicroMsgUI.c(this.heB.hey));
    SettingsAboutMicroMsgUI.d(this.heB.hey);
    if (SettingsAboutMicroMsgUI.e(this.heB.hey) != null)
    {
      SettingsAboutMicroMsgUI.e(this.heB.hey).azn();
      SettingsAboutMicroMsgUI.f(this.heB.hey);
    }
    if (SettingsAboutMicroMsgUI.a(this.heB.hey) != null)
      SettingsAboutMicroMsgUI.a(this.heB.hey).dismiss();
    if ((this.cmw.getType() == 255) && (((com.tencent.mm.modelsimple.ac)this.cmw).Cv() == 1))
    {
      if ((this.cmz == -3) && (this.cmy == 4))
      {
        Intent localIntent = new Intent(this.heB.hey.aal(), RegByMobileSetPwdUI.class);
        localIntent.putExtra("kintent_hint", this.heB.hey.getString(2131165446));
        this.heB.hey.startActivityForResult(localIntent, 0);
      }
    }
    else
      return;
    SettingsAboutMicroMsgUI.g(this.heB.hey);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.as
 * JD-Core Version:    0.6.2
 */