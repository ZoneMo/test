package com.tencent.mm.plugin.backup.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class bm
  implements DialogInterface.OnClickListener
{
  bm(BakchatBannerView paramBakchatBannerView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(BakchatBannerView.b(this.cNK), BakChatRecoveringUI.class);
    localIntent.putExtra("isContinue", true);
    BakchatBannerView.b(this.cNK).startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.bm
 * JD-Core Version:    0.6.2
 */