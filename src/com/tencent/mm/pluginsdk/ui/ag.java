package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.a.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

final class ag
  implements DialogInterface.OnClickListener
{
  ag(Context paramContext, String paramString1, String paramString2)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Context localContext = this.cGV;
    String str1 = this.cEg;
    String str2 = this.cmA;
    if (localContext == null)
    {
      aa.w("Micromsg.NetworkErrAlert", "reportViaWap: context is null");
      return;
    }
    if (str1 == null)
      aa.w("Micromsg.NetworkErrAlert", "reportViaWap: ip is null");
    if (str2 == null)
      aa.w("Micromsg.NetworkErrAlert", "reportViaWap: errMsg is null");
    String str3 = (String)be.uz().sr().get(2);
    String str4 = "http://w.mail.qq.com/cgi-bin/mmfeedback?t=mmfeedback&f=xhtml" + "&u=" + a.c(str3.getBytes(), true);
    String str5 = str4 + "&i=" + a.c(cj.R(str1, "").getBytes(), true);
    String str6 = str5 + "&e=" + a.c(cj.R(str2, "").getBytes(), true);
    String str7 = str6 + "&autologin=n";
    aa.d("Micromsg.NetworkErrAlert", "upload error to " + str7);
    cj.w(localContext, str7);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.ag
 * JD-Core Version:    0.6.2
 */