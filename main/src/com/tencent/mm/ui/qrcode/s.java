package com.tencent.mm.ui.qrcode;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.a.f;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.account.FacebookAuthUI;
import com.tencent.mm.ui.tools.WebViewUI;

final class s
  implements View.OnClickListener
{
  s(ShowQRCodeStep1UI paramShowQRCodeStep1UI)
  {
  }

  public final void onClick(View paramView)
  {
    if (ShowQRCodeStep1UI.a(this.hdD) == 3)
    {
      String str1 = be.uo();
      String str2 = v.th();
      int i = au.c((Integer)be.uz().sr().get(66561));
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = str1;
      arrayOfObject[1] = str2;
      arrayOfObject[2] = Integer.valueOf(i);
      aa.e("MicroMsg.ShowQRCodeStep1UI", "sessionKey[%s], userName[%s], style[%d]", arrayOfObject);
      String str3 = "http://weixin.qq.com/cgi-bin/rweibourl?sid=" + f.h(str1.getBytes()) + "&u=" + str2 + "&qr=" + i + "&device=" + a.fxk + "&version=" + a.fxr;
      aa.e("MicroMsg.ShowQRCodeStep1UI", "[%s]", new Object[] { str3 });
      Intent localIntent4 = new Intent(this.hdD, WebViewUI.class);
      localIntent4.putExtra("rawUrl", str3);
      localIntent4.putExtra("title", this.hdD.getString(2131168381));
      this.hdD.startActivity(localIntent4);
      this.hdD.finish();
      return;
    }
    if (ShowQRCodeStep1UI.a(this.hdD) == 4)
    {
      if (v.tE())
      {
        Intent localIntent3 = new Intent(this.hdD, ShareToQQUI.class);
        localIntent3.putExtra("show_to", 4);
        this.hdD.startActivity(localIntent3);
      }
      while (true)
      {
        this.hdD.finish();
        return;
        ShowQRCodeStep1UI.a(this.hdD, FacebookAuthUI.class);
      }
    }
    if (ShowQRCodeStep1UI.a(this.hdD) == 2)
    {
      Intent localIntent1 = new Intent(this.hdD, ShareToQQUI.class);
      localIntent1.putExtra("show_to", 2);
      this.hdD.startActivity(localIntent1);
      this.hdD.finish();
      return;
    }
    Intent localIntent2 = new Intent(this.hdD, ShareToQQUI.class);
    localIntent2.putExtra("show_to", 1);
    this.hdD.startActivity(localIntent2);
    this.hdD.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.s
 * JD-Core Version:    0.6.2
 */