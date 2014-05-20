package com.tencent.mm.ui.conversation;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.ui.account.RegByFacebookSetPwdUI;

final class bd
  implements DialogInterface.OnClickListener
{
  bd(MainUI paramMainUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.gZI.startActivity(new Intent(this.gZI.aal(), RegByFacebookSetPwdUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bd
 * JD-Core Version:    0.6.2
 */