package com.tencent.mm.ui.account.mobile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.a.b;

final class ch
  implements DialogInterface.OnClickListener
{
  ch(cb paramcb)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.ie("L200_100");
    Intent localIntent = new Intent(cb.a(this.gwH), MobileInputUI.class);
    localIntent.putExtra("mobile_input_purpose", 1);
    localIntent.addFlags(67108864);
    cb.a(this.gwH).startActivity(localIntent);
    b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L200_900_phone," + be.ds("L200_900_phone") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.ch
 * JD-Core Version:    0.6.2
 */