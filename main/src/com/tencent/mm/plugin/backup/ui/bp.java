package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class bp
  implements View.OnClickListener
{
  bp(BakchatSelcetCryptUI paramBakchatSelcetCryptUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.cNO, BakchatSetCryptUI.class);
    localIntent.putStringArrayListExtra("bak_usernames_list", BakchatSelcetCryptUI.a(this.cNO));
    localIntent.putExtra("isSelectAll", this.cNO.getIntent().getBooleanExtra("isSelectAll", false));
    this.cNO.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.bp
 * JD-Core Version:    0.6.2
 */