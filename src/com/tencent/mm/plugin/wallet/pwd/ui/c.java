package com.tencent.mm.plugin.wallet.pwd.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class c
  implements AdapterView.OnItemClickListener
{
  c(WalletForgotPwdUI paramWalletForgotPwdUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    WalletForgotPwdUI.a(this.fdz, WalletForgotPwdUI.d(this.fdz).jD(paramInt));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.c
 * JD-Core Version:    0.6.2
 */