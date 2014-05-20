package com.tencent.mm.plugin.base.stub;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.pluginsdk.model.app.t;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.sdk.platformtools.aa;

public class WXPayEntryActivity extends AutoLoginActivity
{
  private String cOI = null;

  protected final void a(a parama, Intent paramIntent)
  {
    boolean bool = true;
    if (paramIntent == null)
    {
      finish();
      return;
    }
    aa.d("MicroMsg.WXPayEntryActivity", "postLogin, delegate intent to OrderHandlerUI");
    this.cOI = paramIntent.getStringExtra("_mmessage_appPackage");
    aa.d("MicroMsg.WXPayEntryActivity", "postLogin, getCallingPackage success, value = " + this.cOI);
    if ((getIntent() == null) || (getIntent().getExtras() == null))
      bool = false;
    while (true)
    {
      if (!bool)
        aa.e("MicroMsg.WXPayEntryActivity", "postLogin, checkApp fail");
      paramIntent.putExtra("orderhandlerui_checkapp_result", bool);
      com.tencent.mm.ak.a.b(this, "wallet", ".pay.ui.OrderHandlerUI", new Intent().putExtras(paramIntent.getExtras()));
      finish();
      return;
      com.tencent.mm.sdk.d.a locala = new com.tencent.mm.sdk.d.a();
      locala.i(getIntent().getExtras());
      String str1 = locala.appId;
      aa.d("MicroMsg.WXPayEntryActivity", "postLogin, appId = " + str1);
      if ((str1 == null) || (str1.length() == 0))
      {
        aa.e("MicroMsg.WXPayEntryActivity", "checkApp fail, appId is null");
        bool = false;
      }
      else
      {
        k localk1 = l.F(str1, bool);
        if (localk1 == null)
        {
          aa.w("MicroMsg.WXPayEntryActivity", "checkApp fail, not reg");
          k localk2 = new k();
          localk2.field_appId = str1;
          localk2.field_appName = "";
          localk2.field_packageName = this.cOI;
          localk2.field_status = 0;
          String str2 = u.ae(this, this.cOI);
          if (str2 != null)
            localk2.field_signature = str2;
          if ((ba.HE().b(localk2)) && (au.hX(localk2.field_openId)))
          {
            aa.d("MicroMsg.WXPayEntryActivity", "checkApp, trigger getAppSetting, appId = " + str1);
            ba.aqj().eQ(str1);
          }
        }
        else if (localk1.field_status == 3)
        {
          aa.e("MicroMsg.WXPayEntryActivity", "checkApp fail, app is in blacklist");
          bool = false;
        }
        else if (!u.b(this, localk1, this.cOI))
        {
          aa.e("MicroMsg.WXPayEntryActivity", "checkApp fail, app invalid");
          bool = false;
        }
      }
    }
  }

  protected final boolean f(Intent paramIntent)
  {
    return true;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.WXPayEntryActivity
 * JD-Core Version:    0.6.2
 */