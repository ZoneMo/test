package com.tencent.mm.ui.openapi;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bi;
import com.tencent.mm.storage.bj;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public class AppProfileUI extends MMPreference
  implements al
{
  private n cIG;
  private com.tencent.mm.pluginsdk.model.app.k dox;
  private Handler handler = null;
  private f hcR;

  private static void a(com.tencent.mm.pluginsdk.model.app.k paramk, boolean paramBoolean)
  {
    LinkedList localLinkedList = new LinkedList();
    StringBuilder localStringBuilder = new StringBuilder().append(paramk.field_appId).append(",");
    if (paramBoolean);
    for (String str = "1"; ; str = "2")
    {
      localLinkedList.add(new bj(10165, str));
      be.uz().st().a(new bi(localLinkedList));
      return;
    }
  }

  private void aLV()
  {
    this.handler = new k(this);
    this.handler.sendEmptyMessageDelayed(0, 30L);
  }

  private void refresh()
  {
    int i = 1;
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(2131034115);
    AppHeaderPreference localAppHeaderPreference;
    f localf;
    if (this.dox.field_status == i)
    {
      this.cIG.wo("app_profile_add");
      localAppHeaderPreference = (AppHeaderPreference)this.cIG.wn("app_profile_header");
      localf = this.hcR;
      if (this.dox.field_status != i)
        break label100;
    }
    while (true)
    {
      localAppHeaderPreference.a(localf, i);
      return;
      this.cIG.wo("app_profile_remove");
      break;
      label100: int j = 0;
    }
  }

  protected final void FR()
  {
    boolean bool = true;
    this.hcR = new i(this);
    this.dox = l.F(getIntent().getStringExtra("AppProfileUI_AppId"), bool);
    if (this.dox != null);
    while (true)
    {
      Assert.assertTrue("initView : appInfo does not exist", bool);
      mn(2131166850);
      this.cIG = aIj();
      a(new j(this));
      refresh();
      return;
      bool = false;
    }
  }

  public final int Gc()
  {
    return 2131034115;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    aa.i("MicroMsg.AppProfileUI", str + " item has been clicked!");
    if (str.equals("app_profile_add"))
    {
      this.dox.field_status = 1;
      this.dox.field_modifyTime = System.currentTimeMillis();
      ba.HE().a(this.dox, new String[0]);
      refresh();
      a(this.dox, true);
      aLV();
      return true;
    }
    if (str.equals("app_profile_remove"))
    {
      this.dox.field_status = 0;
      this.dox.field_modifyTime = System.currentTimeMillis();
      ba.HE().a(this.dox, new String[0]);
      refresh();
      a(this.dox, false);
      aLV();
      return true;
    }
    return false;
  }

  public final void ca(String paramString)
  {
    if (paramString.equals(this.dox.field_appId))
      FR();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  protected void onPause()
  {
    ba.HE().f(this);
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    ba.HE().e(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.openapi.AppProfileUI
 * JD-Core Version:    0.6.2
 */