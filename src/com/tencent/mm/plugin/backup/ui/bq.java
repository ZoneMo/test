package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.backup.model.d;

final class bq
  implements View.OnClickListener
{
  bq(BakchatSelcetCryptUI paramBakchatSelcetCryptUI)
  {
  }

  public final void onClick(View paramView)
  {
    d.F(null);
    Intent localIntent = new Intent(this.cNO, BakChatUploadingUI.class);
    localIntent.putStringArrayListExtra("bak_usernames_list", BakchatSelcetCryptUI.a(this.cNO));
    localIntent.putExtra("isSelectAll", this.cNO.getIntent().getBooleanExtra("isSelectAll", false));
    this.cNO.startActivity(localIntent);
    this.cNO.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.bq
 * JD-Core Version:    0.6.2
 */