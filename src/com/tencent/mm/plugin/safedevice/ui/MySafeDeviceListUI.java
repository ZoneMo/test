package com.tencent.mm.plugin.safedevice.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.plugin.safedevice.a.c;
import com.tencent.mm.plugin.safedevice.a.f;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class MySafeDeviceListUI extends MMPreference
  implements com.tencent.mm.n.m, al
{
  private com.tencent.mm.ui.base.preference.n cIG;
  private ProgressDialog cIr = null;
  private int eah = -2;
  private List eai;
  private q eaj;
  private boolean eak = true;
  private List eal;
  private MenuItem.OnMenuItemClickListener eam = new h(this);
  private Handler handler = new j(this);

  private void bc(boolean paramBoolean)
  {
    this.eai.clear();
    this.eal = f.Zu().Zq();
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(com.tencent.mm.q.bJV);
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)this.cIG.wn("safe_device_verify_check");
    if (localCheckBoxPreference != null)
      localCheckBoxPreference.setChecked(paramBoolean);
    if (this.eal.size() == 0)
    {
      this.cIG.wo("my_safe_device_list_tip");
      dh(false);
      return;
    }
    if (this.eah == 1)
    {
      a(0, getString(com.tencent.mm.n.bwK), this.eam);
      this.eah = (0xFFFFFFFF ^ this.eah);
    }
    Iterator localIterator = this.eal.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      SafeDeviceListPreference localSafeDeviceListPreference = new SafeDeviceListPreference(this);
      localSafeDeviceListPreference.setKey("mysafedevice_" + localc.field_uid);
      localSafeDeviceListPreference.setTitle(com.tencent.mm.ao.b.e(this, localc.field_name, -1));
      localSafeDeviceListPreference.setSummary(localc.field_devicetype);
      localSafeDeviceListPreference.a(this.eaj);
      localSafeDeviceListPreference.a(this.eaj);
      localSafeDeviceListPreference.b(localc);
      this.cIG.a(localSafeDeviceListPreference, -1);
      this.eai.add(localSafeDeviceListPreference);
    }
    dh(true);
  }

  protected final void FR()
  {
    a(new o(this));
    this.cIG = aIj();
    this.eai = new LinkedList();
    this.eaj = new q(this, (byte)0);
    a(0, getString(com.tencent.mm.n.bwK), this.eam);
    mn(com.tencent.mm.n.bwB);
  }

  public final int Gc()
  {
    return -1;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((this.cIr != null) && (this.cIr.isShowing()))
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.eak = v.to();
      bc(this.eak);
    }
    while (a.cHT.b(this, paramInt1, paramInt2))
      return;
    int i = com.tencent.mm.n.bwM;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(i, arrayOfObject), 0).show();
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (cj.hX(str))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MySafeDeviceListUI", "null key");
      return false;
    }
    boolean bool;
    if (str.equals("safe_device_verify_check"))
    {
      bool = ((CheckBoxPreference)paramPreference).isChecked();
      if (!bool)
        com.tencent.mm.ui.base.h.b(this, com.tencent.mm.n.bwG, com.tencent.mm.n.bwF, new k(this, bool), new l(this));
    }
    while (true)
    {
      return true;
      if (!this.eak)
        if (((Integer)be.uz().sr().get(64, Integer.valueOf(-1))).intValue() != 1)
        {
          com.tencent.mm.ui.base.h.b(this, com.tencent.mm.n.bwV, com.tencent.mm.n.bwW, new m(this), new n(this));
        }
        else
        {
          this.eak = bool;
          bc(this.eak);
          com.tencent.mm.plugin.safedevice.a.e.j(true, true);
          continue;
          if (str.startsWith("mysafedevice_"))
          {
            SafeDeviceListPreference localSafeDeviceListPreference = (SafeDeviceListPreference)paramPreference;
            if (localSafeDeviceListPreference != null)
            {
              Intent localIntent = new Intent(this, ModSafeDeviceNameUI.class);
              localIntent.putExtra("safe_device_name", localSafeDeviceListPreference.Zx().field_name);
              localIntent.putExtra("safe_device_uid", localSafeDeviceListPreference.Zx().field_uid);
              localIntent.putExtra("safe_device_type", localSafeDeviceListPreference.Zx().field_devicetype);
              localIntent.putExtra("safe_device_create_time", localSafeDeviceListPreference.Zx().field_createtime);
              startActivity(localIntent);
            }
          }
        }
    }
  }

  public final void ca(String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MySafeDeviceListUI", "notify " + paramString);
    this.handler.post(new p(this));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(302, this);
    FR();
    com.tencent.mm.modelsimple.aa localaa = new com.tencent.mm.modelsimple.aa(v.th());
    be.uA().d(localaa);
    getString(com.tencent.mm.n.ber);
    this.cIr = com.tencent.mm.ui.base.h.a(this, getString(com.tencent.mm.n.beu), true, new i(this, localaa));
  }

  protected void onDestroy()
  {
    super.onDestroy();
    be.uA().b(302, this);
  }

  protected void onResume()
  {
    super.onResume();
    this.eak = v.to();
    bc(this.eak);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.MySafeDeviceListUI
 * JD-Core Version:    0.6.2
 */