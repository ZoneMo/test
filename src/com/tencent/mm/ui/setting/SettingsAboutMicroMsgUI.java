package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.mm.i.i;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sandbox.updater.Updater;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.j;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.d;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.IconPreference;
import com.tencent.mm.ui.base.preference.IconSummaryPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.tools.WebViewUI;

public class SettingsAboutMicroMsgUI extends MMPreference
  implements m
{
  private n cIG;
  private ProgressDialog ffa;
  private m gmb = null;
  private boolean het = false;
  private boolean heu = false;
  private int hev = 0;
  Intent hew = null;
  private ay hex;

  private void aMn()
  {
    this.cIG = aIj();
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(2131034173);
    SettingsAboutMMHeaderPreference localSettingsAboutMMHeaderPreference = (SettingsAboutMMHeaderPreference)this.cIG.wn("settings_about_mm_header");
    String str1 = j.o(aal(), com.tencent.mm.protocal.a.fxr);
    if (com.tencent.mm.protocal.a.fxu)
      str1 = str1 + getString(2131165577);
    localSettingsAboutMMHeaderPreference.setVersion(str1);
    IconPreference localIconPreference1 = (IconPreference)this.cIG.wn("settings_update");
    IconPreference localIconPreference2;
    if (this.het)
    {
      localIconPreference1.np(0);
      localIconPreference1.aq(getString(2131167730), 2130838937);
      int i = au.c((Integer)be.uz().sr().get(12304));
      localIconPreference2 = (IconPreference)this.cIG.wn("settings_system_notice");
      if (i <= 0)
        break label421;
      localIconPreference2.np(0);
      localIconPreference2.aq(String.valueOf(i), 2130839580);
      label187: IconSummaryPreference localIconSummaryPreference = (IconSummaryPreference)this.cIG.wn("funtion_update");
      if (!this.heu)
        break label439;
      localIconSummaryPreference.aId();
      String str2 = j.o(null, this.hev);
      if (com.tencent.mm.protocal.a.fxu)
        str2 = str2 + getString(2131165577);
      localIconSummaryPreference.wq(getString(2131167730));
      localIconSummaryPreference.setSummary(str2);
      localIconSummaryPreference.aIe();
      this.cIG.wo("funtion_check_update");
    }
    while (true)
    {
      Preference localPreference = this.cIG.wn("settings_market_ratings");
      if (localPreference != null)
      {
        this.hew = new Intent("android.intent.action.VIEW", Uri.parse(j.gcn));
        if ((this.hew == null) || (!au.i(this, this.hew)))
        {
          boolean bool = this.cIG.c(localPreference);
          aa.d("MicroMsg.SettingsAboutMicroMsgUI", "removePreference settings_market_ratings :" + bool + " :" + localPreference.getSummary());
        }
      }
      this.cIG.notifyDataSetChanged();
      return;
      localIconPreference1.aq("", -1);
      localIconPreference1.np(8);
      break;
      label421: localIconPreference2.np(8);
      localIconPreference2.aq("", -1);
      break label187;
      label439: this.cIG.wo("funtion_update");
    }
  }

  private boolean aMo()
  {
    try
    {
      if (this.hew != null)
        aal().startActivity(this.hew);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("MicroMsg.SettingsAboutMicroMsgUI", "start market activity.");
    }
  }

  protected final void FR()
  {
    mn(2131165901);
    a(new am(this));
    aMn();
  }

  public final int Gc()
  {
    return 2131034173;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.SettingsAboutMicroMsgUI", "onSceneEnd " + paramInt2 + " errType " + paramInt1);
    com.tencent.mm.sandbox.a.a locala = (com.tencent.mm.sandbox.a.a)paramx;
    aa.d("MicroMsg.SettingsAboutMicroMsgUI", "updateInfo.getDownloadUrls() " + locala.ayv());
    aa.d("MicroMsg.SettingsAboutMicroMsgUI", "updateInfo.getPackVersion() " + locala.ayt());
    aa.d("MicroMsg.SettingsAboutMicroMsgUI", "updateInfo.now getPackVersion() " + com.tencent.mm.protocal.a.fxr);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.hev = locala.ayt();
      if ((this.hev > 0) && (this.hev > com.tencent.mm.protocal.a.fxr))
      {
        this.heu = true;
        if (be.uz().sd() != 0)
          i.rX().e(262145, true);
      }
      while (true)
      {
        aMn();
        return;
        aa.e("MicroMsg.SettingsAboutMicroMsgUI", "SubCoreHub.getNewBandage() uin not ready!");
        continue;
        this.heu = false;
        if (be.uz().sd() != 0)
          i.rX().e(262145, false);
        else
          aa.e("MicroMsg.SettingsAboutMicroMsgUI", "SubCoreHub.getNewBandage() uin not ready!");
      }
    }
    aMn();
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str1 = paramPreference.getKey();
    aa.i("MicroMsg.SettingsAboutMicroMsgUI", str1 + " item has been clicked!");
    if (str1.equals("settings_update"))
    {
      if (be.uz().sd() != 0)
        i.rX().e(262146, false);
      while (true)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = z.azj();
        arrayOfObject3[1] = Integer.valueOf(com.tencent.mm.protocal.a.fxr);
        String str4 = getString(2131166011, arrayOfObject3);
        Intent localIntent5 = new Intent();
        localIntent5.putExtra("rawUrl", str4);
        localIntent5.putExtra("showShare", false);
        localIntent5.putExtra("show_bottom", false);
        localIntent5.setClass(this, WebViewUI.class);
        aal().startActivity(localIntent5);
        return true;
        aa.e("MicroMsg.SettingsAboutMicroMsgUI", "SubCoreHub.getNewBandage() uin not ready!");
      }
    }
    if (str1.equals("funtion_update"))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = z.azj();
      arrayOfObject2[1] = Integer.valueOf(this.hev);
      String str3 = getString(2131166010, arrayOfObject2);
      Intent localIntent4 = new Intent();
      localIntent4.putExtra("rawUrl", str3);
      localIntent4.putExtra("showShare", false);
      localIntent4.putExtra("show_bottom", false);
      localIntent4.setClass(this, WebViewUI.class);
      aal().startActivity(localIntent4);
      return true;
    }
    if (str1.equals("funtion_check_update"))
    {
      Updater.ly(16);
      if ((0x1 & j.bKs) != 0)
      {
        aa.e("MicroMsg.SettingsAboutMicroMsgUI", "package has set external update mode");
        Uri localUri = Uri.parse(j.gcn);
        Intent localIntent3 = new Intent("android.intent.action.VIEW", localUri).addFlags(268435456);
        if ((localUri == null) || (localIntent3 == null) || (!au.i(aal(), localIntent3)))
        {
          aa.e("MicroMsg.SettingsAboutMicroMsgUI", "parse market uri failed, jump to weixin.qq.com");
          startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://weixin.qq.com")).addFlags(268435456));
        }
        while (true)
        {
          return true;
          aa.i("MicroMsg.SettingsAboutMicroMsgUI", "parse market uri ok");
          startActivity(localIntent3);
        }
      }
      al.getContext().getSharedPreferences("system_config_prefs", 0).edit().putLong("recomended_update_ignore", au.FC()).commit();
      Updater localUpdater = Updater.a(this, new av(this));
      new aw(this);
      localUpdater.lA(3);
      return true;
    }
    if (str1.equals("funtion_about_wechat"))
    {
      com.tencent.mm.sdk.platformtools.am.sF("show_whatsnew");
      MMAppMgr.i(this, 57005);
      return true;
    }
    if (str1.equals("settings_market_ratings"))
      return aMo();
    if (str1.equals("settings_system_notice"))
    {
      int i = au.c((Integer)be.us().get(1));
      int j = au.c((Integer)be.uz().sr().get(12304));
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(i);
      arrayOfObject1[1] = Integer.valueOf(j);
      String str2 = getString(2131166008, arrayOfObject1);
      if (str2 == null)
        return true;
      be.uz().sr().set(12304, Integer.valueOf(0));
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("title", getString(2131165899));
      localIntent2.putExtra("rawUrl", str2);
      localIntent2.putExtra("showShare", false);
      localIntent2.setClass(this, WebViewUI.class);
      aal().startActivity(localIntent2);
      return true;
    }
    if (str1.equals("settings_feedback"))
    {
      if (z.azj().equals("zh_CN"))
      {
        aa.d("MicroMsg.SettingsAboutMicroMsgUI", "using faq webpage");
        Intent localIntent1 = new Intent(this, SettingsFAQWebUI.class);
        localIntent1.putExtra("showShare", false);
        localIntent1.putExtra("neverGetA8Key", true);
        aal().startActivity(localIntent1);
      }
      while (true)
      {
        return true;
        aal().startActivity(new Intent(this, SendFeedBackUI.class));
      }
    }
    if (str1.equals("settings_quit_wechat"))
    {
      h.a(aal(), 2131165594, 2131165593, 2131167701, 2131167702, new an(this), null);
      return true;
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (be.uz().sd() != 0)
      this.het = i.rX().cd(262146);
    while (true)
    {
      FR();
      be.uA().a(11, this);
      com.tencent.mm.sandbox.a.a locala = new com.tencent.mm.sandbox.a.a(2);
      be.uA().d(locala);
      return;
      aa.e("MicroMsg.SettingsAboutMicroMsgUI", "SubCoreHub.getNewBandage() uin not ready!");
    }
  }

  public void onDestroy()
  {
    be.uA().b(11, this);
    super.onDestroy();
  }

  public void onResume()
  {
    super.onResume();
    if (be.uz().sd() != 0)
      this.het = i.rX().cd(262146);
    while (true)
    {
      aMn();
      return;
      aa.e("MicroMsg.SettingsAboutMicroMsgUI", "SubCoreHub.getNewBandage() uin not ready!");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsAboutMicroMsgUI
 * JD-Core Version:    0.6.2
 */