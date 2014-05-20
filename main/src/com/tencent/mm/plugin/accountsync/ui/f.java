package com.tencent.mm.plugin.accountsync.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.ui.account.FacebookAuthUI;

final class f
  implements DialogInterface.OnClickListener
{
  f(InviteFacebookFriendsUI paramInviteFacebookFriendsUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(this.cIu.aal(), FacebookAuthUI.class);
    localIntent.putExtra("is_force_unbind", true);
    this.cIu.aal().startActivity(localIntent);
    this.cIu.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.f
 * JD-Core Version:    0.6.2
 */