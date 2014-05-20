package com.tencent.mm.plugin.wallet.iap.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.plugin.wallet.a.a.c;
import com.tencent.mm.plugin.wallet.a.a.e;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.pay.ui.WalletLauncherUI;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;

final class i
  implements g, com.tencent.mm.plugin.wallet.pay.ui.a
{
  private String cZs = null;
  private String dcy = null;
  private String eZU = null;
  private String fah = null;
  private h fak = null;

  public i(WalletIapUI paramWalletIapUI)
  {
    com.tencent.mm.plugin.wallet.b.h.a(this);
  }

  public final void a(Activity paramActivity, com.tencent.mm.plugin.wallet.iap.a.a parama, h paramh)
  {
    l.anT();
    this.fak = paramh;
    this.cZs = parama.Lg();
    this.fah = parama.anB();
    this.dcy = parama.anA();
    this.eZU = parama.anz();
    Intent localIntent = new Intent(paramActivity, WalletLauncherUI.class);
    PayInfo localPayInfo = new PayInfo();
    localPayInfo.faP = parama.anC();
    localPayInfo.fbi = parama.anD();
    localPayInfo.fbj = parama.anE();
    localPayInfo.fbh = 5;
    localIntent.putExtra("key_pay_info", localPayInfo);
    this.fac.startActivityForResult(localIntent, 1);
  }

  public final void a(Context paramContext, int paramInt, Intent paramIntent)
  {
    aa.d("MicroMsg.WalletIapUI", "onPayEnd payResult: " + paramInt);
    if (this.fak != null)
      if (paramInt != -1)
        break label78;
    label78: for (c localc = c.jI(0); ; localc = c.jI(100000000))
    {
      e locale = new e(this.cZs, this.fah, this.eZU, this.dcy);
      this.fak.a(localc, locale);
      return;
    }
  }

  public final void a(ArrayList paramArrayList, h paramh)
  {
    if (paramh != null)
      paramh.a(c.jI(0), new e(this.cZs, this.fah, this.eZU, this.dcy));
  }

  public final boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    return true;
  }

  public final int anI()
  {
    return 2;
  }

  public final void bY(boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("key_err_code", 0);
    localIntent.putExtra("key_err_msg", "");
    this.fac.setResult(-1, localIntent);
    this.fac.finish();
  }

  public final void onDestroy()
  {
    com.tencent.mm.plugin.wallet.b.h.anK();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.ui.i
 * JD-Core Version:    0.6.2
 */