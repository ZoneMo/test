package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.account.RegByMobileSetPwdUI;

final class eq
  implements Runnable
{
  eq(ep paramep, x paramx, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    be.uA().b(255, SettingsUI.c(this.hgo.hgn.hgl));
    SettingsUI.a(this.hgo.hgn.hgl, null);
    if (SettingsUI.d(this.hgo.hgn.hgl) != null)
    {
      SettingsUI.d(this.hgo.hgn.hgl).azn();
      SettingsUI.a(this.hgo.hgn.hgl, null);
    }
    if (SettingsUI.e(this.hgo.hgn.hgl) != null)
      SettingsUI.e(this.hgo.hgn.hgl).dismiss();
    if ((this.cmw.getType() == 255) && (((com.tencent.mm.modelsimple.ac)this.cmw).Cv() == 2))
    {
      if ((this.cmz == -3) && (this.cmy == 4))
      {
        Intent localIntent = new Intent(this.hgo.hgn.hgl.aal(), RegByMobileSetPwdUI.class);
        localIntent.putExtra("kintent_hint", this.hgo.hgn.hgl.getString(2131165446));
        this.hgo.hgn.hgl.startActivityForResult(localIntent, 5);
      }
    }
    else
      return;
    SettingsUI.f(this.hgo.hgn.hgl);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.eq
 * JD-Core Version:    0.6.2
 */