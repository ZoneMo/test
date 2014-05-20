package com.tencent.mm.plugin.wallet.offline.ui;

import android.os.Bundle;
import android.widget.Button;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;

public class WalletOfflinePayAuthenFinishUI extends WalletBaseUI
{
  Button faG;

  protected final void FR()
  {
    mn(n.bGp);
    mC(n.bHD);
    this.faG = ((Button)findViewById(i.atD));
    this.faG.setOnClickListener(new a(this));
  }

  public final boolean Vi()
  {
    return false;
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.plugin.wallet.c.a parama)
  {
    return false;
  }

  protected final int getLayoutId()
  {
    return k.bbJ;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    gI(0);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.offline.ui.WalletOfflinePayAuthenFinishUI
 * JD-Core Version:    0.6.2
 */