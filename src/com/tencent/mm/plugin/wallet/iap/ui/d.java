package com.tencent.mm.plugin.wallet.iap.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import com.tencent.mm.plugin.wallet.a.a.c;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.List;

final class d
  implements g
{
  private String cZs;
  private String dcy;
  BroadcastReceiver dsL = new e(this);
  private String eZU;
  private h fad = null;
  private h fae = null;
  private com.tencent.mm.plugin.wallet.a.a.a faf;
  private com.tencent.mm.plugin.wallet.a.a.d fag;
  private String fah;

  public d(WalletIapUI paramWalletIapUI)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.tencent.mm.gwallet.ACTION_QUERY_RESPONSE");
    localIntentFilter.addAction("com.tencent.mm.gwallet.ACTION_PAY_RESPONSE");
    paramWalletIapUI.registerReceiver(this.dsL, localIntentFilter);
    this.faf = new com.tencent.mm.plugin.wallet.a.a.a();
  }

  private void jJ(int paramInt)
  {
    c localc = c.jH(paramInt);
    Intent localIntent = new Intent();
    localIntent.putExtra("key_err_code", localc.QC());
    localIntent.putExtra("key_err_msg", localc.getMessage());
    this.fac.setResult(-1, localIntent);
    this.fac.finish();
  }

  public final void a(Activity paramActivity, com.tencent.mm.plugin.wallet.iap.a.a parama, h paramh)
  {
    this.fad = paramh;
    this.cZs = parama.Lg();
    this.dcy = parama.anA();
    this.eZU = parama.anz();
    Intent localIntent = new Intent("com.tencent.mm.gwallet.ACTION_PAY_REQUEST");
    localIntent.setPackage("com.tencent.mm");
    localIntent.putExtra("product_id", this.cZs);
    this.fah = parama.anB();
    localIntent.putExtra("developer_pay_load", this.fah);
    if (!paramActivity.getPackageManager().queryIntentActivities(localIntent, 65536).isEmpty())
    {
      aa.i("MicroMsg.WalletIapUI", "GWallet Found!");
      paramActivity.startActivityForResult(localIntent, 10001);
    }
    c localc;
    do
    {
      return;
      aa.i("MicroMsg.WalletIapUI", "Try to downloading GWallet Moudle!");
      localc = c.jH(-2000);
    }
    while (this.fad == null);
    this.fad.a(localc, null);
  }

  public final void a(ArrayList paramArrayList, h paramh)
  {
    this.fae = paramh;
    aa.d("MicroMsg.WalletIapUI", "consumePurchase. consume...");
    ArrayList localArrayList = this.fag.aj(paramArrayList);
    if ((localArrayList != null) && (localArrayList.size() > 0))
    {
      Intent localIntent = new Intent("com.tencent.mm.gwallet.ACTION_CONSUME_REQUEST");
      localIntent.setPackage("com.tencent.mm");
      localIntent.putStringArrayListExtra("tokens", localArrayList);
      this.fac.sendBroadcast(localIntent);
    }
    c localc;
    do
    {
      return;
      localc = c.jH(0);
    }
    while (this.fae == null);
    this.fae.a(localc, null);
  }

  public final boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 10001)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt2);
      aa.e("MicroMsg.WalletIapUI", "purchase flow!result_code: %d", arrayOfObject);
      if (paramIntent != null)
      {
        int i = paramIntent.getIntExtra("RESPONSE_CODE", 0);
        if ((i == -2001) || (i == 3))
        {
          l.c(this.fah, this.cZs, this.dcy, i, "");
          jJ(i);
          return true;
        }
      }
      else
      {
        jJ(1);
        return true;
      }
    }
    return com.tencent.mm.plugin.wallet.a.a.a.a(paramIntent, this.fae, this.fah, this.cZs, this.dcy);
  }

  public final String anF()
  {
    return this.dcy;
  }

  public final String anG()
  {
    return this.cZs;
  }

  public final String anH()
  {
    return this.fah;
  }

  public final int anI()
  {
    return 3;
  }

  public final void bY(boolean paramBoolean)
  {
    aa.d("MicroMsg.WalletIapUI", "restorePurchase. Querying inventory.");
    aa.d("MicroMsg.WalletIapUI", "is direct? " + paramBoolean);
    Intent localIntent = new Intent("com.tencent.mm.gwallet.ACTION_QUERY_REQUEST");
    localIntent.setPackage("com.tencent.mm");
    localIntent.putExtra("is_direct", paramBoolean);
    this.fac.startActivityForResult(localIntent, 10001);
  }

  public final void onDestroy()
  {
    try
    {
      this.fac.unregisterReceiver(this.dsL);
      if (!cj.ag(this.fac))
      {
        aa.d("MicroMsg.WalletIapUI", "close front UI.");
        Intent localIntent = new Intent("com.tencent.mm.gwallet.ACTION_CONSUME_REQUEST");
        localIntent.setPackage("com.tencent.mm");
        this.fac.sendBroadcast(localIntent);
      }
      aa.d("MicroMsg.WalletIapUI", "Destroying helper.");
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        aa.e("MicroMsg.WalletIapUI", localIllegalArgumentException.toString());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.ui.d
 * JD-Core Version:    0.6.2
 */