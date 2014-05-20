package com.tencent.mm.ui.account.mobile;

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
import com.tencent.mm.ui.account.RegSetInfoUI;

final class cg
  implements DialogInterface.OnClickListener
{
  cg(cb paramcb, x paramx)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (com.tencent.mm.protocal.a.fxu)
    {
      MobileVerifyUI localMobileVerifyUI = cb.a(this.gwH);
      int i = n.biM;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = ("0x" + Integer.toHexString(com.tencent.mm.protocal.a.fxr));
      arrayOfObject[1] = z.azj();
      String str = localMobileVerifyUI.getString(i, arrayOfObject);
      aa.e("MicroMsg.MobileVerifyLoginLogic", "url " + str);
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("rawUrl", str);
      localIntent2.putExtra("showShare", false);
      localIntent2.putExtra("show_bottom", false);
      localIntent2.putExtra("needRedirect", false);
      localIntent2.putExtra("neverGetA8Key", true);
      localIntent2.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
      localIntent2.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
      com.tencent.mm.plugin.a.a.cHS.h(localIntent2, cb.a(this.gwH));
      return;
    }
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("regsetinfo_ticket", ((ag)this.cmw).zC());
    localIntent1.putExtra("regsetinfo_user", cb.a(this.gwH).bTR);
    localIntent1.putExtra("regsetinfo_ismobile", 1);
    localIntent1.putExtra("regsetinfo_NextControl", ((ag)this.cmw).zE());
    localIntent1.setClass(cb.a(this.gwH), RegSetInfoUI.class);
    b.ie("R200_950_olduser");
    cb.a(this.gwH).startActivity(localIntent1);
    b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L200_900_phone," + be.ds("L200_900_phone") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.cg
 * JD-Core Version:    0.6.2
 */