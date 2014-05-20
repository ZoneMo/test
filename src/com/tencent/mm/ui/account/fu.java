package com.tencent.mm.ui.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.plugin.a.b;

final class fu
  implements DialogInterface.OnClickListener
{
  fu(RegByEmailUI paramRegByEmailUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.ie("L2_signup");
    Intent localIntent = new Intent(this.gsr, LoginHistoryUI.class);
    localIntent.putExtra("email_address", RegByEmailUI.g(this.gsr));
    this.gsr.startActivity(localIntent);
    this.gsr.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fu
 * JD-Core Version:    0.6.2
 */