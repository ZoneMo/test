package com.tencent.mm.ui.qrcode;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.mm.m.af;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;

public class GetQRCodeInfoUI extends Activity
  implements com.tencent.mm.n.m
{
  private ProgressDialog cIr = null;
  private aj hds;

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.GetQRCodeInfoUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt1 == 4) && (paramInt2 == -2004))
      h.a(this, 2131168421, 2131167675, new c(this));
    sj localsj;
    String str;
    Intent localIntent;
    do
    {
      return;
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        h.a(this, getString(2131165282, arrayOfObject), getString(2131167675), new d(this));
        return;
      }
      localsj = ((aj)paramx).CB();
      str = an.a(localsj.fEI);
      af.vJ().c(str, an.a(localsj.fzx));
      localIntent = new Intent(this, ContactInfoUI.class);
      com.tencent.mm.pluginsdk.ui.tools.c.a(localIntent, localsj, 30);
    }
    while (au.hW(str).length() <= 0);
    if ((0x8 & localsj.fNp) > 0)
      com.tencent.mm.plugin.d.c.m.dZN.j(10298, str + ",30");
    startActivityForResult(localIntent, 1);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    startActivity(new Intent(this, LauncherUI.class));
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903271);
    Uri localUri = getIntent().getData();
    if (localUri == null)
    {
      finish();
      return;
    }
    String str1 = au.hW(localUri.getHost());
    String str2 = au.hW(localUri.getScheme());
    if ((("http".equals(str2)) && ("weixin.qq.com".equals(str1))) || (("weixin".equals(str2)) && ("qr".equals(str1))))
    {
      be.uA().d(new cb(new a(this)));
      return;
    }
    finish();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.hds != null)
      be.uA().c(this.hds);
    be.uA().b(106, this);
  }

  public void onResume()
  {
    super.onResume();
    getString(2131167675);
    this.cIr = h.a(this, getString(2131166178), true, new b(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.GetQRCodeInfoUI
 * JD-Core Version:    0.6.2
 */