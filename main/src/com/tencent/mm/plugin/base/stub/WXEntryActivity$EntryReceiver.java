package com.tencent.mm.plugin.base.stub;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ag;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.m;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.pluginsdk.model.app.t;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.sdk.platformtools.aa;

public class WXEntryActivity$EntryReceiver extends BroadcastReceiver
{
  private String appId;
  private String appName;
  private String bMO;
  private int cOs;
  private Context context;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null));
    label436: k localk1;
    label668: label801: 
    do
    {
      String str2;
      do
      {
        k localk2;
        do
          while (true)
          {
            return;
            com.tencent.mm.ak.a.avr();
            this.context = paramContext;
            String str1 = paramIntent.getStringExtra("_mmessage_content");
            this.cOs = paramIntent.getIntExtra("_mmessage_sdkVersion", 0);
            if (!WXEntryActivity.ff(this.cOs))
            {
              aa.e("MicroMsg.WXEntryActivity", "sdk version is not supported, sdkVersion = " + this.cOs);
              return;
            }
            this.bMO = paramIntent.getStringExtra("_mmessage_appPackage");
            if ((this.bMO == null) || (this.bMO.length() <= 0))
            {
              aa.e("MicroMsg.WXEntryActivity", "unknown package, ignore");
              return;
            }
            if (!WXEntryActivity.b(paramIntent.getByteArrayExtra("_mmessage_checksum"), WXEntryActivity.d(str1, this.cOs, this.bMO)))
            {
              aa.e("MicroMsg.WXEntryActivity", "checksum fail");
              return;
            }
            if (str1 == null)
            {
              aa.e("MicroMsg.WXEntryActivity", "check appid failed, null content");
              return;
            }
            Uri localUri = Uri.parse(str1);
            str2 = localUri.getAuthority();
            this.appId = localUri.getQueryParameter("appid");
            aa.d("MicroMsg.WXEntryActivity", "onReceive, appId = " + this.appId);
            if ((this.appId == null) || (this.appId.length() <= 0))
            {
              aa.e("MicroMsg.WXEntryActivity", "invalid appid, ignore");
              return;
            }
            if ((!be.se()) || (be.uG()))
            {
              aa.w("MicroMsg.WXEntryActivity", "not login");
              return;
            }
            if (!"registerapp".equals(str2))
              break label801;
            aa.d("MicroMsg.WXEntryActivity", "handle app registeration: " + this.bMO + ", sdkver=" + this.cOs);
            if (!be.se())
            {
              aa.e("MicroMsg.WXEntryActivity", "no available account");
              return;
            }
            localk2 = l.F(this.appId, true);
            if (!u.b(this.context, localk2, this.bMO))
            {
              aa.e("MicroMsg.WXEntryActivity", "reg fail, check app fail");
              ba.aqh().qn(this.appId);
              return;
            }
            if ((localk2 != null) && (localk2.apQ()))
            {
              ag localag = h.apq();
              if (localag != null)
                localag.g(this.context, this.appId, this.bMO);
            }
            try
            {
              localPackageManager = this.context.getPackageManager();
              localApplicationInfo = localPackageManager.getApplicationInfo(this.bMO, 0);
              if (localApplicationInfo == null)
              {
                aa.e("MicroMsg.WXEntryActivity", "package not installed");
                return;
              }
            }
            catch (Throwable localThrowable)
            {
              PackageManager localPackageManager;
              ApplicationInfo localApplicationInfo;
              aa.e("MicroMsg.WXEntryActivity", "package not installed");
              Bitmap localBitmap;
              for (Object localObject = null; ; localObject = localBitmap)
              {
                if ((localk2 == null) || (!ba.HE().qp(this.appId)))
                  ba.HE().p(this.appId, (Bitmap)localObject);
                if (localk2 != null)
                  break label668;
                k localk3 = new k();
                localk3.field_appId = this.appId;
                localk3.field_appName = "";
                localk3.field_packageName = this.bMO;
                localk3.field_status = 0;
                String str3 = u.ae(this.context, this.bMO);
                if (str3 != null)
                  localk3.field_signature = str3;
                localk3.field_modifyTime = System.currentTimeMillis();
                boolean bool1 = ba.HE().b(localk3);
                com.tencent.mm.pluginsdk.ui.tools.a.ra(this.appId);
                if ((!bool1) || (!au.hX(localk3.field_openId)))
                  break;
                aa.d("MicroMsg.WXEntryActivity", "handleAppRegisteration, trigger getAppSetting, appId = " + this.appId);
                ba.aqj().eQ(this.appId);
                return;
                this.appName = localApplicationInfo.loadLabel(localPackageManager).toString();
                Drawable localDrawable = localApplicationInfo.loadIcon(localPackageManager);
                if (!(localDrawable instanceof BitmapDrawable))
                  break label436;
                localBitmap = ((BitmapDrawable)localDrawable).getBitmap();
              }
              if ((localk2.field_status == 2) || (localk2.field_status == 3) || (localk2.field_status == 4))
              {
                if (!localk2.apQ())
                  com.tencent.mm.pluginsdk.ui.tools.a.ra(this.appId);
                localk2.field_status = 0;
                boolean bool2 = ba.HE().a(localk2, new String[0]);
                aa.d("MicroMsg.WXEntryActivity", "handleAppRegisteration, updateRet = " + bool2);
              }
            }
          }
        while (!au.hX(localk2.field_openId));
        aa.d("MicroMsg.WXEntryActivity", "handleAppRegisteration, trigger getAppSetting, appId = " + this.appId);
        ba.aqj().eQ(this.appId);
        return;
      }
      while (!"unregisterapp".equals(str2));
      aa.d("MicroMsg.WXEntryActivity", "handle app unregisteration: " + this.bMO + ", sdkver=" + this.cOs);
      if (!be.se())
      {
        aa.e("MicroMsg.WXEntryActivity", "no available account");
        return;
      }
      localk1 = l.F(this.appId, false);
      if (!u.b(this.context, localk1, this.bMO))
      {
        aa.e("MicroMsg.WXEntryActivity", "unreg fail, check app fail");
        return;
      }
    }
    while ((localk1 == null) || (localk1.field_status == 5));
    localk1.field_status = 4;
    ba.HE().a(localk1, new String[0]);
    com.tencent.mm.pluginsdk.ui.tools.a.rb(this.appId);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.WXEntryActivity.EntryReceiver
 * JD-Core Version:    0.6.2
 */