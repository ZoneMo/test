package com.tencent.mm.ui.setting;

import android.os.Bundle;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bo;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.z.i;

public class SettingsPluginsNotifyUI extends MMPreference
{
  private n cIG;
  private int state;

  private void KI()
  {
    this.cIG.removeAll();
    Preference localPreference1 = new Preference(this);
    localPreference1.setTitle(2131165965);
    localPreference1.setKey("settings_plugings_disturb_on");
    localPreference1.setLayoutResource(2130903475);
    Preference localPreference2;
    label100: Preference localPreference3;
    if (this.state == 0)
    {
      localPreference1.setWidgetLayoutResource(2130903524);
      this.cIG.b(localPreference1);
      localPreference2 = new Preference(this);
      localPreference2.setTitle(2131165966);
      localPreference2.setKey("settings_plugings_disturb_on_night");
      localPreference2.setLayoutResource(2130903475);
      if (this.state != 1)
        break label215;
      localPreference2.setWidgetLayoutResource(2130903524);
      this.cIG.b(localPreference2);
      localPreference3 = new Preference(this);
      localPreference3.setTitle(2131165967);
      localPreference3.setKey("settings_plugings_disturb_off");
      localPreference3.setLayoutResource(2130903475);
      if (this.state != 2)
        break label224;
      localPreference3.setWidgetLayoutResource(2130903524);
    }
    while (true)
    {
      this.cIG.b(localPreference3);
      Preference localPreference4 = new Preference(this);
      localPreference4.setTitle(2131165968);
      localPreference4.setLayoutResource(2130903515);
      this.cIG.b(localPreference4);
      this.cIG.notifyDataSetChanged();
      return;
      localPreference1.setWidgetLayoutResource(2130903525);
      break;
      label215: localPreference2.setWidgetLayoutResource(2130903525);
      break label100;
      label224: localPreference3.setWidgetLayoutResource(2130903525);
    }
  }

  private void nU(int paramInt)
  {
    this.state = paramInt;
    if ((this.state == 1) || (this.state == 0))
    {
      be.uz().sr().set(8200, Boolean.valueOf(true));
      if (this.state == 1)
      {
        be.uz().sr().set(8201, Integer.valueOf(22));
        be.uz().sr().set(8208, Integer.valueOf(8));
        be.uz().st().a(new bo(true, 22, 8));
      }
    }
    while (true)
    {
      be.uA().d(new i(5));
      KI();
      return;
      be.uz().sr().set(8201, Integer.valueOf(0));
      be.uz().sr().set(8208, Integer.valueOf(0));
      be.uz().st().a(new bo(true, 0, 0));
      continue;
      be.uz().sr().set(8200, Boolean.valueOf(false));
      be.uz().st().a(new bo());
    }
  }

  protected final void FR()
  {
    Boolean localBoolean = Boolean.valueOf(v.tz());
    int i = v.tH();
    int j = v.tI();
    int k;
    if (localBoolean.booleanValue())
      if (i == j)
        k = 0;
    for (this.state = k; ; this.state = 2)
    {
      aa.d("ui.settings.SettingsPlugingsNotify", localBoolean + "st " + i + " ed " + j + "  state " + this.state);
      this.state = this.state;
      this.cIG = aIj();
      mn(2131165964);
      a(new ds(this));
      return;
      k = 1;
      break;
    }
  }

  public final int Gc()
  {
    return -1;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str.equals("settings_plugings_disturb_on"))
      nU(0);
    if (str.equals("settings_plugings_disturb_on_night"))
      nU(1);
    if (str.equals("settings_plugings_disturb_off"))
      nU(2);
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onResume()
  {
    super.onResume();
    KI();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsPluginsNotifyUI
 * JD-Core Version:    0.6.2
 */