package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.br;
import com.tencent.mm.platformtools.e;
import com.tencent.mm.platformtools.f;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.setting.SettingsPersonalInfoUI;
import java.lang.ref.WeakReference;

final class dv
  implements View.OnClickListener
{
  dv(ds paramds, f paramf, e parame)
  {
  }

  public final void onClick(View paramView)
  {
    br.uP().a(this.hlB, this.hlC);
    Activity localActivity = (Activity)ds.a(this.hlD).get();
    if (localActivity != null)
    {
      if (!be.uz().isSDCardAvailable())
        dn.bW(localActivity);
    }
    else
      return;
    Intent localIntent = new Intent(localActivity, SettingsPersonalInfoUI.class);
    localIntent.putExtra("MicroMsg.SettingsPersonalInfoUIintent_set_avatar", true);
    localActivity.startActivity(localIntent);
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(4);
    arrayOfObject[1] = Integer.valueOf(1);
    localm.d(11002, arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dv
 * JD-Core Version:    0.6.2
 */