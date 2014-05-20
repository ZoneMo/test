package com.tencent.mm.pluginsdk.ui.applet;

import com.tencent.mm.sdk.platformtools.aa;

final class t
  implements aj
{
  t(s params)
  {
  }

  public final boolean jc(int paramInt)
  {
    if ((!this.fnX.fnN.fog) || (!this.fnX.fnN.kp(paramInt)));
    while (this.fnX.fnN.km(paramInt))
      return true;
    aa.d("MicroMsg.ContactListArchor", "onItemLongClick " + paramInt);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.t
 * JD-Core Version:    0.6.2
 */