package com.tencent.mm.plugin.wallet.pay.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;

public class WalletBrandUI extends MMActivity
  implements m, a
{
  private String appId;
  private Dialog dID = null;
  private boolean fbw = false;
  private String fbx;

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 398)
      return;
    com.tencent.mm.plugin.wallet.pay.model.b localb = (com.tencent.mm.plugin.wallet.pay.model.b)paramx;
    Intent localIntent = new Intent();
    String str = localb.aoo();
    aa.d("MicroMsg.WalletBrandUI", "req_key = " + str);
    PayInfo localPayInfo = new PayInfo();
    localPayInfo.faP = str;
    localPayInfo.appId = this.appId;
    localPayInfo.fbc = localb.aop();
    localPayInfo.fbh = 3;
    localPayInfo.bOM = paramString;
    localPayInfo.cCI = getIntent().getIntExtra("pay_channel", 0);
    localIntent.putExtra("key_pay_info", localPayInfo);
    localIntent.setClass(this, WalletLauncherUI.class);
    startActivityForResult(localIntent, 1);
  }

  public final void a(Context paramContext, int paramInt, Intent paramIntent)
  {
    aa.d("MicroMsg.WalletBrandUI", "onPayEnd payResult : " + paramInt);
    setResult(paramInt);
    finish();
  }

  protected final int getLayoutId()
  {
    return -1;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    aa.d("MicroMsg.WalletBrandUI", "onActivityResultresultCode : " + paramInt2 + " requestCode: " + paramInt1);
    if (paramInt2 == -1)
      switch (paramInt1)
      {
      default:
      case 1:
      }
    while (true)
    {
      finish();
      return;
      aa.d("MicroMsg.WalletBrandUI", "get result to callback? " + paramIntent.getStringExtra("test"));
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    l.anT();
    aa.v("MicroMsg.WalletBrandUI", "onCreate");
    h.a(this);
    be.uA().a(398, this);
  }

  public void onDestroy()
  {
    super.onDestroy();
    be.uA().b(398, this);
    h.anK();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onResume()
  {
    aa.d("MicroMsg.WalletBrandUI", "onResume");
    super.onResume();
    aa.d("MicroMsg.WalletBrandUI", "Handler jump");
    if (!this.fbw)
    {
      this.fbw = true;
      this.appId = getIntent().getStringExtra("appId");
      String str1 = getIntent().getStringExtra("signtype");
      String str2 = getIntent().getStringExtra("nonceStr");
      String str3 = getIntent().getStringExtra("timeStamp");
      String str4 = getIntent().getStringExtra("packageExt");
      String str5 = getIntent().getStringExtra("paySignature");
      String str6 = getIntent().getStringExtra("url");
      this.fbx = getIntent().getStringExtra("bizUsername");
      int i = getIntent().getIntExtra("pay_channel", 0);
      com.tencent.mm.plugin.wallet.pay.model.b localb = new com.tencent.mm.plugin.wallet.pay.model.b(this.appId, str1, str2, str4, str5, str3, str6, this.fbx, i);
      l.bZ(true);
      be.uA().d(localb);
      if (this.dID != null)
      {
        this.dID.dismiss();
        this.dID = null;
      }
      this.dID = com.tencent.mm.plugin.wallet.e.b.a(this, true, new c(this, localb));
      com.tencent.mm.plugin.wallet.c.c.anX().a(new d(this));
    }
  }

  public void onStart()
  {
    super.onStart();
  }

  protected void onStop()
  {
    super.onStop();
    if (this.dID != null)
    {
      this.dID.dismiss();
      this.dID = null;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.WalletBrandUI
 * JD-Core Version:    0.6.2
 */