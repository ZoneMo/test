package com.tencent.mm.ui.setting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.model.bv;
import com.tencent.mm.ui.base.h;

final class ay
  implements DialogInterface.OnClickListener
{
  ay(SettingsAboutSystemUI paramSettingsAboutSystemUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SettingsAboutSystemUI.a(this.heD, false);
    SettingsAboutSystemUI localSettingsAboutSystemUI1 = this.heD;
    SettingsAboutSystemUI localSettingsAboutSystemUI2 = this.heD;
    this.heD.getString(2131167675);
    SettingsAboutSystemUI.a(localSettingsAboutSystemUI1, h.a(localSettingsAboutSystemUI2, this.heD.getString(2131167726), true, new az(this)));
    bv.a(new ba(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ay
 * JD-Core Version:    0.6.2
 */