package com.tencent.mm.pluginsdk.ui.preference;

import com.tencent.mm.storage.i;

final class u
  implements Runnable
{
  u(NormalUserHeaderPreference paramNormalUserHeaderPreference)
  {
  }

  public final void run()
  {
    NormalUserHeaderPreference.e(this.fsu);
    NormalUserHeaderPreference.f(this.fsu);
    NormalUserHeaderPreference.g(this.fsu);
    FMessageListView localFMessageListView;
    if (NormalUserHeaderPreference.h(this.fsu) != null)
    {
      localFMessageListView = NormalUserHeaderPreference.h(this.fsu);
      if (NormalUserHeaderPreference.b(this.fsu).rb())
        break label60;
    }
    label60: for (boolean bool = true; ; bool = false)
    {
      localFMessageListView.cG(bool);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.u
 * JD-Core Version:    0.6.2
 */