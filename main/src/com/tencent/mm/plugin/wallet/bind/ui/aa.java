package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Intent;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.b;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.ui.base.w;

final class aa
  implements w
{
  aa(z paramz)
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
      b.h(localIntent, this.eZe.eZd);
      return;
      WalletCardElmentUI localWalletCardElmentUI3 = this.eZe.eZd;
      int k = n.bFj;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = com.tencent.mm.sdk.platformtools.z.azj();
      localIntent.putExtra("rawUrl", localWalletCardElmentUI3.getString(k, arrayOfObject3));
      continue;
      WalletCardElmentUI localWalletCardElmentUI2 = this.eZe.eZd;
      int j = n.bFk;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = com.tencent.mm.sdk.platformtools.z.azj();
      localIntent.putExtra("rawUrl", localWalletCardElmentUI2.getString(j, arrayOfObject2));
      continue;
      if (WalletCardElmentUI.a(this.eZe.eZd) != null)
      {
        WalletCardElmentUI localWalletCardElmentUI1 = this.eZe.eZd;
        int i = n.bFi;
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = com.tencent.mm.sdk.platformtools.z.azj();
        arrayOfObject1[1] = WalletCardElmentUI.a(this.eZe.eZd).eXo;
        localIntent.putExtra("rawUrl", localWalletCardElmentUI1.getString(i, arrayOfObject1));
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.aa
 * JD-Core Version:    0.6.2
 */