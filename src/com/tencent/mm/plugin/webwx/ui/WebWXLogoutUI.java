package com.tencent.mm.plugin.webwx.ui;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.ba;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.protocal.a.gf;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.z.i;
import junit.framework.Assert;

public class WebWXLogoutUI extends MMPreference
  implements ba, m
{
  private ProgressDialog ffa = null;

  private boolean apd()
  {
    if (!be.se())
      return false;
    int i = v.tm();
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)aIj().wn("webwx_notification");
    Assert.assertNotNull(localCheckBoxPreference);
    int j;
    gf localgf;
    if (localCheckBoxPreference.isChecked())
    {
      j = i | 0x2000;
      be.uz().sr().set(40, Integer.valueOf(j));
      localgf = new gf();
      localgf.fIH = 27;
      if (!localCheckBoxPreference.isChecked())
        break label123;
    }
    label123: for (int k = 1; ; k = 2)
    {
      localgf.fII = k;
      be.uz().st().a(new az(23, localgf));
      return true;
      j = i & 0xFFFFDFFF;
      break;
    }
  }

  protected final void FR()
  {
    vT("");
    aES().setBackgroundResource(2131492883);
    a(new a(this));
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)aIj().wn("webwx_notification");
    boolean bool = v.tn();
    aa.d("MicroMsg.WebWXLogoutUI", "isWebWXNotificationOpen = " + bool);
    localCheckBoxPreference.setChecked(bool);
    if (!cj.hX(com.tencent.mm.plugin.webwx.a.a.feV))
      localCheckBoxPreference.setTitle(com.tencent.mm.plugin.webwx.a.a.feV);
    Preference localPreference = aIj().wn("webwx_logout");
    if ((localPreference != null) && (!cj.hX(com.tencent.mm.plugin.webwx.a.a.feW)))
      localPreference.setTitle(com.tencent.mm.plugin.webwx.a.a.feW);
  }

  public final int Gc()
  {
    return 2131034194;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.ffa != null)
    {
      this.ffa.dismiss();
      this.ffa = null;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      Toast.makeText(this, 2131167115, 1).show();
      return;
    }
    finish();
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if ("webwx_notification".equals(str))
      return apd();
    if ("webwx_logout".equals(str))
    {
      h.a(aal(), 2131167113, 2131167675, new b(this), null);
      return true;
    }
    return false;
  }

  public final View ch()
  {
    View localView = View.inflate(this, 2130903868, null);
    if (!cj.hX(com.tencent.mm.plugin.webwx.a.a.feU))
      ((TextView)localView.findViewById(2131364277)).setText(com.tencent.mm.plugin.webwx.a.a.feU);
    return localView;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    be.uA().a(281, this);
    be.uz().a(this);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    be.uA().b(281, this);
    be.uz().b(this);
  }

  protected void onPause()
  {
    if ((aIi()) && (be.se()))
      apd();
    be.uA().d(new i(5));
    super.onPause();
  }

  public final void uf()
  {
    if (!be.uz().sk())
      finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webwx.ui.WebWXLogoutUI
 * JD-Core Version:    0.6.2
 */