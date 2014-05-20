package com.tencent.mm.ui.bindgooglecontact;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;

final class w
  implements DialogInterface.OnCancelListener
{
  w(GoogleFriendUI paramGoogleFriendUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    GoogleFriendUI.c(this.gHY);
    be.uA().c(GoogleFriendUI.d(this.gHY));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.w
 * JD-Core Version:    0.6.2
 */