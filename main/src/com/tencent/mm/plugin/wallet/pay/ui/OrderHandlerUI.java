package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;

public class OrderHandlerUI extends MMActivity
  implements m, a
{
  private String cOI;
  private com.tencent.mm.sdk.d.a fbs;
  private com.tencent.mm.sdk.d.c fbt;
  private com.tencent.mm.sdk.d.b fbu;
  private boolean fbv = false;

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 397)
      return;
    be.uA().b(397, this);
    aa.d("MicroMsg.OrderHandlerUI", "onSceneEnd, errType = " + paramInt1 + ", errCode = " + paramInt2);
    if ((paramInt1 == 4) && (paramInt2 == -5))
    {
      aa.e("MicroMsg.OrderHandlerUI", "onSceneEnd, auth access denied");
      this.fbt.bLJ = -1;
      b.a(this, this.cOI, this.fbt, this.fbu);
      finish();
      return;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      this.fbt.bLJ = -1;
      b.a(this, this.cOI, this.fbt, this.fbu);
      finish();
      return;
    }
    com.tencent.mm.plugin.wallet.pay.model.c localc = (com.tencent.mm.plugin.wallet.pay.model.c)paramx;
    int i = localc.aoq();
    String str1 = localc.aor();
    String str2 = localc.aos();
    String str3 = localc.aot();
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(i);
    arrayOfObject[1] = str1;
    arrayOfObject[2] = str2;
    arrayOfObject[3] = str3;
    aa.e("MicroMsg.OrderHandlerUI", "onSceneEnd, respErrCode = %d, respErrMsg = %s, respPrepayId = %s, respAppSource = %s", arrayOfObject);
    if (cj.hX(str2))
    {
      aa.e("MicroMsg.OrderHandlerUI", "onSceneEnd, respPrepayId is null");
      this.fbt.bLJ = -1;
      b.a(this, this.cOI, this.fbt, this.fbu);
      finish();
      return;
    }
    Intent localIntent = new Intent(this, WalletLauncherUI.class);
    PayInfo localPayInfo = new PayInfo();
    localPayInfo.appId = this.fbs.appId;
    localPayInfo.faP = str2;
    localPayInfo.fbi = this.fbs.fbi;
    localPayInfo.fbj = this.fbs.gcg;
    localPayInfo.fbh = 2;
    localPayInfo.fbc = str3;
    localPayInfo.fbk = String.valueOf(i);
    localPayInfo.bOM = str1;
    localIntent.putExtra("key_pay_info", localPayInfo);
    startActivityForResult(localIntent, 123);
    this.fbv = false;
  }

  public final void a(Context paramContext, int paramInt, Intent paramIntent)
  {
    this.fbv = true;
    aa.d("MicroMsg.OrderHandlerUI", "onPayEnd, isOk = " + paramInt);
    if (paramInt == -1)
    {
      String str = paramIntent.getExtras().getString("intent_pay_app_url");
      aa.d("MicroMsg.OrderHandlerUI", "onPayEnd, returnUrl = " + str);
      this.fbt.bLJ = 0;
      this.fbt.gck = str;
    }
    while (true)
    {
      b.a(this, this.cOI, this.fbt, this.fbu);
      finish();
      return;
      this.fbt.bLJ = -2;
    }
  }

  protected final int getLayoutId()
  {
    return -1;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (!this.fbv)
    {
      aa.d("MicroMsg.OrderHandlerUI", "onActivityResult, onPayEnd not called");
      this.fbt.bLJ = -2;
      b.a(this, this.cOI, this.fbt, this.fbu);
      finish();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    l.anT();
    h.a(this);
    this.cOI = getIntent().getStringExtra("_mmessage_appPackage");
    if ((this.cOI == null) || (this.cOI.length() == 0))
    {
      aa.e("MicroMsg.OrderHandlerUI", "callerPkgName is null, dealOrder fail, can not callback");
      finish();
      return;
    }
    this.fbu = new com.tencent.mm.sdk.d.b();
    this.fbu.i(getIntent().getExtras());
    this.fbs = new com.tencent.mm.sdk.d.a();
    this.fbs.i(getIntent().getExtras());
    this.fbt = new com.tencent.mm.sdk.d.c();
    this.fbt.gcc = this.fbs.gcc;
    this.fbt.gch = this.fbs.gch;
    com.tencent.mm.sdk.d.a locala = this.fbs;
    int i;
    if ((locala.appId == null) || (locala.appId.length() == 0))
    {
      aa.e("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid appId");
      i = 0;
    }
    while (i == 0)
    {
      aa.e("MicroMsg.OrderHandlerUI", "onCreate, PayReq checkArgs fail");
      this.fbt.bLJ = -1;
      this.fbt.gbZ = getString(n.bss);
      b.a(this, this.cOI, this.fbt, this.fbu);
      finish();
      return;
      if ((locala.fbi == null) || (locala.fbi.length() == 0))
      {
        aa.e("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid partnerId");
        i = 0;
      }
      else if ((locala.gcc == null) || (locala.gcc.length() == 0))
      {
        aa.e("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid prepayId");
        i = 0;
      }
      else if ((locala.gcd == null) || (locala.gcd.length() == 0))
      {
        aa.e("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid nonceStr");
        i = 0;
      }
      else if ((locala.gce == null) || (locala.gce.length() == 0))
      {
        aa.e("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid timeStamp");
        i = 0;
      }
      else if ((locala.gcf == null) || (locala.gcf.length() == 0))
      {
        aa.e("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid packageValue");
        i = 0;
      }
      else if ((locala.gcg == null) || (locala.gcg.length() == 0))
      {
        aa.e("MicroMsg.PaySdk.PayReq", "checkArgs fail, invalid sign");
        i = 0;
      }
      else if ((locala.gch != null) && (locala.gch.length() > 1024))
      {
        aa.e("MicroMsg.PaySdk.PayReq", "checkArgs fail, extData length too long");
        i = 0;
      }
      else
      {
        i = 1;
      }
    }
    if (!getIntent().getBooleanExtra("orderhandlerui_checkapp_result", false))
    {
      aa.e("MicroMsg.OrderHandlerUI", "onCreate, checkAppResult fail");
      this.fbt.bLJ = -1;
      b.a(this, this.cOI, this.fbt, this.fbu);
      finish();
      return;
    }
    be.uA().a(397, this);
    com.tencent.mm.plugin.wallet.pay.model.c localc = new com.tencent.mm.plugin.wallet.pay.model.c(this.fbs);
    be.uA().d(localc);
  }

  protected void onDestroy()
  {
    be.uA().b(397, this);
    h.anK();
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.OrderHandlerUI
 * JD-Core Version:    0.6.2
 */