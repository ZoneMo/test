package com.tencent.mm.ui.base.preference;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

final class aa
  implements AdapterView.OnItemClickListener
{
  aa(y paramy)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool1 = true;
    if (paramInt < y.e(this.gGJ).getHeaderViewsCount());
    Preference localPreference;
    do
    {
      return;
      int i = paramInt - y.e(this.gGJ).getHeaderViewsCount();
      localPreference = (Preference)y.d(this.gGJ).getItem(i);
    }
    while ((!localPreference.isEnabled()) || (!localPreference.isSelectable()));
    boolean bool3;
    if ((localPreference instanceof CheckBoxPreference))
    {
      CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)localPreference;
      if (!localCheckBoxPreference.isChecked())
      {
        bool3 = bool1;
        localCheckBoxPreference.setChecked(bool3);
        if (localCheckBoxPreference.isPersistent())
          y.b(this.gGJ).edit().putBoolean(localPreference.getKey(), localCheckBoxPreference.isChecked()).commit();
        y.c(this.gGJ);
      }
    }
    for (boolean bool2 = bool1; ; bool2 = false)
    {
      if ((localPreference instanceof DialogPreference))
      {
        DialogPreference localDialogPreference = (DialogPreference)localPreference;
        localDialogPreference.showDialog();
        localDialogPreference.a(new ab(this, localDialogPreference, localPreference));
      }
      if ((localPreference instanceof EditPreference))
      {
        EditPreference localEditPreference = (EditPreference)localPreference;
        localEditPreference.showDialog();
        localEditPreference.a(new ac(this, localEditPreference, localPreference));
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
      {
        y localy = this.gGJ;
        y.d(this.gGJ);
        localy.f(localPreference);
      }
      if (!bool2)
        break;
      y.d(this.gGJ).notifyDataSetChanged();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.aa
 * JD-Core Version:    0.6.2
 */