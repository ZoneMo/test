package com.tencent.mm.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.PreferenceCategory;
import com.tencent.mm.ui.base.preference.PreferenceTitleCategory;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.tools.WebViewUI;

public class ExposeUI extends MMPreference
  implements View.OnClickListener, m
{
  private long bMS;
  private n cIG;
  private int cvK = -1;
  private Dialog dID = null;
  private int dpp;
  private String emA;
  private com.tencent.mm.modelsimple.v glh;
  private int gli;
  private String glj = "";
  private Boolean glk = Boolean.valueOf(false);
  private boolean gll = false;
  private boolean glm = false;
  private String username = "";

  private void Zz()
  {
    if (this.gll)
    {
      Intent localIntent = new Intent(aal(), LauncherUI.class);
      localIntent.addFlags(67108864);
      startActivity(localIntent);
      return;
    }
    finish();
  }

  private String aEn()
  {
    switch (this.dpp)
    {
    case 36:
    default:
      return "";
    case 34:
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = this.emA;
      arrayOfObject2[1] = Integer.valueOf(this.gli);
      return String.format("<exposecontent><weburl>%s</weburl><webscence>%d</webscence></exposecontent>", arrayOfObject2);
    case 37:
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.glj;
      return String.format("<exposecontent><bottleid>%s</bottleid></exposecontent>", arrayOfObject1);
    case 35:
      return String.format("", new Object[] { "" });
    case 38:
      return String.format("", new Object[] { "" });
    case 33:
    }
    return String.format("", new Object[] { "" });
  }

  private void refresh()
  {
    this.cIG.removeAll();
    PreferenceTitleCategory localPreferenceTitleCategory = new PreferenceTitleCategory(this);
    localPreferenceTitleCategory.setTitle(2131166284);
    this.cIG.b(localPreferenceTitleCategory);
    Preference localPreference1 = new Preference(this);
    localPreference1.setTitle(2131166417);
    localPreference1.setKey("MM_EXPOSE_TYPE_SEX");
    localPreference1.setLayoutResource(2130903475);
    Preference localPreference2;
    label126: Preference localPreference3;
    label182: Preference localPreference4;
    label239: Preference localPreference5;
    if (this.cvK == 1)
    {
      localPreference1.setWidgetLayoutResource(2130903524);
      this.cIG.b(localPreference1);
      localPreference2 = new Preference(this);
      localPreference2.setTitle(2131166418);
      localPreference2.setKey("MM_EXPOSE_TYPE_CHEAT");
      localPreference2.setLayoutResource(2130903475);
      if (this.cvK != 2)
        break label424;
      localPreference2.setWidgetLayoutResource(2130903524);
      this.cIG.b(localPreference2);
      localPreference3 = new Preference(this);
      localPreference3.setTitle(2131166419);
      localPreference3.setKey("MM_EXPOSE_TYPE_RUBBISH");
      localPreference3.setLayoutResource(2130903475);
      if (this.cvK != 3)
        break label434;
      localPreference3.setWidgetLayoutResource(2130903524);
      this.cIG.b(localPreference3);
      localPreference4 = new Preference(this);
      localPreference4.setTitle(2131166420);
      localPreference4.setKey("MM_EXPOSE_TYPE_INFRINGEMENT");
      localPreference4.setLayoutResource(2130903475);
      if (this.cvK != 4)
        break label445;
      localPreference4.setWidgetLayoutResource(2130903524);
      this.cIG.b(localPreference4);
      localPreference5 = new Preference(this);
      localPreference5.setTitle(2131166416);
      localPreference5.setKey("MM_EXPOSE_TYPE_OTHER");
      localPreference5.setLayoutResource(2130903475);
      if (this.cvK != 999)
        break label456;
      localPreference5.setWidgetLayoutResource(2130903524);
    }
    while (true)
    {
      this.cIG.b(localPreference5);
      PreferenceCategory localPreferenceCategory = new PreferenceCategory(this);
      this.cIG.b(localPreferenceCategory);
      this.cIG.notifyDataSetChanged();
      ViewGroup localViewGroup = (ViewGroup)aES();
      int i = 0;
      int j = localViewGroup.getChildCount();
      while (i < j)
      {
        View localView = localViewGroup.getChildAt(i);
        if ((localView instanceof TextView))
          aa.d("ui.contact.profile.ExposeUI", "id=" + localView.getId());
        i++;
      }
      localPreference1.setWidgetLayoutResource(2130903525);
      break;
      label424: localPreference2.setWidgetLayoutResource(2130903525);
      break label126;
      label434: localPreference3.setWidgetLayoutResource(2130903525);
      break label182;
      label445: localPreference4.setWidgetLayoutResource(2130903525);
      break label239;
      label456: localPreference5.setWidgetLayoutResource(2130903525);
    }
  }

  protected final void FR()
  {
    this.cIG = aIj();
    mn(2131166409);
    a(new t(this));
    a(getString(2131166414), new u(this), bt.gnO);
    ((TextView)findViewById(2131362580)).setOnClickListener(this);
    refresh();
  }

  public final int Gc()
  {
    return -1;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.dID != null)
    {
      this.dID.dismiss();
      this.dID = null;
    }
    this.glk = Boolean.valueOf(false);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.glm = true;
      aER();
      mn(2131166410);
      a(0, getString(2131166415), new v(this));
      return;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.b("ui.contact.profile.ExposeUI", "error update expose: errType:%d, errCode:%d", arrayOfObject);
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str.equals("MM_EXPOSE_TYPE_OTHER"))
      this.cvK = 999;
    while (true)
    {
      refresh();
      return false;
      if (str.equals("MM_EXPOSE_TYPE_SEX"))
        this.cvK = 1;
      else if (str.equals("MM_EXPOSE_TYPE_CHEAT"))
        this.cvK = 2;
      else if (str.equals("MM_EXPOSE_TYPE_RUBBISH"))
        this.cvK = 3;
      else if (str.equals("MM_EXPOSE_TYPE_INFRINGEMENT"))
        this.cvK = 4;
    }
  }

  protected final int getLayoutId()
  {
    return 2130903274;
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131362580)
    {
      Intent localIntent = new Intent();
      String str = getString(2131166413) + "&lang=%s";
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = z.azj();
      localIntent.putExtra("rawUrl", String.format(str, arrayOfObject));
      localIntent.putExtra("title", getString(2131166412));
      localIntent.setClass(aal(), WebViewUI.class);
      aal().startActivity(localIntent);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.glm = false;
    this.username = getIntent().getStringExtra("k_username");
    this.glj = getIntent().getStringExtra("k_bottle_id");
    this.dpp = getIntent().getIntExtra("k_expose_scene", 0);
    this.gli = getIntent().getIntExtra("k_expose_web_scene", 0);
    this.emA = getIntent().getStringExtra("k_expose_url");
    this.bMS = getIntent().getLongExtra("k_expose_msg_id", 0L);
    this.gll = getIntent().getBooleanExtra("k_jump_to_launcher", false);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.username;
    arrayOfObject[1] = Integer.valueOf(this.dpp);
    arrayOfObject[2] = Long.valueOf(this.bMS);
    aa.d("ui.contact.profile.ExposeUI", "usename- %s,reportScene-%d,msgId-%d", arrayOfObject);
    FR();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      Zz();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    be.uA().b(166, this);
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(166, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.ExposeUI
 * JD-Core Version:    0.6.2
 */