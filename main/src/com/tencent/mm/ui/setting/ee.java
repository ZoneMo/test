package com.tencent.mm.ui.setting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.bindqq.BindQQUI;

final class ee
  implements DialogInterface.OnClickListener
{
  ee(SettingsTWeiboUI paramSettingsTWeiboUI, CheckBoxPreference paramCheckBoxPreference)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.hgi.setChecked(false);
    this.hgh.aIk().edit().putBoolean(this.hgi.getKey(), false).commit();
    MMWizardActivity.j(this.hgh.aal(), new Intent(this.hgh.aal(), BindQQUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ee
 * JD-Core Version:    0.6.2
 */