package com.tencent.mm.pluginsdk.ui.applet;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class ab
  implements AdapterView.OnItemLongClickListener
{
  ab(ContactListPreference paramContactListPreference)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((!ContactListPreference.a(this.foL).fog) || (!this.foL.kp(paramInt)));
    while (this.foL.km(paramInt))
      return true;
    aa.d("MicroMsg.ContactListPreference", "onItemLongClick " + paramInt);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ab
 * JD-Core Version:    0.6.2
 */