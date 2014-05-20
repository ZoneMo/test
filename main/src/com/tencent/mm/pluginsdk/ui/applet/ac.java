package com.tencent.mm.pluginsdk.ui.applet;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class ac
  implements AdapterView.OnItemClickListener
{
  ac(ContactListPreference paramContactListPreference)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (ContactListPreference.b(this.foL) != null)
    {
      if (!this.foL.kn(paramInt))
        break label30;
      ContactListPreference.b(this.foL);
    }
    label30: 
    do
    {
      do
      {
        return;
        if (!this.foL.ko(paramInt))
          break;
      }
      while ((ContactListPreference.a(this.foL) == null) || (!ContactListPreference.a(this.foL).fog));
      ContactListPreference.a(this.foL).km(0);
      return;
      if ((this.foL.asa()) && (this.foL.kp(paramInt)))
      {
        ContactListPreference.b(this.foL);
        return;
      }
      if ((this.foL.asa()) && (!this.foL.kp(paramInt)))
      {
        ContactListPreference.b(this.foL);
        return;
      }
    }
    while ((this.foL.asa()) || (!this.foL.kp(paramInt)));
    ContactListPreference.b(this.foL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ac
 * JD-Core Version:    0.6.2
 */