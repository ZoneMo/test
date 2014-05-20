package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.plugin.webwx.a.c;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.base.h;

final class an
  implements DialogInterface.OnClickListener
{
  private m cyn = null;
  private ay hez = null;

  an(SettingsAboutMicroMsgUI paramSettingsAboutMicroMsgUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (be.uz().sk())
    {
      ac localac = be.uA();
      ao localao = new ao(this);
      this.cyn = localao;
      localac.a(281, localao);
      c localc = new c(2);
      be.uA().d(localc);
      this.hez = new ay(new ap(this, localc), false);
      this.hez.bO(5000L);
      SettingsAboutMicroMsgUI localSettingsAboutMicroMsgUI = this.hey;
      Activity localActivity = this.hey.aal();
      this.hey.getString(2131167675);
      SettingsAboutMicroMsgUI.a(localSettingsAboutMicroMsgUI, h.a(localActivity, this.hey.getString(2131167114), true, new aq(this, localc)));
      return;
    }
    SettingsAboutMicroMsgUI.b(this.hey);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.an
 * JD-Core Version:    0.6.2
 */