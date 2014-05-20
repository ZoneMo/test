package com.tencent.mm.ui.setting;

import android.content.Context;
import android.os.Bundle;
import android.text.format.DateFormat;
import com.tencent.mm.modelstat.f;
import com.tencent.mm.modelstat.j;
import com.tencent.mm.modelstat.r;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;

public class SettingsNetStatUI extends MMPreference
{
  private n cIG;
  private long period;

  private void aMy()
  {
    f localf = r.Dg().en((int)(this.period / 86400000L));
    if (localf == null)
      localf = new f();
    this.period = r.Dg().CZ();
    this.cIG.wn("settings_netstat_info").setTitle(getString(2131165981, new Object[] { DateFormat.format(getString(2131168212, new Object[] { "" }), this.period).toString() }));
    Preference localPreference1 = this.cIG.wn("settings_netstat_mobile");
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(localf.CU());
    arrayOfObject1[1] = Integer.valueOf(localf.CQ());
    aa.d("MicroMsg.SettingsNetStatUI", "dknetflow updateFlowStatistic mobile out:%d in:%d", arrayOfObject1);
    localPreference1.setSummary(i(this, localf.CU() + localf.CQ()));
    Preference localPreference2 = this.cIG.wn("settings_netstat_wifi");
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(localf.CV());
    arrayOfObject2[1] = Integer.valueOf(localf.CR());
    aa.d("MicroMsg.SettingsNetStatUI", "dknetflow updateFlowStatistic wifi out:%d in:%d", arrayOfObject2);
    localPreference2.setSummary(i(this, localf.CV() + localf.CR()));
    ((NetStatPreference)this.cIG.wn("settings_netstat_mobile_detail")).eg(false);
    ((NetStatPreference)this.cIG.wn("settings_netstat_wifi_detail")).eg(true);
    this.cIG.notifyDataSetChanged();
  }

  private static String i(Context paramContext, long paramLong)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = au.K(paramLong);
    return paramContext.getString(2131165987, arrayOfObject);
  }

  protected final void FR()
  {
    mn(2131165984);
    r.Dg().CY();
    this.cIG = aIj();
    this.period = r.Dg().CZ();
    this.cIG.wn("settings_netstat_info").setTitle(getString(2131165981, new Object[] { DateFormat.format(getString(2131168212, new Object[] { "" }), this.period).toString() }));
    a(new dh(this));
    a(0, getString(2131165985), new di(this));
  }

  protected final boolean Gb()
  {
    return false;
  }

  public final int Gc()
  {
    return 2131034176;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
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
    aMy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsNetStatUI
 * JD-Core Version:    0.6.2
 */