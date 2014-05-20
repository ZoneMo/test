package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.webwx.a.c;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.base.h;

final class et
  implements View.OnClickListener
{
  private com.tencent.mm.n.m cyn = null;
  private ay hez = null;

  et(SettingsUI paramSettingsUI)
  {
  }

  public final void onClick(View paramView)
  {
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(2);
    localm.d(11053, arrayOfObject);
    SettingsUI.b(this.hgl).dismiss();
    if (be.uz().sk())
    {
      ac localac = be.uA();
      eu localeu = new eu(this);
      this.cyn = localeu;
      localac.a(281, localeu);
      c localc = new c(2);
      be.uA().d(localc);
      this.hez = new ay(new ev(this, localc), false);
      this.hez.bO(5000L);
      SettingsUI localSettingsUI = this.hgl;
      Activity localActivity = this.hgl.aal();
      this.hgl.getString(2131167675);
      SettingsUI.a(localSettingsUI, h.a(localActivity, this.hgl.getString(2131167114), true, new ew(this, localc)));
      return;
    }
    SettingsUI.g(this.hgl);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.et
 * JD-Core Version:    0.6.2
 */