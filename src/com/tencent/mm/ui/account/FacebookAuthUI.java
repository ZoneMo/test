package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.r;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.q;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import java.util.HashMap;
import java.util.Map;

public class FacebookAuthUI extends MMPreference
  implements m
{
  public static final String[] gpP = { "publish_actions", "email" };
  private com.tencent.mm.ui.base.preference.n cIG;
  private final Map cQK = new HashMap();
  private r gpA;
  private boolean gpQ = false;
  private boolean gpR = false;
  private com.tencent.mm.ui.a.a.e gpx;
  private ProgressDialog gpy;
  private DialogInterface.OnCancelListener gpz;

  private void aFG()
  {
    this.cIG.removeAll();
    boolean bool;
    int i;
    if (this.gpQ)
    {
      bool = false;
      if (this.cQK.containsKey("facebook_auth_tip"))
      {
        Preference localPreference6 = (Preference)this.cQK.get("facebook_auth_tip");
        if (!bool)
          break label169;
        i = com.tencent.mm.n.bkj;
        label57: localPreference6.setTitle(i);
        this.cIG.b(localPreference6);
      }
      if (this.cQK.containsKey("facebook_auth_cat"))
      {
        Preference localPreference5 = (Preference)this.cQK.get("facebook_auth_cat");
        this.cIG.b(localPreference5);
      }
      if (bool)
        break label177;
      if (this.cQK.containsKey("facebook_auth_bind_btn"))
      {
        Preference localPreference4 = (Preference)this.cQK.get("facebook_auth_bind_btn");
        this.cIG.b(localPreference4);
      }
    }
    label169: label177: 
    do
    {
      return;
      bool = com.tencent.mm.model.v.tE();
      break;
      i = com.tencent.mm.n.bkd;
      break label57;
      if (this.cQK.containsKey("facebook_auth_account"))
      {
        Preference localPreference3 = (Preference)this.cQK.get("facebook_auth_account");
        localPreference3.setTitle(getString(com.tencent.mm.n.bkf) + be.uz().sr().get(65826));
        this.cIG.b(localPreference3);
      }
      if (this.cQK.containsKey("facebook_auth_cat2"))
      {
        Preference localPreference2 = (Preference)this.cQK.get("facebook_auth_cat2");
        this.cIG.b(localPreference2);
      }
    }
    while (!this.cQK.containsKey("facebook_auth_unbind_btn"));
    Preference localPreference1 = (Preference)this.cQK.get("facebook_auth_unbind_btn");
    this.cIG.b(localPreference1);
  }

  protected final void FR()
  {
    this.gpQ = getIntent().getBooleanExtra("is_force_unbind", false);
    this.gpx = new com.tencent.mm.ui.a.a.e("290293790992170");
    this.gpz = new s(this);
    this.cIG.addPreferencesFromResource(q.bJP);
    Preference localPreference1 = this.cIG.wn("facebook_auth_tip");
    if (localPreference1 != null)
      this.cQK.put("facebook_auth_tip", localPreference1);
    Preference localPreference2 = this.cIG.wn("facebook_auth_cat");
    if (localPreference2 != null)
      this.cQK.put("facebook_auth_cat", localPreference2);
    Preference localPreference3 = this.cIG.wn("facebook_auth_bind_btn");
    if (localPreference3 != null)
      this.cQK.put("facebook_auth_bind_btn", localPreference3);
    Preference localPreference4 = this.cIG.wn("facebook_auth_account");
    if (localPreference4 != null)
      this.cQK.put("facebook_auth_account", localPreference4);
    Preference localPreference5 = this.cIG.wn("facebook_auth_cat2");
    if (localPreference5 != null)
      this.cQK.put("facebook_auth_cat2", localPreference5);
    Preference localPreference6 = this.cIG.wn("facebook_auth_unbind_btn");
    if (localPreference6 != null)
      this.cQK.put("facebook_auth_unbind_btn", localPreference6);
    a(new t(this));
  }

  public final int Gc()
  {
    return q.bJP;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    if (paramx.getType() == 254)
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        this.gpA = new r(0, "");
        be.uA().d(this.gpA);
      }
    while (paramx.getType() != 183)
    {
      do
      {
        return;
        if (this.gpy != null)
          this.gpy.dismiss();
        if (paramInt2 == -82)
        {
          h.a(this, com.tencent.mm.n.byj, com.tencent.mm.n.ber, new w(this));
          return;
        }
        if (paramInt2 == -83)
        {
          h.a(this, com.tencent.mm.n.byg, com.tencent.mm.n.ber, new x(this));
          return;
        }
        if (paramInt2 == -84)
        {
          h.a(this, com.tencent.mm.n.byh, com.tencent.mm.n.ber, new y(this));
          return;
        }
        if (paramInt2 == -85)
        {
          h.a(this, com.tencent.mm.n.byf, com.tencent.mm.n.ber, new z(this));
          return;
        }
      }
      while (paramInt2 != -86);
      h.a(this, com.tencent.mm.n.byl, com.tencent.mm.n.ber, new aa(this));
      return;
    }
    if (this.gpy != null)
      this.gpy.dismiss();
    int i = ((r)paramx).zO();
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if (i == 0);
      for (int m = com.tencent.mm.n.bhJ; ; m = com.tencent.mm.n.bhH)
      {
        Toast.makeText(this, m, 1).show();
        this.gpQ = false;
        aFG();
        if (i != 1)
          break;
        be.uz().sx().tX("facebookapp");
        be.uz().sw().vb("facebookapp");
        this.gpR = true;
        return;
      }
    }
    if ((paramInt1 == 4) && (paramInt2 == -67))
    {
      Toast.makeText(this, com.tencent.mm.n.bkg, 1).show();
      return;
    }
    if ((paramInt1 == 4) && (paramInt2 == -5))
    {
      if (i == 1);
      for (int k = com.tencent.mm.n.bkc; ; k = com.tencent.mm.n.bkh)
      {
        Toast.makeText(this, k, 1).show();
        return;
      }
    }
    if (i == 0);
    for (int j = com.tencent.mm.n.bhI; ; j = com.tencent.mm.n.bhG)
    {
      Toast.makeText(this, j, 1).show();
      return;
    }
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.FacebookAuthUI", "onPreferenceTreeClick, key is null");
      return true;
    }
    if (str.equals("facebook_auth_bind_btn"));
    try
    {
      this.gpx.ca(this);
      label38: this.gpx = new com.tencent.mm.ui.a.a.e("290293790992170");
      this.gpx.a(this, gpP, new ab(this, (byte)0));
      return true;
      if (str.equals("facebook_auth_unbind_btn"))
      {
        h.a(this, com.tencent.mm.n.bki, com.tencent.mm.n.ber, new u(this), new v(this));
        return true;
      }
      return false;
    }
    catch (Exception localException)
    {
      break label38;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.gpx.c(paramInt1, paramInt2, paramIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cIG = aIj();
    FR();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      Intent localIntent = getIntent();
      localIntent.putExtra("bind_facebook_succ", this.gpR);
      setResult(-1, localIntent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    be.uA().b(183, this);
    be.uA().b(254, this);
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(183, this);
    be.uA().a(254, this);
    aFG();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.FacebookAuthUI
 * JD-Core Version:    0.6.2
 */