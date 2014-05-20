package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cm;
import com.tencent.mm.n;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.account.mobile.MobileInputUI;

final class ch
  implements View.OnClickListener
{
  ch(LoginHistoryUI paramLoginHistoryUI)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool = true;
    if (com.tencent.mm.protocal.a.fxu)
    {
      LoginHistoryUI localLoginHistoryUI = this.grc;
      int i = n.biM;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = ("0x" + Integer.toHexString(com.tencent.mm.protocal.a.fxr));
      arrayOfObject[bool] = z.azj();
      String str = localLoginHistoryUI.getString(i, arrayOfObject);
      aa.e("MicroMsg.LoginHistoryUI", "url " + str);
      Intent localIntent3 = new Intent();
      localIntent3.putExtra("rawUrl", str);
      localIntent3.putExtra("showShare", false);
      localIntent3.putExtra("show_bottom", false);
      localIntent3.putExtra("needRedirect", false);
      localIntent3.putExtra("neverGetA8Key", bool);
      localIntent3.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
      localIntent3.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
      com.tencent.mm.plugin.a.a.cHS.h(localIntent3, this.grc);
      return;
    }
    if (cm.vs().vt() > 0);
    while (!bool)
    {
      Intent localIntent1 = new Intent(this.grc, MobileInputUI.class);
      localIntent1.putExtra("mobile_input_purpose", 2);
      this.grc.startActivity(localIntent1);
      return;
      bool = false;
    }
    Intent localIntent2 = new Intent(this.grc, RegByMobileRegAIOUI.class);
    localIntent2.putExtra("login_type", 0);
    this.grc.startActivity(localIntent2);
    b.eT(cm.vs().getId());
    b.ie("RE200_100");
    b.id("RE100_100_logout");
    b.b(false, be.uv() + "," + getClass().getName() + ",RE100_100_logout," + be.ds("RE100_100_logout") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ch
 * JD-Core Version:    0.6.2
 */