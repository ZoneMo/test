package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.plugin.a.b;

final class kj
  implements DialogInterface.OnClickListener
{
  kj(RegSetInfoUI paramRegSetInfoUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.ie("R400_100_signup");
    Intent localIntent = new Intent(this.gtZ, LoginUI.class);
    localIntent.addFlags(67108864);
    this.gtZ.startActivity(localIntent);
    this.gtZ.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.kj
 * JD-Core Version:    0.6.2
 */