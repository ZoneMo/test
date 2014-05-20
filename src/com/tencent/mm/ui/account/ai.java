package com.tencent.mm.ui.account;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class ai
  implements DialogInterface.OnClickListener
{
  ai(FacebookFriendUI paramFacebookFriendUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(this.gpZ.aal(), FacebookAuthUI.class);
    localIntent.putExtra("is_force_unbind", true);
    this.gpZ.aal().startActivity(localIntent);
    this.gpZ.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ai
 * JD-Core Version:    0.6.2
 */