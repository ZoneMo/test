package com.tencent.mm.ui.qrcode;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.ui.account.FacebookAuthUI;

final class p
  implements DialogInterface.OnClickListener
{
  p(ShareToQQUI paramShareToQQUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(this.hdz.aal(), FacebookAuthUI.class);
    localIntent.putExtra("is_force_unbind", true);
    this.hdz.aal().startActivityForResult(localIntent, 8);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.p
 * JD-Core Version:    0.6.2
 */