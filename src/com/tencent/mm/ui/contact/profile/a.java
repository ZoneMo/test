package com.tencent.mm.ui.contact.profile;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.pluginsdk.ui.u;
import com.tencent.mm.storage.i;

final class a
  implements View.OnClickListener
{
  a(BizInfoHeaderPreference paramBizInfoHeaderPreference)
  {
  }

  public final void onClick(View paramView)
  {
    String str = BizInfoHeaderPreference.a(this.gVS).getUsername();
    new u(BizInfoHeaderPreference.b(this.gVS), str, BizInfoHeaderPreference.c(this.gVS)).arp();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.a
 * JD-Core Version:    0.6.2
 */