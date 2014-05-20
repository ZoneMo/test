package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Intent;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.b;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.base.w;

final class al
  implements w
{
  al(ak paramak)
  {
  }

  public final void ai(int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent();
    switch (paramInt1)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      localIntent.putExtra("showShare", false);
      b.h(localIntent, this.eZn.eZk);
      return;
      WalletCardImportUI localWalletCardImportUI3 = this.eZn.eZk;
      int k = n.bFj;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = z.azj();
      localIntent.putExtra("rawUrl", localWalletCardImportUI3.getString(k, arrayOfObject3));
      continue;
      WalletCardImportUI localWalletCardImportUI2 = this.eZn.eZk;
      int j = n.bFk;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = z.azj();
      localIntent.putExtra("rawUrl", localWalletCardImportUI2.getString(j, arrayOfObject2));
      continue;
      if (WalletCardImportUI.c(this.eZn.eZk) != null)
      {
        WalletCardImportUI localWalletCardImportUI1 = this.eZn.eZk;
        int i = n.bFi;
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = z.azj();
        arrayOfObject1[1] = WalletCardImportUI.c(this.eZn.eZk).eXo;
        localIntent.putExtra("rawUrl", localWalletCardImportUI1.getString(i, arrayOfObject1));
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.al
 * JD-Core Version:    0.6.2
 */