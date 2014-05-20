package com.tencent.mm.plugin.wallet;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.c.a.cl;
import com.tencent.mm.c.a.cm;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.bind.ui.WalletBindUI;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.pay.ui.WalletLauncherUI;
import com.tencent.mm.plugin.wallet.pay.ui.a;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class c extends g
  implements m, a
{
  private int eVT;
  private cl eVU;

  private void pw(String paramString)
  {
    String str1 = null;
    aa.d("MicroMsg.WalletGetA8KeyRedirectListener", "startPay reqKey = " + paramString);
    PayInfo localPayInfo = new PayInfo();
    localPayInfo.fbh = this.eVT;
    String[] arrayOfString = paramString.replace("http://p.qq.com?", "").split("&");
    int i = arrayOfString.length;
    int j = 0;
    String str2 = null;
    if (j < i)
    {
      String str3 = arrayOfString[j];
      if (str3.startsWith("errcode="))
        str1 = str3.replace("errcode=", "");
      while (true)
      {
        j++;
        break;
        if (str3.startsWith("errmsg="))
          str2 = str3.replace("errmsg=", "");
        else if (str3.startsWith("reqkey="))
          localPayInfo.faP = str3.replace("reqkey=", "");
        else if (str3.startsWith("uuid="))
          localPayInfo.dnL = str3.replace("uuid=", "");
        else if (str3.startsWith("appid="))
          localPayInfo.appId = str3.replace("appid=", "");
        else if (str3.startsWith("appsource="))
          localPayInfo.fbc = str3.replace("appsource=", "");
        else if (str3.startsWith("productid="))
          localPayInfo.bPE = str3.replace("productid=", "");
      }
    }
    if ("0".equals(str1))
    {
      Intent localIntent = new Intent(this.eVU.bNO.context, WalletLauncherUI.class);
      localIntent.putExtra("key_pay_info", localPayInfo);
      this.eVU.bNO.context.startActivity(localIntent);
      if (this.eVU.gbX != null)
      {
        this.eVU.bNP.ret = 1;
        this.eVU.gbX.run();
      }
      return;
    }
    if (cj.hX(str2))
      str2 = this.eVU.bNO.context.getString(n.bHu);
    com.tencent.mm.ui.base.h.a(this.eVU.bNO.context, str2, "", new d(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    aa.d("MicroMsg.WalletGetA8KeyRedirectListener", "onSceneEnd errType = " + paramInt1 + ", errCode = " + paramInt2 + ",errMsg = " + paramString);
    be.uA().b(233, this);
    if ((paramInt1 != 0) || (paramInt2 != 0))
      return;
    pw(((com.tencent.mm.modelsimple.x)paramx).Cl());
  }

  public final void a(Context paramContext, int paramInt, Intent paramIntent)
  {
    StringBuilder localStringBuilder = new StringBuilder("onPayEnd, isOk = ");
    if (paramInt == -1);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.WalletGetA8KeyRedirectListener", bool);
      if (paramInt == -1)
        b.aM(paramContext);
      return;
    }
  }

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    String str1 = null;
    l.anT();
    if (!(parame instanceof cl))
      aa.aM("MicroMsg.WalletGetA8KeyRedirectListener", "mismatched event");
    String str2;
    String str3;
    do
    {
      do
      {
        return false;
        this.eVU = ((cl)parame);
        str2 = this.eVU.bNO.bNR;
        switch (this.eVU.bNO.bNQ)
        {
        default:
          com.tencent.mm.plugin.wallet.b.h.a(this);
          aa.d("MicroMsg.WalletGetA8KeyRedirectListener", "ReqKey = " + str2);
        case 12:
        }
      }
      while (str2 == null);
      if (!str2.startsWith("weixin://wxpay"))
        break label464;
      l.bZ(false);
      this.eVT = 4;
      be.uA().a(233, this);
      com.tencent.mm.modelsimple.x localx = new com.tencent.mm.modelsimple.x(str2, this.eVU.bNO.username, 4, 0);
      be.uA().d(localx);
      return false;
      aa.d("MicroMsg.WalletGetA8KeyRedirectListener", "startBind reqKey = " + str2);
      String[] arrayOfString = str2.replace("http://p.weixin.qq.com?", "").split("&");
      int i = arrayOfString.length;
      int j = 0;
      str3 = null;
      String str4 = null;
      if (j < i)
      {
        String str5 = arrayOfString[j];
        if (str5.startsWith("errcode="))
          str4 = str5.replace("errcode=", "");
        while (true)
        {
          j++;
          break;
          if (str5.startsWith("errmsg="))
            str3 = str5.replace("errmsg=", "");
          else if (str5.startsWith("importkey="))
            str1 = str5.replace("importkey=", "");
        }
      }
      if ((!"0".equals(str4)) || (cj.hX(str1)))
        break;
      Intent localIntent = new Intent(this.eVU.bNO.context, WalletBindUI.class);
      localIntent.putExtra("req_import_key", str1);
      localIntent.putExtra("intent_bind_scene", 2);
      this.eVU.bNO.context.startActivity(localIntent);
    }
    while (this.eVU.gbX == null);
    this.eVU.bNP.ret = 1;
    this.eVU.gbX.run();
    return false;
    if (cj.hX(str3))
      str3 = this.eVU.bNO.context.getString(n.bHu);
    com.tencent.mm.ui.base.h.a(this.eVU.bNO.context, str3, "", new e(this));
    return false;
    label464: this.eVT = 1;
    pw(str2);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.c
 * JD-Core Version:    0.6.2
 */