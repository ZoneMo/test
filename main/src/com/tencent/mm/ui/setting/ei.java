package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.account.RegByMobileSetPwdUI;

final class ei
  implements Runnable
{
  ei(eh parameh, x paramx, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    be.uA().b(255, SettingsUI.c(this.hgm.hgl));
    SettingsUI.a(this.hgm.hgl, null);
    if (SettingsUI.d(this.hgm.hgl) != null)
    {
      SettingsUI.d(this.hgm.hgl).azn();
      SettingsUI.a(this.hgm.hgl, null);
    }
    if (SettingsUI.e(this.hgm.hgl) != null)
      SettingsUI.e(this.hgm.hgl).dismiss();
    if ((this.cmw.getType() == 255) && (((com.tencent.mm.modelsimple.ac)this.cmw).Cv() == 1))
    {
      if ((this.cmz == -3) && (this.cmy == 4))
      {
        Intent localIntent = new Intent(this.hgm.hgl.aal(), RegByMobileSetPwdUI.class);
        localIntent.putExtra("kintent_hint", this.hgm.hgl.getString(2131165446));
        this.hgm.hgl.startActivityForResult(localIntent, 0);
      }
    }
    else
      return;
    SettingsUI.k(this.hgm.hgl);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ei
 * JD-Core Version:    0.6.2
 */