package com.tencent.mm.ui.account;

import android.content.Context;
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
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.account.mobile.MobileInputUI;

final class lx
  implements View.OnClickListener
{
  lx(WelcomeSelectView_5_2 paramWelcomeSelectView_5_2, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool = true;
    if (com.tencent.mm.protocal.a.fxu)
    {
      Context localContext = this.cGV;
      int i = n.biM;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = ("0x" + Integer.toHexString(com.tencent.mm.protocal.a.fxr));
      arrayOfObject[bool] = z.azj();
      String str = localContext.getString(i, arrayOfObject);
      Intent localIntent3 = new Intent();
      localIntent3.putExtra("rawUrl", str);
      localIntent3.putExtra("showShare", false);
      localIntent3.putExtra("show_bottom", false);
      localIntent3.putExtra("needRedirect", false);
      localIntent3.putExtra("neverGetA8Key", bool);
      localIntent3.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
      localIntent3.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
      com.tencent.mm.plugin.a.a.cHS.h(localIntent3, this.cGV);
      return;
    }
    if (cm.vs().vt() > 0)
    {
      if (bool)
        break label276;
      Intent localIntent1 = new Intent(this.cGV, MobileInputUI.class);
      localIntent1.putExtra("mobile_input_purpose", 2);
      this.cGV.startActivity(localIntent1);
    }
    while (true)
    {
      b.eT(cm.vs().getId());
      b.ie("RE200_100");
      b.b(false, be.uv() + "," + getClass().getName() + ",RE100_100_new," + be.ds("RE100_100_new") + ",2");
      return;
      bool = false;
      break;
      label276: Intent localIntent2 = new Intent(this.cGV, RegByMobileRegAIOUI.class);
      localIntent2.putExtra("login_type", 0);
      this.cGV.startActivity(localIntent2);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.lx
 * JD-Core Version:    0.6.2
 */