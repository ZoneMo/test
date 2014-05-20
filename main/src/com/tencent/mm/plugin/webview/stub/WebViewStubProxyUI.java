package com.tencent.mm.plugin.webview.stub;

import android.app.Dialog;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import com.tencent.mm.c.a.ht;
import com.tencent.mm.c.a.hu;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelsimple.ak;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.pluginsdk.q;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.x;
import com.tencent.mm.ui.tools.WebViewStubCallbackWrapper;

public class WebViewStubProxyUI extends MMActivity
{
  private ay cBV = new ay(new l(this), true);
  private int diK = 0;
  private ao feu = null;
  private final ao fev = new i(this);
  private DialogInterface.OnDismissListener few = new k(this);

  protected final int getLayoutId()
  {
    return -1;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    WebViewStubCallbackWrapper localWebViewStubCallbackWrapper = (WebViewStubCallbackWrapper)getIntent().getParcelableExtra("webview_stub_callbacker_key");
    if (localWebViewStubCallbackWrapper != null)
      this.feu = localWebViewStubCallbackWrapper.aNT();
    Intent localIntent1 = getIntent();
    int i = localIntent1.getIntExtra("proxyui_action_code_key", 0);
    aa.d("MicroMsg.WebViewStubProxyUI", "onCreate, actionCode = " + i);
    switch (i)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      do
      {
        return;
        this.cBV.bO(100L);
        return;
        ht localht = new ht();
        localht.gbX = new g(this, localht);
        localht.bRo.context = this;
        localht.bRo.type = localIntent1.getIntExtra("update_type_key", 0);
        if (localht.bRo.type <= 0)
        {
          aa.e("MicroMsg.WebViewStubProxyUI", "doUpdate fail, invalid type = " + localht.bRo.type);
          finish();
          return;
        }
        com.tencent.mm.sdk.b.a.ayH().a(localht, Looper.myLooper());
        return;
        ca localca = be.uz().sz().vB("@t.qq.com");
        x localx;
        if (!v.tK())
          localx = com.tencent.mm.ui.base.h.a(this, n.bia, n.ber, new h(this), null);
        while (localx == null)
        {
          finish();
          return;
          if ((localca == null) || (cj.hX(localca.getName())))
          {
            localx = com.tencent.mm.ui.base.h.c(this, n.byR, n.ber);
          }
          else
          {
            String str = cj.hW(getIntent().getStringExtra("shortUrl"));
            ak localak = new ak(getIntent().getIntExtra("type", 0), str);
            be.uA().d(localak);
            try
            {
              this.feu.jQ(0);
              localx = null;
            }
            catch (Exception localException)
            {
              aa.w("MicroMsg.WebViewStubProxyUI", "setTitlePbVisibility, ex = " + localException.getMessage());
              localx = null;
            }
          }
        }
        localx.setOnDismissListener(this.few);
        return;
        this.cBV.bO(100L);
        return;
      }
      while (com.tencent.mm.pluginsdk.h.apk() == null);
      com.tencent.mm.pluginsdk.h.apk().a(this, localIntent1.getStringExtra("proxyui_handle_event_url"), this.few);
      return;
    case 6:
      int j = getIntent().getIntExtra("proxyui_expired_errtype", 0);
      int k = getIntent().getIntExtra("proxyui_expired_errcode", 0);
      if ((j == 0) && (k == 0))
      {
        aa.e("MicroMsg.WebViewStubProxyUI", "PROXY_AC_VALUE_ACCOUNT_EXPIRED, errType & errCode should not both be 0");
        return;
      }
      com.tencent.mm.c.a.a locala = new com.tencent.mm.c.a.a();
      locala.bLG.bLH = this;
      locala.bLG.bLI = j;
      locala.bLG.bLJ = k;
      com.tencent.mm.sdk.b.a.ayH().f(locala);
      return;
    case 7:
    }
    Intent localIntent2 = new Intent();
    localIntent2.putExtras(getIntent());
    com.tencent.mm.plugin.webview.a.a.cHS.c(this, localIntent2);
    finish();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    aa.d("MicroMsg.WebViewStubProxyUI", "onDestroy proxyui");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.WebViewStubProxyUI
 * JD-Core Version:    0.6.2
 */