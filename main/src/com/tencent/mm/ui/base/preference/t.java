package com.tencent.mm.ui.base.preference;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class t
  implements AdapterView.OnItemClickListener
{
  t(MMPreference paramMMPreference)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool1 = true;
    Preference localPreference = (Preference)paramAdapterView.getAdapter().getItem(paramInt);
    if (localPreference == null)
      break label23;
    label23: 
    while ((!localPreference.isEnabled()) || (!localPreference.isSelectable()))
      return;
    boolean bool3;
    if ((localPreference instanceof CheckBoxPreference))
    {
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)localPreference;
      if (!localCheckBoxPreference.isChecked())
      {
        bool3 = bool1;
        localCheckBoxPreference.setChecked(bool3);
        if (localCheckBoxPreference.isPersistent())
          MMPreference.b(this.gGu).edit().putBoolean(localPreference.getKey(), localCheckBoxPreference.isChecked()).commit();
        MMPreference.c(this.gGu);
      }
    }
    for (boolean bool2 = bool1; ; bool2 = false)
    {
      if ((localPreference instanceof DialogPreference))
      {
        DialogPreference localDialogPreference = (DialogPreference)localPreference;
        localDialogPreference.showDialog();
        localDialogPreference.a(new u(this, localDialogPreference, localPreference));
      }
      if ((localPreference instanceof EditPreference))
      {
        EditPreference localEditPreference = (EditPreference)localPreference;
        localEditPreference.showDialog();
        localEditPreference.a(new v(this, localEditPreference, localPreference));
      }
      if ((localPreference instanceof MMSwitchButtonPreference))
      {
        MMSwitchButtonPreference localMMSwitchButtonPreference = (MMSwitchButtonPreference)localPreference;
        if (!localMMSwitchButtonPreference.isChecked());
        while (true)
        {
          localMMSwitchButtonPreference.setChecked(bool1);
          return;
          bool3 = false;
          break;
          bool1 = false;
        }
      }
      if (localPreference.getKey() != null)
        this.gGu.a(MMPreference.d(this.gGu), localPreference);
      if (!bool2)
        break;
      MMPreference.d(this.gGu).notifyDataSetChanged();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.t
 * JD-Core Version:    0.6.2
 */