package com.tencent.mm.ui.pluginapp;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.tencent.mm.ah.h;
import com.tencent.mm.ah.k;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.LauncherUI;

final class t
  implements DialogInterface.OnClickListener
{
  t(FindMoreFriendsUI paramFindMoreFriendsUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    e locale;
    if (FindMoreFriendsUI.e(this.hdq) != null)
    {
      locale = be.uz().sr();
      if (FindMoreFriendsUI.e(this.hdq).isChecked())
        break label77;
    }
    label77: for (boolean bool = true; ; bool = false)
    {
      locale.set(4104, Boolean.valueOf(bool));
      LauncherUI.aEA().vS("tab_find_friend");
      if (k.Dz().Dr() <= 0)
        break;
      a.l(this.hdq.aal(), "nearby", ".ui.NearbyFriendShowSayHiUI");
      return;
    }
    a.l(this.hdq.aal(), "nearby", ".ui.NearbyFriendsUI");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.t
 * JD-Core Version:    0.6.2
 */