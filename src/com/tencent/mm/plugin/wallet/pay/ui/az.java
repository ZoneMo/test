package com.tencent.mm.plugin.wallet.pay.ui;

import android.os.CountDownTimer;
import android.widget.Button;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;

final class az extends CountDownTimer
{
  public az(WalletVerifyCodeUI paramWalletVerifyCodeUI)
  {
    super(60000L, 1000L);
  }

  public final void onFinish()
  {
    WalletVerifyCodeUI.c(this.fcR).setClickable(true);
    WalletVerifyCodeUI.c(this.fcR).setEnabled(true);
    WalletVerifyCodeUI.c(this.fcR).setText(this.fcR.getString(n.bHB));
  }

  public final void onTick(long paramLong)
  {
    aa.d("MicroMsg.WalletVertifyCodeUI", "onTick");
    WalletVerifyCodeUI.c(this.fcR).setText(this.fcR.getString(n.bHB) + "(" + paramLong / 1000L + ")");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.az
 * JD-Core Version:    0.6.2
 */