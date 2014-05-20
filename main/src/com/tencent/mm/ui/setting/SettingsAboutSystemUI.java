package com.tencent.mm.ui.setting;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.ui.BakChatUI;
import com.tencent.mm.plugin.webwx.ui.WebWXLogoutUI;
import com.tencent.mm.plugin.webwx.ui.WebWeiXinIntroductionUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.IconPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;

public class SettingsAboutSystemUI extends MMPreference
{
  private n cIG;
  private boolean cQb = false;
  private ProgressDialog ffa = null;

  private void aMf()
  {
    boolean bool = au.a((Boolean)be.uz().sr().get(-2046825377), false);
    IconPreference localIconPreference = (IconPreference)this.cIG.wn("settings_plugins");
    if (bool)
    {
      localIconPreference.np(0);
      localIconPreference.aq(getString(2131167730), 2130838937);
    }
    while (true)
    {
      this.cIG.notifyDataSetChanged();
      return;
      localIconPreference.np(8);
      localIconPreference.aq("", -1);
    }
  }

  protected final void FR()
  {
    int i = 1;
    mn(2131165898);
    this.cIG = aIj();
    if (!com.tencent.mm.ak.a.qc("scanner"))
      this.cIG.O("settings_WebWX", i);
    SharedPreferences localSharedPreferences = al.getContext().getSharedPreferences(al.azs(), 0);
    boolean bool;
    if (s.ceL.cdg == i)
      bool = false;
    if (!localSharedPreferences.contains("settings_voicerecorder_mode"))
    {
      localSharedPreferences.edit().putBoolean("settings_voicerecorder_mode", bool).commit();
      ((CheckBoxPreference)this.cIG.wn("settings_voicerecorder_mode")).setChecked(bool);
      this.cIG.notifyDataSetChanged();
    }
    a(new ax(this));
    this.cIG.O("settings_WebWX", com.tencent.mm.ak.a.avr());
    aMf();
  }

  public final int Gc()
  {
    return 2131034182;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str.equals("settings_landscape_mode"))
      if (aIk().getBoolean("settings_landscape_mode", false))
        setRequestedOrientation(-1);
    CheckBoxPreference localCheckBoxPreference;
    do
    {
      while (true)
      {
        return true;
        setRequestedOrientation(1);
        return true;
        if (!str.equals("settings_voicerecorder_mode"))
          break;
        if (s.ceL.cdg == 1);
        for (boolean bool5 = false; !aIk().getBoolean("settings_voicerecorder_mode", bool5); bool5 = true)
        {
          h.a(aal(), 2131165980, 2131167675, new bc(this), new bd(this));
          return true;
        }
      }
      if (str.equals("settings_voice_play_mode"))
      {
        boolean bool2 = ((Boolean)be.uz().sr().get(26, Boolean.valueOf(false))).booleanValue();
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Boolean.valueOf(bool2);
        if (!bool2);
        for (boolean bool3 = true; ; bool3 = false)
        {
          arrayOfObject2[1] = Boolean.valueOf(bool3);
          aa.e("MicroMsg.SettingsAboutSystemUI", "set voice mode from %B to %B", arrayOfObject2);
          e locale = be.uz().sr();
          boolean bool4 = false;
          if (!bool2)
            bool4 = true;
          locale.set(26, Boolean.valueOf(bool4));
          return true;
        }
      }
      if (!str.equals("settings_enter_button_send"))
        break;
      localCheckBoxPreference = (CheckBoxPreference)this.cIG.wn("settings_enter_button_send");
    }
    while (localCheckBoxPreference == null);
    boolean bool1 = localCheckBoxPreference.isChecked();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Boolean.valueOf(bool1);
    aa.e("MicroMsg.SettingsAboutSystemUI", "set enter button send : %s", arrayOfObject1);
    be.uz().sr().set(66832, Boolean.valueOf(bool1));
    return true;
    if (str.equals("settings_language"))
    {
      startActivity(new Intent(aal(), SettingsLanguageUI.class));
      return true;
    }
    if (str.equals("settings_text_size"))
    {
      startActivity(new Intent(this, SetTextSizeUI.class));
      return true;
    }
    if (str.equals("settings_bak_chat"))
    {
      int i = ((Integer)be.uz().sr().get(68416, new Integer(0))).intValue();
      Intent localIntent4 = new Intent(aal(), BakChatUI.class);
      localIntent4.putExtra("downloadUin", i);
      a(new bb(this), localIntent4, 10000);
      return true;
    }
    if (str.equals("settings_chatting_bg"))
    {
      Intent localIntent1 = new Intent();
      localIntent1.setClass(this, SettingsChattingBackgroundUI.class);
      aal().startActivity(localIntent1);
      return true;
    }
    if (str.equals("settings_plugins"))
    {
      be.uz().sr().set(-2046825377, Boolean.valueOf(false));
      Intent localIntent3 = new Intent();
      localIntent3.setClass(this, SettingsPluginsUI.class);
      startActivity(localIntent3);
      return true;
    }
    if (str.equals("settings_WebWX"))
    {
      if (be.uz().sk())
      {
        startActivity(new Intent(this, WebWXLogoutUI.class));
        return true;
      }
      startActivity(new Intent(this, WebWeiXinIntroductionUI.class));
      return true;
    }
    if (str.equals("settings_reset"))
    {
      h.a(aal(), getResources().getString(2131165952), "", getString(2131167690), getString(2131167681), new ay(this), null);
      return true;
    }
    if (str.equals("settings_emoji_manager"))
    {
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("10931", 2);
      com.tencent.mm.ak.a.b(aal(), "emoji", ".ui.EmojiSettingsUI", localIntent2);
      return true;
    }
    if (str.equals("settngs_clean"))
    {
      if (!be.uz().isSDCardAvailable())
      {
        dn.bW(aal());
        return true;
      }
      com.tencent.mm.ak.a.b(aal(), "clean", ".ui.CleanListUI", new Intent());
      return true;
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  protected void onResume()
  {
    super.onResume();
    CheckBoxPreference localCheckBoxPreference1 = (CheckBoxPreference)this.cIG.wn("settings_voice_play_mode");
    if (localCheckBoxPreference1 != null)
    {
      localCheckBoxPreference1.setChecked(((Boolean)be.uz().sr().get(26, Boolean.valueOf(false))).booleanValue());
      localCheckBoxPreference1.aIs();
    }
    CheckBoxPreference localCheckBoxPreference2 = (CheckBoxPreference)this.cIG.wn("settings_enter_button_send");
    if (localCheckBoxPreference2 != null)
    {
      localCheckBoxPreference2.setChecked(((Boolean)be.uz().sr().get(66832, Boolean.valueOf(false))).booleanValue());
      localCheckBoxPreference2.aIs();
    }
    Preference localPreference1 = this.cIG.wn("settings_language");
    if (localPreference1 != null)
      localPreference1.setSummary(SettingsLanguageUI.t(this));
    Preference localPreference2 = this.cIG.wn("settings_text_size");
    if (localPreference2 != null)
      localPreference2.setSummary(getString(SetTextSizeUI.cd(this)));
    aMf();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsAboutSystemUI
 * JD-Core Version:    0.6.2
 */