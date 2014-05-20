package com.tencent.mm.ui.setting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.modelstat.j;
import com.tencent.mm.modelstat.r;
import com.tencent.mm.platformtools.au;

final class dj
  implements DialogInterface.OnClickListener
{
  dj(SettingsNetStatUI paramSettingsNetStatUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    r.Dg().em((int)(au.FF() / 86400000L));
    SettingsNetStatUI.b(this.hfJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.dj
 * JD-Core Version:    0.6.2
 */