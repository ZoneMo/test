package com.tencent.mm.plugin.wallet.pwd.ui;

import android.os.Bundle;
import android.view.View;
import com.tencent.mm.i;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;

public class WalletSetPasswordUI extends WalletBaseUI
{
  private EditHintView fdo;

  protected final void FR()
  {
    if (aoJ().getInt("key_err_code", 0) == -1002)
    {
      findViewById(i.awQ).setVisibility(0);
      aoJ().putInt("key_err_code", 0);
    }
    this.fdo = ((EditHintView)findViewById(i.awR));
    findViewById(i.anV).setVisibility(8);
    this.fdo.a(new k(this));
    a(this.fdo, 0, false);
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    return false;
  }

  protected final boolean ant()
  {
    return true;
  }

  public final boolean aoB()
  {
    return true;
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.bbU;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bHt);
    FR();
    l.a(this, aoJ(), 5);
  }

  public void onResume()
  {
    this.fdo.requestFocus();
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.WalletSetPasswordUI
 * JD-Core Version:    0.6.2
 */