package com.tencent.mm.ui.setting;

import android.app.Dialog;
import android.os.Looper;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.base.h;

final class eo
  implements View.OnClickListener
{
  eo(SettingsUI paramSettingsUI)
  {
  }

  public final void onClick(View paramView)
  {
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(3);
    localm.d(11053, arrayOfObject);
    SettingsUI.b(this.hgl).dismiss();
    aa.d("MicroMsg.SettingsUI", "logout, clear cookie");
    CookieSyncManager.createInstance(this.hgl.aal());
    CookieManager.getInstance().removeAllCookie();
    CookieSyncManager.getInstance().sync();
    be.uA().a(255, SettingsUI.a(this.hgl, new ep(this)));
    com.tencent.mm.modelsimple.ac localac = new com.tencent.mm.modelsimple.ac(2);
    localac.dS(2);
    be.uA().d(localac);
    SettingsUI.a(this.hgl, new ay(Looper.getMainLooper(), new er(this, localac), false));
    SettingsUI.d(this.hgl).bO(12000L);
    SettingsUI localSettingsUI1 = this.hgl;
    SettingsUI localSettingsUI2 = this.hgl;
    this.hgl.getString(2131167675);
    SettingsUI.a(localSettingsUI1, h.a(localSettingsUI2, this.hgl.getString(2131165192), false, new es(this, localac)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.eo
 * JD-Core Version:    0.6.2
 */