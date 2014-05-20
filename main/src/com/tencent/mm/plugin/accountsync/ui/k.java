package com.tencent.mm.plugin.accountsync.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.al;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.ay;

final class k
  implements DialogInterface.OnCancelListener
{
  k(InviteFacebookFriendsUI paramInviteFacebookFriendsUI, ay paramay, al paramal)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.cIx.azn();
    be.uA().c(this.cIw);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.k
 * JD-Core Version:    0.6.2
 */