package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.ui.LauncherUI;

final class dj
  implements DialogInterface.OnClickListener
{
  dj(dh paramdh)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    dh.a(this.gXv);
    Intent localIntent = new Intent(this.gXv.gXk.getContext(), LauncherUI.class);
    localIntent.putExtra("Intro_Switch", true).addFlags(67108864);
    this.gXv.gXk.getContext().startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.dj
 * JD-Core Version:    0.6.2
 */