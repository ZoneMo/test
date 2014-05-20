package com.tencent.mm.sandbox.updater;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.widget.Button;
import com.tencent.mm.b.g;
import com.tencent.mm.b.h;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.n;
import com.tencent.mm.sandbox.monitor.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.x;

final class l
  implements DialogInterface.OnClickListener
{
  l(AppUpdaterUI paramAppUpdaterUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AppUpdaterUI.d(this.gbe).aGH();
    aa.d("MicroMsg.AppUpdaterUI", "getBtn (ok button) is click");
    if (!com.tencent.mm.compatible.g.l.getExternalStorageState().equals("mounted"))
    {
      aa.e("MicroMsg.AppUpdaterUI", "no sdcard.");
      AppUpdaterUI.d(this.gbe).dismiss();
      AppUpdaterUI.e(this.gbe);
      return;
    }
    int i = this.gbe.getIntent().getIntExtra("intent_extra_updateMode", 0);
    String str1 = this.gbe.getIntent().getStringExtra("intent_extra_marketUrl");
    if ((i & 0x1) != 0)
    {
      aa.e("MicroMsg.AppUpdaterUI", "package has set external update mode");
      Uri localUri = Uri.parse(str1);
      Intent localIntent1 = new Intent("android.intent.action.VIEW", localUri).addFlags(268435456);
      if ((localUri == null) || (localIntent1 == null) || (!cj.i(this.gbe, localIntent1)))
      {
        aa.e("MicroMsg.AppUpdaterUI", "parse market uri failed, jump to weixin.qq.com");
        Intent localIntent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://weixin.qq.com")).addFlags(268435456);
        this.gbe.startActivity(localIntent2);
      }
      while (true)
      {
        this.gbe.finish();
        return;
        aa.i("MicroMsg.AppUpdaterUI", "parse market uri ok");
        this.gbe.startActivity(localIntent1);
      }
    }
    String str2 = j.sq(AppUpdaterUI.f(this.gbe));
    aa.d("MicroMsg.AppUpdaterUI", str2);
    if (str2 != null)
    {
      aa.i("MicroMsg.AppUpdaterUI", "update package already exist.");
      AppUpdaterUI.a(this.gbe, 8);
      if (AppUpdaterUI.g(this.gbe))
        AppUpdaterUI.a(this.gbe, 0);
      while (true)
      {
        AppUpdaterUI.a(this.gbe, str2);
        AppUpdaterUI.h(this.gbe).setEnabled(false);
        return;
        AppUpdaterUI.a(this.gbe, 9);
      }
    }
    if ((AppUpdaterUI.g(this.gbe)) && (AppUpdaterUI.i(this.gbe) != null) && (AppUpdaterUI.j(this.gbe) != null))
    {
      aa.i("MicroMsg.AppUpdaterUI", "Incresment Update");
      AppUpdaterUI.a(this.gbe, 5);
      if (!i.m(AppUpdaterUI.k(this.gbe) + AppUpdaterUI.j(this.gbe).getSize()))
      {
        AppUpdaterUI.d(this.gbe).dismiss();
        AppUpdaterUI.l(this.gbe);
        return;
      }
      AppUpdaterUI.a(this.gbe, new w(AppUpdaterUI.j(this.gbe).getSize(), AppUpdaterUI.f(this.gbe), AppUpdaterUI.m(this.gbe), AppUpdaterUI.i(this.gbe).nu() + AppUpdaterUI.j(this.gbe).getUrl(), AppUpdaterUI.j(this.gbe).nw(), AppUpdaterUI.j(this.gbe).nv()));
      AppUpdaterUI.n(this.gbe);
      AppUpdaterUI.h(this.gbe).setText(n.bDw);
    }
    while (true)
    {
      AppUpdaterUI.h(this.gbe).setEnabled(false);
      return;
      if (!i.m(AppUpdaterUI.k(this.gbe)))
      {
        aa.e("MicroMsg.AppUpdaterUI", "SDCard is full");
        AppUpdaterUI.d(this.gbe).dismiss();
        AppUpdaterUI.l(this.gbe);
        return;
      }
      AppUpdaterUI.o(this.gbe);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.l
 * JD-Core Version:    0.6.2
 */