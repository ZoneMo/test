package com.tencent.mm.ui.account;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;

final class et
  implements DialogInterface.OnClickListener
{
  et(MobileVerifyUIOld paramMobileVerifyUIOld, x paramx)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (com.tencent.mm.protocal.a.fxu)
    {
      MobileVerifyUIOld localMobileVerifyUIOld = this.gsa;
      int i = n.biM;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = ("0x" + Integer.toHexString(com.tencent.mm.protocal.a.fxr));
      arrayOfObject[1] = z.azj();
      String str = localMobileVerifyUIOld.getString(i, arrayOfObject);
      aa.e("MicroMsg.MobileVerifyUI", "url " + str);
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("rawUrl", str);
      localIntent2.putExtra("showShare", false);
      localIntent2.putExtra("show_bottom", false);
      localIntent2.putExtra("needRedirect", false);
      localIntent2.putExtra("neverGetA8Key", true);
      localIntent2.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
      localIntent2.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
      com.tencent.mm.plugin.a.a.cHS.h(localIntent2, this.gsa);
      return;
    }
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("regsetinfo_ticket", ((ag)this.cmw).zC());
    localIntent1.putExtra("regsetinfo_user", MobileVerifyUIOld.m(this.gsa));
    localIntent1.putExtra("regsetinfo_ismobile", 1);
    localIntent1.putExtra("regsetinfo_NextControl", ((ag)this.cmw).zE());
    localIntent1.setClass(this.gsa, RegSetInfoUI.class);
    b.ie("R200_950_olduser");
    this.gsa.aal().startActivity(localIntent1);
    b.jdMethod_if(be.uv() + "," + this.gsa.getClass().getName() + ",L200_900_phone," + be.ds("L200_900_phone") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.et
 * JD-Core Version:    0.6.2
 */