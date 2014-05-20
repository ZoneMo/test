package com.tencent.mm.plugin.safedevice.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;

final class m
  implements DialogInterface.OnClickListener
{
  m(MySafeDeviceListUI paramMySafeDeviceListUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = (String)be.uz().sr().get(6);
    if (cj.hX(str))
    {
      aa.d("MicroMsg.MySafeDeviceListUI", "not bind mobile");
      return;
    }
    Intent localIntent = new Intent(this.ean, SecurityAccountIntroUI.class);
    localIntent.putExtra("binded_mobile", str);
    localIntent.putExtra("re_open_verify", true);
    MMWizardActivity.j(this.ean, localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.m
 * JD-Core Version:    0.6.2
 */