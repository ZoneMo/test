package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.an;
import com.tencent.mm.n.ac;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;

final class ct
  implements View.OnClickListener
{
  ct(SettingsModifyEmailAddrUI paramSettingsModifyEmailAddrUI)
  {
  }

  public final void onClick(View paramView)
  {
    an localan = new an((String)be.uz().sr().get(2));
    be.uA().d(localan);
    SettingsModifyEmailAddrUI localSettingsModifyEmailAddrUI = this.hfu;
    Activity localActivity = this.hfu.aal();
    this.hfu.getString(2131167675);
    SettingsModifyEmailAddrUI.a(localSettingsModifyEmailAddrUI, h.a(localActivity, this.hfu.getString(2131166132), true, new cu(this, localan)));
    this.hfu.SM();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ct
 * JD-Core Version:    0.6.2
 */