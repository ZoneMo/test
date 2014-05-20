package com.tencent.mm.plugin.wallet.pwd.ui;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.tencent.mm.c.a.im;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.pwd.a.c;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.ay;

public class WalletPwdConfirmUI extends WalletBaseUI
{
  private com.tencent.mm.sdk.b.g csb = new i(this);
  private PayInfo eYW;
  private TextView fdB;
  private boolean fdC = false;
  private ay fdD = new ay(new h(this), false);
  private EditHintView fdo;

  private void aoD()
  {
    Bundle localBundle = aoJ();
    localBundle.putBoolean("intent_bind_end", true);
    com.tencent.mm.plugin.wallet.b.h.e(this, localBundle);
  }

  protected final void FR()
  {
    ((TextView)findViewById(com.tencent.mm.i.aQT)).setText(n.bGB);
    this.fdB = ((TextView)findViewById(com.tencent.mm.i.awS));
    com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
    if ((locali != null) && ((locali instanceof com.tencent.mm.plugin.wallet.b.g)))
      this.fdB.setText(n.bHs);
    while (true)
    {
      this.fdB.setVisibility(0);
      this.fdB.setOnClickListener(new f(this));
      this.fdB.setEnabled(false);
      this.fdB.setClickable(false);
      this.fdo = ((EditHintView)findViewById(com.tencent.mm.i.awR));
      this.fdo.a(new g(this));
      findViewById(com.tencent.mm.i.anV).setVisibility(8);
      a(this.fdo, 0, false);
      return;
      this.fdB.setText(n.bdY);
    }
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.plugin.wallet.c.a parama)
  {
    boolean bool2;
    if ((paramInt1 == 0) && (paramInt2 == 0))
      if ((parama instanceof com.tencent.mm.plugin.wallet.bind.model.g))
      {
        if (!this.fdC)
          aoD();
        bool2 = true;
      }
    boolean bool1;
    do
    {
      return bool2;
      if (com.tencent.mm.plugin.wallet.b.h.m(this).d(this, null))
      {
        if (this.eYW != null);
        for (String str = this.eYW.faP; ; str = "")
        {
          k(new com.tencent.mm.plugin.wallet.bind.model.g(str));
          im localim = new im();
          if (com.tencent.mm.sdk.b.a.ayH().g(localim))
          {
            this.fdC = true;
            com.tencent.mm.sdk.b.a.ayH().f(localim);
          }
          this.fdD.bO(10000L);
          break;
        }
      }
      if ((parama instanceof c))
      {
        com.tencent.mm.plugin.wallet.b.h.e(this, null);
        break;
      }
      if ((parama instanceof com.tencent.mm.plugin.wallet.pay.model.h))
      {
        com.tencent.mm.plugin.wallet.pay.model.h localh = (com.tencent.mm.plugin.wallet.pay.model.h)parama;
        if (localh.fbe)
          aoJ().putParcelable("key_orders", localh.fbf);
        com.tencent.mm.plugin.wallet.b.h.e(this, aoJ());
        break;
      }
      if ((parama instanceof com.tencent.mm.plugin.wallet.pwd.a.a))
      {
        com.tencent.mm.plugin.wallet.b.h.e(this, aoJ());
        com.tencent.mm.ui.base.h.an(this, getString(n.bGC));
        break;
      }
      com.tencent.mm.plugin.wallet.b.h.e(this, aoJ());
      break;
      bool1 = parama instanceof com.tencent.mm.plugin.wallet.pwd.a.a;
      bool2 = false;
    }
    while (!bool1);
    com.tencent.mm.ui.base.h.a(aal(), paramString, "", false, new j(this));
    return true;
  }

  protected final boolean anq()
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
    return k.bbU;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bHt);
    this.eYW = ((PayInfo)aoJ().getParcelable("key_pay_info"));
    FR();
    l.a(this, aoJ(), 6);
  }

  public void onPause()
  {
    super.onPause();
    com.tencent.mm.sdk.b.a.ayH().b("WalletPwdConfirmDoSecondaryProgressCallback", this.csb);
  }

  public void onResume()
  {
    this.fdo.requestFocus();
    super.onResume();
    com.tencent.mm.sdk.b.a.ayH().a("WalletPwdConfirmDoSecondaryProgressCallback", this.csb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.WalletPwdConfirmUI
 * JD-Core Version:    0.6.2
 */