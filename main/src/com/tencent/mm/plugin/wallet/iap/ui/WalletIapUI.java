package com.tencent.mm.plugin.wallet.iap.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.wallet.ui.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import java.util.ArrayList;
import java.util.List;

public class WalletIapUI extends MMActivity
  implements m
{
  private int count = 1;
  private ProgressDialog dbm;
  private boolean eZV = false;
  private List eZW = new ArrayList();
  private ArrayList eZX = new ArrayList();
  private ArrayList eZY = new ArrayList();
  private g eZZ;
  private h faa = new b(this);
  private h fab = new c(this);

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.WalletIapUI", "ErrType:" + paramInt1 + ", errCode:" + paramInt2 + ",errMsg:" + paramString);
    com.tencent.mm.plugin.wallet.a.a.c localc = com.tencent.mm.plugin.wallet.a.a.c.o(paramInt2, paramString);
    int i = localc.QC();
    String str1 = localc.getMessage();
    aa.d("MicroMsg.WalletIapUI", "getWeiXinResult errCode:" + i + ",errMsg:" + str1);
    switch (paramx.getType())
    {
    default:
    case 422:
    case 414:
    }
    while (true)
    {
      return;
      if (i == 0)
      {
        aa.d("MicroMsg.WalletIapUI", "Prepare OK, LaunchPay...");
        com.tencent.mm.plugin.wallet.iap.a.a locala = (com.tencent.mm.plugin.wallet.iap.a.a)paramx;
        this.eZZ.a(this, locala, this.faa);
        return;
      }
      aa.w("MicroMsg.WalletIapUI", "back to preview UI, reason: PreparePurchase fail , errCode: " + i + " , errMsg: " + str1);
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("key_err_code", i);
      localIntent2.putExtra("key_err_msg", str1);
      setResult(-1, localIntent2);
      finish();
      return;
      com.tencent.mm.plugin.wallet.iap.a.b localb = (com.tencent.mm.plugin.wallet.iap.a.b)paramx;
      String str2 = localb.Lg();
      this.eZW.remove(str2);
      if (i == 0)
      {
        aa.d("MicroMsg.WalletIapUI", "Verify " + str2 + " OK");
        this.eZX.add(str2);
        this.eZY.add(localb.Li());
      }
      while (this.eZW.isEmpty())
      {
        aa.d("MicroMsg.WalletIapUI", "Verify All End... ");
        if (this.eZX.isEmpty())
          break label424;
        aa.d("MicroMsg.WalletIapUI", "mResultProductIds size: " + this.eZX.size() + ", Consume ...");
        this.eZZ.a(this.eZX, this.fab);
        return;
        aa.d("MicroMsg.WalletIapUI", "Verify " + str2 + " fail");
      }
    }
    label424: aa.d("MicroMsg.WalletIapUI", "back to preview UI, reason: VerifyPurchase fail , errCode: " + i + " , errMsg: " + str1);
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("key_err_code", i);
    localIntent1.putExtra("key_err_msg", str1);
    setResult(-1, localIntent1);
    finish();
  }

  public void finish()
  {
    if ((this.dbm != null) && (this.dbm.isShowing()))
    {
      this.dbm.dismiss();
      this.dbm = null;
    }
    if (this.eZZ != null)
      this.eZZ.onDestroy();
    super.finish();
  }

  protected final int getLayoutId()
  {
    return -1;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((this.eZZ != null) && (this.eZZ.a(paramInt1, paramInt2, paramIntent)))
    {
      aa.d("MicroMsg.WalletIapUI", "onActivityResult handled by mWalletPay.");
      return;
    }
    aa.i("MicroMsg.WalletIapUI", "havn't handle user action");
    Intent localIntent = new Intent();
    com.tencent.mm.plugin.wallet.a.a.c localc = com.tencent.mm.plugin.wallet.a.a.c.jI(-1);
    localIntent.putExtra("key_err_code", localc.QC());
    localIntent.putExtra("key_err_msg", localc.getMessage());
    setResult(-1, localIntent);
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.v("MicroMsg.WalletIapUI", "onCreate");
    be.uA().a(422, this);
    be.uA().a(414, this);
    if (getIntent().getIntExtra("key_action_type", 200001) == 200001)
      this.dbm = al.b(this, getString(n.beu), new a(this));
    if (v.ts())
    {
      aa.d("MicroMsg.WalletIapUI", "Pay use Google Wallet!");
      this.eZZ = new d(this);
      return;
    }
    aa.d("MicroMsg.WalletIapUI", "Pay use WeiXin Wallet!");
    this.eZZ = new i(this);
  }

  public void onDestroy()
  {
    aa.d("MicroMsg.WalletIapUI", "onDestroy");
    super.onDestroy();
    be.uA().b(422, this);
    be.uA().b(414, this);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    aa.d("MicroMsg.WalletIapUI", "onNewIntent");
    super.onNewIntent(paramIntent);
  }

  public void onResume()
  {
    aa.d("MicroMsg.WalletIapUI", "onResume");
    super.onResume();
    aa.d("MicroMsg.WalletIapUI", "Handler jump");
    Intent localIntent;
    if (!this.eZV)
    {
      this.eZV = true;
      localIntent = getIntent();
      if (localIntent.getIntExtra("key_action_type", 200001) == 200002)
      {
        aa.d("MicroMsg.WalletIapUI", "start to restore the purchase!");
        this.eZZ.bY(true);
      }
    }
    else
    {
      return;
    }
    String str1 = localIntent.getStringExtra("key_product_id");
    this.eZW.add(str1);
    aa.d("MicroMsg.WalletIapUI", "prepare pay product: " + str1);
    String str2 = localIntent.getStringExtra("key_price");
    String str3 = localIntent.getStringExtra("key_currency_type");
    String str4 = localIntent.getStringExtra("key_ext_info");
    this.count = localIntent.getIntExtra("key_count", 1);
    be.uA().d(new com.tencent.mm.plugin.wallet.iap.a.a(str1, str2, str3, this.count, this.eZZ.anI(), str4));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.ui.WalletIapUI
 * JD-Core Version:    0.6.2
 */