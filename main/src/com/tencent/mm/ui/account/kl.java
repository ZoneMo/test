package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.plugin.a.b;

final class kl
  implements DialogInterface.OnClickListener
{
  kl(RegSetInfoUI paramRegSetInfoUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.ie("R500_100");
    Intent localIntent = new Intent(this.gtZ, RegByEmailUI.class);
    localIntent.addFlags(67108864);
    this.gtZ.startActivity(localIntent);
    this.gtZ.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.kl
 * JD-Core Version:    0.6.2
 */