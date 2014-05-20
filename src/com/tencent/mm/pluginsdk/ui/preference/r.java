package com.tencent.mm.pluginsdk.ui.preference;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.pluginsdk.ui.u;
import com.tencent.mm.storage.i;

final class r
  implements View.OnClickListener
{
  r(NormalUserHeaderPreference paramNormalUserHeaderPreference)
  {
  }

  public final void onClick(View paramView)
  {
    String str = NormalUserHeaderPreference.b(this.fsu).getUsername();
    u localu = new u(NormalUserHeaderPreference.a(this.fsu), str);
    if (i.tC(str))
      i.tE(str);
    localu.arp();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.r
 * JD-Core Version:    0.6.2
 */