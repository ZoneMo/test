package com.tencent.mm.ui.openapi;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.tools.WebViewUI;

public class AddAppUI extends MMPreference
  implements m
{
  private n cIG;
  private AppPreference hcE;
  private AppPreference hcF;

  protected final void FR()
  {
    mn(2131166839);
    a(new a(this));
    this.cIG = aIj();
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(2131034114);
    this.hcE = ((AppPreference)this.cIG.wn("addapp_added"));
    this.hcE.nR(1);
    this.hcE.setOnItemClickListener(new b(this));
    this.hcE.b(new c(this));
    this.hcF = ((AppPreference)this.cIG.wn("addapp_available"));
    this.hcF.nR(0);
    this.hcF.setOnItemClickListener(new d(this));
  }

  public final int Gc()
  {
    return 2131034114;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.AddAppUI", "onSceneEnd, errType = " + paramInt1 + ", errCode = " + paramInt2);
    if ((paramInt1 == 0) && (paramInt2 == 0))
      return;
    aa.e("MicroMsg.AddAppUI", "onSceneEnd, errType = " + paramInt1 + ", errCode = " + paramInt2);
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    if (paramPreference.getKey().equals("addapp_recommend"))
    {
      SharedPreferences localSharedPreferences = aal().getSharedPreferences(al.azs(), 0);
      aal();
      String str1 = z.a(localSharedPreferences);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(com.tencent.mm.protocal.a.fxr);
      arrayOfObject[1] = str1;
      arrayOfObject[2] = z.azi();
      String str2 = getString(2131166847, arrayOfObject);
      Intent localIntent = new Intent();
      localIntent.putExtra("rawUrl", str2);
      localIntent.setClass(this, WebViewUI.class);
      startActivity(localIntent);
      return true;
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onPause()
  {
    super.onPause();
    if (this.hcE != null)
      this.hcE.onPause();
    if (this.hcF != null)
      this.hcF.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    FR();
    if (this.hcE != null)
      this.hcE.onResume();
    if (this.hcF != null)
      this.hcF.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.openapi.AddAppUI
 * JD-Core Version:    0.6.2
 */