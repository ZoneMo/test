package com.tencent.mm.ui.contact.profile;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.storage.bg;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.FacebookAuthUI;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.bindqq.BindQQUI;
import com.tencent.mm.ui.chatting.ChattingUI;
import junit.framework.Assert;

public final class w
  implements a
{
  private ch cHU = null;
  private n cIG;
  private com.tencent.mm.storage.i cQI;
  private boolean cQb = false;
  private Context context;
  private boolean dNx;
  private by gWg;
  private int status;

  public w(Context paramContext)
  {
    this.context = paramContext;
    this.gWg = new bv(paramContext);
    this.status = -1;
  }

  private void c(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ContactWidgetFMessage", "switch change : open = " + paramBoolean + " item value = " + paramInt1 + " functionId = " + paramInt2);
    if (paramBoolean)
    {
      this.status = (paramInt1 | this.status);
      be.uz().sr().set(7, Integer.valueOf(this.status));
      if (!paramBoolean)
        break label113;
    }
    label113: for (int i = 1; ; i = 2)
    {
      be.uz().st().a(new bg(paramInt2, i));
      return;
      this.status &= (paramInt1 ^ 0xFFFFFFFF);
      break;
    }
  }

  private boolean nL(int paramInt)
  {
    return (paramInt & this.status) != 0;
  }

  public final boolean Ji()
  {
    be.uA().d(new com.tencent.mm.z.i(5));
    HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.cIG.wn("contact_info_header_helper");
    if (localHelperHeaderPreference != null)
      localHelperHeaderPreference.onDetach();
    return true;
  }

  public final boolean a(n paramn, com.tencent.mm.storage.i parami, boolean paramBoolean, int paramInt)
  {
    boolean bool1;
    boolean bool2;
    label19: CheckBoxPreference localCheckBoxPreference1;
    CheckBoxPreference localCheckBoxPreference2;
    CheckBoxPreference localCheckBoxPreference3;
    boolean bool3;
    label124: boolean bool4;
    label144: boolean bool5;
    label162: int i;
    label211: label246: int j;
    if (paramn != null)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (parami == null)
        break label366;
      bool2 = true;
      Assert.assertTrue(bool2);
      Assert.assertTrue(com.tencent.mm.model.w.cz(parami.getUsername()));
      this.cIG = paramn;
      this.dNx = paramBoolean;
      this.cQI = parami;
      if (this.status == -1)
        this.status = v.tl();
      paramn.addPreferencesFromResource(2131034125);
      localCheckBoxPreference1 = (CheckBoxPreference)paramn.wn("contact_info_recommend_qqfriends_to_me");
      localCheckBoxPreference2 = (CheckBoxPreference)paramn.wn("contact_info_recommend_mobilefriends_to_me");
      localCheckBoxPreference3 = (CheckBoxPreference)paramn.wn("contact_info_recommend_fbfriends_to_me");
      if (nL(256))
        break label372;
      bool3 = true;
      localCheckBoxPreference2.setChecked(bool3);
      if (nL(128))
        break label378;
      bool4 = true;
      localCheckBoxPreference1.setChecked(bool4);
      if ((0x4 & v.tm()) == 0)
        break label384;
      bool5 = true;
      localCheckBoxPreference3.setChecked(bool5);
      ((HelperHeaderPreference)paramn.wn("contact_info_header_helper")).a(parami, this.gWg);
      if (com.tencent.mm.platformtools.au.c((Integer)be.uz().sr().get(9)) == 0)
        break label390;
      i = 1;
      if (i == 0)
        break label396;
      paramn.c(paramn.wn("contact_info_bind_qq_entry"));
      paramn.c(paramn.wn("contact_info_bind_qq_entry_tip"));
      if (z.zp() != com.tencent.mm.modelfriend.aa.crc)
        break label444;
      j = 1;
      label258: if (j == 0)
        break label450;
      paramn.c(paramn.wn("contact_info_bind_mobile_entry"));
      paramn.c(paramn.wn("contact_info_bind_mobile_entry_tip"));
    }
    while (true)
    {
      int k = 0x2000 & v.tq();
      int m = 0;
      if (k == 0)
        m = 1;
      if (m == 0)
        break label494;
      boolean bool6 = v.tE();
      com.tencent.mm.x.b.Bg();
      paramn.c(localCheckBoxPreference3);
      if (bool6)
        break label477;
      paramn.wn("contact_info_bind_fb_entry").setSummary(2131165928);
      return true;
      bool1 = false;
      break;
      label366: bool2 = false;
      break label19;
      label372: bool3 = false;
      break label124;
      label378: bool4 = false;
      break label144;
      label384: bool5 = false;
      break label162;
      label390: i = 0;
      break label211;
      label396: paramn.c(localCheckBoxPreference1);
      if (com.tencent.mm.x.b.Be())
        break label246;
      paramn.c(paramn.wn("contact_info_bind_qq_entry"));
      paramn.c(paramn.wn("contact_info_bind_qq_entry_tip"));
      break label246;
      label444: j = 0;
      break label258;
      label450: paramn.c(localCheckBoxPreference2);
      paramn.wn("contact_info_bind_mobile_entry").setSummary(2131165928);
    }
    label477: paramn.wn("contact_info_bind_fb_entry").setSummary(2131167006);
    return true;
    label494: paramn.c(paramn.wn("contact_info_bind_fb_entry"));
    paramn.c(paramn.wn("contact_info_bind_fb_entry_tip"));
    paramn.c(localCheckBoxPreference3);
    return true;
  }

  public final boolean iO(String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ContactWidgetFMessage", "handlerEvent : key = " + paramString);
    if (com.tencent.mm.platformtools.au.hW(paramString).length() <= 0)
      return false;
    if (paramString.equals("contact_info_recommend_qqfriends_to_me"))
    {
      if (!((CheckBoxPreference)this.cIG.wn("contact_info_recommend_qqfriends_to_me")).isChecked());
      for (boolean bool4 = true; ; bool4 = false)
      {
        c(bool4, 128, 6);
        return true;
      }
    }
    if (paramString.equals("contact_info_recommend_mobilefriends_to_me"))
    {
      boolean bool2 = ((CheckBoxPreference)this.cIG.wn("contact_info_recommend_mobilefriends_to_me")).isChecked();
      boolean bool3 = false;
      if (!bool2)
        bool3 = true;
      c(bool3, 256, 7);
      return true;
    }
    if (paramString.equals("contact_info_recommend_fbfriends_to_me"))
    {
      boolean bool1 = ((CheckBoxPreference)this.cIG.wn("contact_info_recommend_fbfriends_to_me")).isChecked();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ContactWidgetFMessage", "switch change : open = " + bool1 + " item value = 4 functionId = 18");
      int i = v.tm();
      int j;
      if (bool1)
      {
        j = i | 0x4;
        be.uz().sr().set(40, Integer.valueOf(j));
        if (!bool1)
          break label265;
      }
      label265: for (int k = 1; ; k = 2)
      {
        be.uz().st().a(new bg(18, k));
        return true;
        j = i & 0xFFFFFFFB;
        break;
      }
    }
    if (paramString.equals("contact_info_view_message"))
    {
      Intent localIntent = new Intent(this.context, ChattingUI.class);
      if (this.dNx)
      {
        localIntent.putExtra("Chat_User", this.cQI.getUsername());
        localIntent.putExtra("Chat_Mode", 1);
        localIntent.addFlags(67108864);
        ((Activity)this.context).setResult(-1, localIntent);
        ((Activity)this.context).finish();
        return true;
      }
      localIntent.putExtra("Chat_User", this.cQI.getUsername());
      localIntent.putExtra("Chat_Mode", 1);
      localIntent.addFlags(67108864);
      this.context.startActivity(localIntent);
      ((Activity)this.context).finish();
      return true;
    }
    if (paramString.equals("contact_info_bind_mobile_entry"))
    {
      MMWizardActivity.j(this.context, new Intent(this.context, BindMContactIntroUI.class));
      return true;
    }
    if (paramString.equals("contact_info_bind_qq_entry"))
    {
      MMWizardActivity.j(this.context, new Intent(this.context, BindQQUI.class));
      return true;
    }
    if (paramString.equals("contact_info_bind_fb_entry"))
    {
      this.context.startActivity(new Intent(this.context, FacebookAuthUI.class));
      return true;
    }
    if (paramString.equals("contact_info_fmessage_clear_data"))
    {
      h.a(this.context, this.context.getString(2131166289), "", this.context.getString(2131167690), this.context.getString(2131167681), new x(this), null);
      return true;
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ContactWidgetFMessage", "handleEvent : unExpected key = " + paramString);
    return false;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.w
 * JD-Core Version:    0.6.2
 */