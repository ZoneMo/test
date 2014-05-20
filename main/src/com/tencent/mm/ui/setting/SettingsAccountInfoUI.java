package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.mm.a.j;
import com.tencent.mm.ak.a;
import com.tencent.mm.e.c;
import com.tencent.mm.e.d;
import com.tencent.mm.model.av;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelsimple.aq;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.RoomRightUI;
import com.tencent.mm.ui.account.FacebookAuthUI;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.IconSwitchKeyValuePreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.PluginTextPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.bindqq.BindQQUI;
import com.tencent.mm.ui.cx;
import com.tencent.mm.ui.tools.WebViewUI;
import junit.framework.Assert;

public class SettingsAccountInfoUI extends MMPreference
  implements com.tencent.mm.n.m, com.tencent.mm.sdk.e.ar
{
  private n cIG;
  private ProgressDialog cIr;
  private View dUs;
  private TextView dUu;
  private EditText dUv;
  private com.tencent.mm.ui.base.x gJF;
  private final String heI = "com.tencent.qqpimsecure";
  private final String heJ = "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe";
  private final String heK = "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe&qqpimsecurestatus=1";
  private final String heL = "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe&qqpimsecurestatus=0";
  private String heM;
  private boolean heN;
  private final int heO = 0;
  private final int heP = 1;
  private final int heQ = 2;
  private int heR = 0;

  private void aMd()
  {
    Preference localPreference = this.cIG.wn("settings_username");
    String str1 = v.ti();
    if (cj.hX(str1))
    {
      String str2 = v.th();
      if (i.tD(str2))
      {
        localPreference.setSummary(getString(2131166087));
        return;
      }
      localPreference.setSummary(str2);
      return;
    }
    localPreference.setSummary(str1);
  }

  private void aMp()
  {
    Preference localPreference = this.cIG.wn("settings_email_addr");
    Assert.assertNotNull(localPreference);
    String str = (String)be.uz().sr().get(5);
    Integer localInteger = (Integer)be.uz().sr().get(7);
    if ((localInteger != null) && ((0x2 & localInteger.intValue()) != 0))
    {
      localPreference.setSummary(2131165933);
      return;
    }
    if (str != null)
    {
      localPreference.setSummary(2131165932);
      return;
    }
    localPreference.setSummary(2131166102);
  }

  private void aMq()
  {
    IconSwitchKeyValuePreference localIconSwitchKeyValuePreference = (IconSwitchKeyValuePreference)this.cIG.wn("settings_safe_device");
    if (localIconSwitchKeyValuePreference == null)
    {
      aa.e("MicroMsg.SettingsAccountInfoUI", "safedevicesate preference is null");
      return;
    }
    if (((Integer)be.uz().sr().get(9)).intValue() == 0)
    {
      aa.d("MicroMsg.SettingsAccountInfoUI", "not bind uin");
      this.cIG.O("settings_safe_device", true);
      return;
    }
    this.cIG.O("settings_safe_device", false);
    if (v.to())
    {
      localIconSwitchKeyValuePreference.setSummary(2131167203);
      localIconSwitchKeyValuePreference.ns(1);
      return;
    }
    localIconSwitchKeyValuePreference.setSummary(2131167204);
    localIconSwitchKeyValuePreference.ns(2);
  }

  private void aMr()
  {
    Preference localPreference = this.cIG.wn("settings_facebook");
    if (localPreference == null)
    {
      aa.e("MicroMsg.SettingsAccountInfoUI", "updateFacebook Preference null");
      return;
    }
    if (!v.tC())
    {
      this.cIG.c(localPreference);
      return;
    }
    if (!v.tE())
    {
      localPreference.setSummary(getString(2131165928));
      return;
    }
    localPreference.setSummary((String)be.uz().sr().get(65826));
  }

  private void aMs()
  {
    Preference localPreference = this.cIG.wn("settings_mobile");
    if (localPreference == null)
    {
      aa.e("MicroMsg.SettingsAccountInfoUI", "updateMobile Preference null");
      return;
    }
    String str = (String)be.uz().sr().get(6);
    aa.d("MicroMsg.SettingsAccountInfoUI", "mobile :" + str);
    if ((str == null) || (str.length() <= 0))
    {
      localPreference.setSummary(getString(2131165928));
      return;
    }
    localPreference.setSummary(str);
  }

  private void aMt()
  {
    Preference localPreference = this.cIG.wn("settings_uin");
    if (localPreference == null)
    {
      aa.e("MicroMsg.SettingsAccountInfoUI", "updateUin Preference null");
      return;
    }
    int i = ((Integer)be.uz().sr().get(9)).intValue();
    if (i == 0)
    {
      if (cj.Bj())
      {
        this.cIG.O("settings_uin", true);
        return;
      }
      localPreference.setSummary(2131165928);
      return;
    }
    localPreference.setSummary(new j(i));
  }

  private void aMu()
  {
    this.cIG.O("settings_room_right", true);
  }

  private void eh(boolean paramBoolean)
  {
    aa.d("MicroMsg.SettingsAccountInfoUI", "handlePassword " + paramBoolean);
    if (paramBoolean)
    {
      if (this.gJF != null)
      {
        this.gJF.show();
        return;
      }
      this.gJF = h.a(this, null, this.dUs, new bi(this), new bl(this));
      return;
    }
    startActivity(new Intent(this, SettingsModifyPasswordUI.class));
  }

  protected final void FR()
  {
    mn(2131165819);
    this.cIG = aIj();
    this.dUs = View.inflate(this, 2130903680, null);
    this.dUu = ((TextView)this.dUs.findViewById(2131363651));
    this.dUu.setText(getString(2131166086));
    this.dUv = ((EditText)this.dUs.findViewById(2131363652));
    this.dUv.setInputType(129);
    this.heM = getString(2131168205);
    a(new bg(this));
  }

  public final boolean Gb()
  {
    return true;
  }

  public final int Gc()
  {
    return 2131034174;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    aa.d("MicroMsg.SettingsAccountInfoUI", "onSceneEnd " + paramInt1 + " errCode " + paramInt2 + " errMsg " + paramString + "  " + paramx.getType());
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (paramx.getType() == 255)
      if ((paramInt1 == 0) && (paramInt2 == 0))
        eh(true);
    while (paramx.getType() != 384)
    {
      do
        return;
      while (cx.a(this, paramInt1, paramInt2, 4));
      eh(false);
      return;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      be.uz().sr().set(77830, ((aq)paramx).zC());
      startActivity(new Intent(this, SettingsModifyPasswordUI.class));
      return;
    }
    this.heN = true;
    h.a(this, 2131166101, 2131167675, new bm(this));
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    aMd();
    aMp();
    aMs();
    aMt();
    aMr();
    aMq();
    aMu();
    int i = cj.h(paramObject, 0);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    aa.e("MicroMsg.SettingsAccountInfoUI", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.SettingsAccountInfoUI", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
    }
    while ((i != 135175) && (i != 135176))
    {
      Object[] arrayOfObject2;
      return;
    }
    aMu();
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str1 = paramPreference.getKey();
    aa.i("MicroMsg.SettingsAccountInfoUI", str1 + " item has been clicked!");
    if (cj.hX(str1))
      return false;
    if ((str1.equals("settings_username")) && (cj.hX(v.ti())))
      e(SettingsAliasUI.class);
    while (true)
    {
      return false;
      if (str1.equals("settings_facebook"))
      {
        e(FacebookAuthUI.class);
      }
      else
      {
        if (str1.equals("settings_email_addr"))
        {
          startActivity(new Intent(this, SettingsModifyEmailAddrUI.class));
          return true;
        }
        if (str1.equals("settings_mobile"))
        {
          MMWizardActivity.j(this, new Intent(this, BindMContactIntroUI.class));
          return true;
        }
        if (str1.equals("settings_uin"))
        {
          MMWizardActivity.j(this, new Intent(this, BindQQUI.class));
          return true;
        }
        if (str1.equals("settings_about_vuser_about"))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = z.azj();
          String str5 = String.format("http://weixin.qq.com/cgi-bin/readtemplate?check=false&t=weixin_faq_verifyaccount&platform=android&lang=%s", arrayOfObject2);
          cj.w(aal(), str5);
        }
        else if (str1.equals("settings_independent_password"))
        {
          if (this.heN)
          {
            eh(true);
          }
          else
          {
            com.tencent.mm.modelsimple.ac localac = new com.tencent.mm.modelsimple.ac(1);
            be.uA().d(localac);
            getString(2131167675);
            this.cIr = h.a(this, getString(2131166097), true, new bh(this, localac));
          }
        }
        else if (str1.equals("settings_safe_device"))
        {
          String str3 = (String)be.uz().sr().get(6, "");
          String str4 = (String)be.uz().sr().get(4097, "");
          if (!cj.hX(str3))
          {
            a.l(this, "safedevice", ".ui.MySafeDeviceListUI");
          }
          else if (!cj.hX(str4))
          {
            Intent localIntent4 = new Intent(this, BindMContactIntroUI.class);
            localIntent4.putExtra("is_bind_for_safe_device", true);
            MMWizardActivity.j(this, localIntent4);
          }
          else
          {
            a.a(this, "safedevice", ".ui.BindSafeDeviceUI", new Intent());
          }
        }
        else
        {
          if (str1.equals("settings_room_right"))
          {
            Intent localIntent1 = new Intent(this, RoomRightUI.class);
            aal().startActivity(localIntent1);
            return true;
          }
          if (str1.equals("settings_delete_account"))
          {
            startActivity(new Intent(this, SettingDeleteAccountAgreementUI.class));
          }
          else
          {
            if (str1.equals("settings_phone_security"))
            {
              Intent localIntent2 = new Intent();
              localIntent2.setClass(aal(), WebViewUI.class);
              if (this.heR == 0)
                localIntent2.putExtra("rawUrl", "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe");
              while (true)
              {
                com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
                Object[] arrayOfObject1 = new Object[1];
                arrayOfObject1[0] = Integer.valueOf(this.heR);
                localm.d(10939, arrayOfObject1);
                localIntent2.putExtra("show_bottom", false);
                localIntent2.putExtra("showShare", false);
                aal().startActivity(localIntent2);
                break;
                if (this.heR == 1)
                  localIntent2.putExtra("rawUrl", "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe&qqpimsecurestatus=0");
                else if (this.heR == 2)
                  localIntent2.putExtra("rawUrl", "http://weixin.qq.com/cgi-bin/readtemplate?&t=w_safe&qqpimsecurestatus=1");
              }
            }
            if (str1.equals("settings_security_center"))
            {
              Activity localActivity = aal();
              String str2 = this.heM;
              Intent localIntent3 = new Intent();
              localIntent3.putExtra("rawUrl", str2);
              localIntent3.putExtra("showShare", false);
              localIntent3.putExtra("show_bottom", false);
              localIntent3.putExtra("needRedirect", false);
              localIntent3.putExtra("neverGetA8Key", true);
              localIntent3.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
              localIntent3.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
              a.b(localActivity, "webview", "com.tencent.mm.ui.tools.WebViewUI", localIntent3);
            }
          }
        }
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onPause()
  {
    super.onPause();
    be.uz().sr().b(this);
    be.uA().b(255, this);
    be.uA().b(384, this);
  }

  protected void onResume()
  {
    be.uz().sr().a(this);
    be.uA().a(255, this);
    be.uA().a(384, this);
    aMd();
    aMs();
    aMt();
    aMp();
    aMr();
    aMq();
    this.heN = false;
    aMu();
    IconSwitchKeyValuePreference localIconSwitchKeyValuePreference = (IconSwitchKeyValuePreference)this.cIG.wn("settings_phone_security");
    PluginTextPreference localPluginTextPreference;
    SelfVuserPreference localSelfVuserPreference;
    Preference localPreference1;
    if (localIconSwitchKeyValuePreference == null)
    {
      aa.e("MicroMsg.SettingsAccountInfoUI", "phone_security preference is null");
      localPluginTextPreference = (PluginTextPreference)this.cIG.wn("settings_about_vusertitle");
      localSelfVuserPreference = (SelfVuserPreference)this.cIG.wn("settings_about_vuserinfo");
      localPreference1 = this.cIG.wn("settings_about_vuser_about");
      int i = cj.c((Integer)be.uz().sr().get(66049));
      if (i == 0)
        break label507;
      localPluginTextPreference.aIp();
      localPluginTextPreference.nt(2131166318);
      Bitmap localBitmap = com.tencent.mm.platformtools.b.e(com.tencent.mm.model.ar.ub().cp(i), 2.0F);
      localSelfVuserPreference.setIconDrawable(new BitmapDrawable(getResources(), localBitmap));
      localSelfVuserPreference.setText((String)be.uz().sr().get(66050));
    }
    while (true)
    {
      while (true)
      {
        Preference localPreference2 = this.cIG.wn("settings_about_domainmail");
        this.cIG.c(localPreference2);
        if (!cj.azT())
        {
          this.cIG.wo("settings_security_center");
          this.cIG.wo("settings_security_center_tip");
        }
        super.onResume();
        return;
        try
        {
          String str = d.qA().getValue("ShowSecurityEntry");
          aa.e("MicroMsg.SettingsAccountInfoUI", "cfgShowSecurityEntry %s, return", new Object[] { str });
          if ((!cj.hX(str)) && (Integer.valueOf(str).intValue() == 1))
            break label396;
          this.cIG.O("settings_phone_security", true);
        }
        catch (Exception localException)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = localException.getMessage();
          aa.b("MicroMsg.SettingsAccountInfoUI", "exception in updatePhoneSecurityState, %s", arrayOfObject);
          this.cIG.O("settings_phone_security", true);
        }
      }
      break;
      label396: int j = this.heR;
      this.cIG.O("settings_phone_security", false);
      localIconSwitchKeyValuePreference.ns(-1);
      if (u.g(aal(), "com.tencent.qqpimsecure"))
        if (cj.ai(aal(), "com.tencent.qqpimsecure"))
        {
          localIconSwitchKeyValuePreference.setSummary(2131167227);
          this.heR = 2;
        }
      while (true)
      {
        if (j == this.heR)
          break label505;
        this.cIG.notifyDataSetChanged();
        break;
        localIconSwitchKeyValuePreference.setSummary(2131167229);
        this.heR = 1;
        continue;
        localIconSwitchKeyValuePreference.setSummary(2131167228);
        this.heR = 0;
      }
      label505: break;
      label507: this.cIG.c(localPluginTextPreference);
      this.cIG.c(localSelfVuserPreference);
      this.cIG.c(localPreference1);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsAccountInfoUI
 * JD-Core Version:    0.6.2
 */