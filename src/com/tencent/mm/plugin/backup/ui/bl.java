package com.tencent.mm.plugin.backup.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.backup.model.ax;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.sdk.platformtools.aa;

final class bl
  implements View.OnClickListener
{
  bl(BakchatBannerView paramBakchatBannerView)
  {
  }

  public final void onClick(View paramView)
  {
    if ((BakchatBannerView.a(this.cNK)) && (!d.Gj().HB()) && (!d.Go()))
    {
      aa.e(BakchatBannerView.Ir(), "banner onClick tempStg openDB failed!");
      this.cNK.refresh();
      return;
    }
    if (BakchatBannerView.a(this.cNK))
    {
      Intent localIntent1 = new Intent(BakchatBannerView.b(this.cNK), BakChatUploadingUI.class);
      localIntent1.putExtra("isContinue", true);
      BakchatBannerView.b(this.cNK).startActivity(localIntent1);
      return;
    }
    Intent localIntent2 = new Intent(BakchatBannerView.b(this.cNK), BakChatRecoveringUI.class);
    localIntent2.putExtra("isContinue", true);
    BakchatBannerView.b(this.cNK).startActivity(localIntent2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.bl
 * JD-Core Version:    0.6.2
 */