package com.tencent.mm.pluginsdk.ui.preference;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ce;
import com.tencent.mm.storage.i;

final class v
  implements Runnable
{
  v(NormalUserHeaderPreference paramNormalUserHeaderPreference, ce paramce)
  {
  }

  public final void run()
  {
    if ((NormalUserHeaderPreference.b(this.fsu) != null) && (this.fsv != null) && (NormalUserHeaderPreference.b(this.fsu).getUsername().equals(this.fsv.aAs())))
    {
      NormalUserHeaderPreference.b(this.fsu).bH(this.fsv.ru());
      if (!NormalUserHeaderPreference.i(this.fsu))
        aa.e("MicroMsg.ContactInfoHeader", "initView : bindView = " + NormalUserHeaderPreference.j(this.fsu) + "contact = " + NormalUserHeaderPreference.b(this.fsu).getUsername());
    }
    else
    {
      return;
    }
    NormalUserHeaderPreference.e(this.fsu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.v
 * JD-Core Version:    0.6.2
 */