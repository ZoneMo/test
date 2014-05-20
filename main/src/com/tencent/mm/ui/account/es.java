package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.account.mobile.MobileInputUI;

final class es
  implements DialogInterface.OnClickListener
{
  es(MobileVerifyUIOld paramMobileVerifyUIOld)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.ie("R200_100");
    Intent localIntent = new Intent(this.gsa, MobileInputUI.class);
    localIntent.putExtra("mobile_input_purpose", 2);
    localIntent.addFlags(67108864);
    this.gsa.startActivity(localIntent);
    if (MobileVerifyUIOld.o(this.gsa) == 0)
      b.jdMethod_if(be.uv() + "," + this.gsa.getClass().getName() + ",R200_600," + be.ds("R200_600") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.es
 * JD-Core Version:    0.6.2
 */