package com.tencent.mm.ui.setting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class bt
  implements DialogInterface.OnCancelListener
{
  bt(SettingsAliasUI paramSettingsAliasUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if (SettingsAliasUI.e(this.hfi) != null)
      be.uA().c(SettingsAliasUI.e(this.hfi));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.bt
 * JD-Core Version:    0.6.2
 */