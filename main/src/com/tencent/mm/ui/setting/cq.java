package com.tencent.mm.ui.setting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.s;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class cq
  implements View.OnClickListener
{
  cq(SettingsModifyEmailAddrUI paramSettingsModifyEmailAddrUI)
  {
  }

  public final void onClick(View paramView)
  {
    s locals = new s(s.cxo);
    be.uA().d(locals);
    SettingsModifyEmailAddrUI localSettingsModifyEmailAddrUI1 = this.hfu;
    SettingsModifyEmailAddrUI localSettingsModifyEmailAddrUI2 = this.hfu;
    this.hfu.getString(2131167675);
    SettingsModifyEmailAddrUI.a(localSettingsModifyEmailAddrUI1, h.a(localSettingsModifyEmailAddrUI2, this.hfu.getString(2131166097), true, new cr(this)));
    this.hfu.SM();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.cq
 * JD-Core Version:    0.6.2
 */