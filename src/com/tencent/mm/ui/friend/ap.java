package com.tencent.mm.ui.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.ui.MMWizardActivity;

final class ap
  implements DialogInterface.OnClickListener
{
  ap(FindMContactAddUI paramFindMContactAddUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((FindMContactAddUI.k(this.hbn) != null) && (FindMContactAddUI.k(this.hbn).contains("2")))
    {
      Intent localIntent = new Intent(this.hbn, FindMContactInviteUI.class);
      localIntent.putExtra("regsetinfo_ticket", FindMContactAddUI.l(this.hbn));
      localIntent.putExtra("login_type", FindMContactAddUI.m(this.hbn));
      localIntent.putExtra("regsetinfo_NextStyle", FindMContactAddUI.e(this.hbn));
      MMWizardActivity.j(this.hbn, localIntent);
      return;
    }
    FindMContactAddUI.n(this.hbn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.ap
 * JD-Core Version:    0.6.2
 */