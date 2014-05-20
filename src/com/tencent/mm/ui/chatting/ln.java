package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.c.a.cl;
import com.tencent.mm.c.a.cm;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.af;
import com.tencent.mm.pluginsdk.ui.applet.am;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.storage.aj;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.bindmobile.MobileFriendUI;
import com.tencent.mm.ui.bindqq.QQGroupUI;
import com.tencent.mm.ui.contact.SelectContactUI;
import com.tencent.mm.ui.contact.bh;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import com.tencent.mm.ui.pluginapp.ContactSearchUI;
import com.tencent.mm.ui.qrcode.ShareMicroMsgChoiceUI;
import com.tencent.mm.ui.setting.SettingsNotificationUI;
import com.tencent.mm.ui.setting.SettingsPrivacyUI;
import com.tencent.mm.ui.tools.WebViewUI;

final class ln
  implements af
{
  ln(lm paramlm)
  {
  }

  public final void a(am paramam)
  {
    Object localObject;
    aj localaj1;
    if ((paramam.data instanceof aj))
    {
      localObject = paramam.data;
      localaj1 = (aj)localObject;
    }
    switch (paramam.type)
    {
    case 8:
    case 11:
    case 13:
    case 26:
    default:
    case 1:
    case 3:
    case 4:
    case 5:
    case 9:
    case 10:
    case 15:
    case 17:
    case 18:
    case 19:
    case 20:
    case 12:
    case 14:
    case 6:
    case 7:
    case 16:
    case 2:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  aj localaj3;
                  do
                  {
                    return;
                    localObject = null;
                    break;
                    localaj3 = com.tencent.mm.model.ae.r("@" + paramam.foS, lm.a(this.gRv).getString(2131165187));
                  }
                  while ((localaj3 != null) && (localaj3.aBS()));
                  String str2 = paramam.foS;
                  if (!str2.toLowerCase().startsWith("http"))
                    str2 = "http://" + str2;
                  Intent localIntent12 = new Intent();
                  localIntent12.putExtra("rawUrl", str2);
                  lt locallt2 = lm.b(this.gRv);
                  String str3 = null;
                  if (locallt2 == null);
                  while (true)
                  {
                    localIntent12.putExtra("geta8key_username", str3);
                    localIntent12.setClass(lm.a(this.gRv), WebViewUI.class);
                    lm.a(this.gRv).startActivity(localIntent12);
                    if (lm.c(this.gRv) == null)
                      break;
                    lm.c(this.gRv).a(paramam);
                    return;
                    str3 = lm.b(this.gRv).getUsername();
                  }
                  Intent localIntent11 = new Intent();
                  localIntent11.setClass(lm.a(this.gRv), ContactInfoUI.class);
                  localIntent11.addFlags(268435456);
                  localIntent11.putExtra("Contact_User", paramam.getUsername());
                  i locali = be.uz().su().tO(paramam.getUsername());
                  if ((locali != null) && (locali.rj() > 0) && (locali.rb()))
                    bh.b(localIntent11, paramam.getUsername());
                  if (au.hW(paramam.getUsername()).length() > 0)
                    lm.a(this.gRv).startActivity(localIntent11);
                }
                while (lm.c(this.gRv) == null);
                lm.c(this.gRv).a(paramam);
                return;
              }
              while (lm.c(this.gRv) == null);
              lm.c(this.gRv).a(paramam);
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              MMWizardActivity.j(lm.a(this.gRv), new Intent(lm.a(this.gRv), BindMContactIntroUI.class));
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              LauncherUI.aEA().vS("tab_settings");
              lm.a(this.gRv).startActivity(new Intent(lm.a(this.gRv), SettingsNotificationUI.class));
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              Intent localIntent10 = new Intent();
              localIntent10.setClass(lm.a(this.gRv), ContactInfoUI.class);
              localIntent10.putExtra("Contact_User", "qqmail");
              lm.a(this.gRv).startActivity(localIntent10);
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              LauncherUI.aEA().vS("tab_settings");
              lm.a(this.gRv).startActivity(new Intent(lm.a(this.gRv), SettingsPrivacyUI.class));
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              Intent localIntent9 = new Intent(lm.a(this.gRv), ContactSearchUI.class);
              lm.a(this.gRv).startActivity(localIntent9);
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              Intent localIntent8 = new Intent(lm.a(this.gRv), ShareMicroMsgChoiceUI.class);
              lm.a(this.gRv).startActivity(localIntent8);
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              Intent localIntent7 = new Intent(lm.a(this.gRv), QQGroupUI.class);
              lm.a(this.gRv).startActivity(localIntent7);
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              Intent localIntent6 = new Intent(lm.a(this.gRv), MobileFriendUI.class);
              lm.a(this.gRv).startActivity(localIntent6);
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              Intent localIntent5 = new Intent();
              localIntent5.setClass(lm.a(this.gRv), ContactInfoUI.class);
              localIntent5.putExtra("Contact_User", "weibo");
              lm.a(this.gRv).startActivity(localIntent5);
              return;
              if (lm.c(this.gRv) != null)
                lm.c(this.gRv).a(paramam);
              aj localaj2 = com.tencent.mm.model.ae.dm(lm.a(this.gRv).getString(2131165188));
              Intent localIntent4 = new Intent();
              localIntent4.setClass(lm.a(this.gRv), SelectContactUI.class);
              localIntent4.putExtra("Contact_GroupFilter_Type", localaj2.getType());
              localIntent4.putExtra("Contact_GroupFilter_DisplayName", localaj2.rq());
              localIntent4.addFlags(67108864);
              LauncherUI.aEA().vS("tab_settings");
              lm.a(this.gRv).startActivity(localIntent4);
              return;
              LauncherUI.aEA().vS("tab_settings");
            }
            while (lm.c(this.gRv) == null);
            lm.c(this.gRv).a(paramam);
            return;
            if (localaj1 == null)
            {
              h.p(lm.a(this.gRv), lm.a(this.gRv).getString(2131165817), lm.a(this.gRv).getString(2131167675));
              return;
            }
            if (localaj1.getType().equals("@t.qq.com"))
            {
              if (be.uz().sz().vB("@t.qq.com") != null);
              for (int i = 1; i == 0; i = 0)
              {
                h.p(lm.a(this.gRv), lm.a(this.gRv).getString(2131165817), lm.a(this.gRv).getString(2131167675));
                return;
              }
            }
            if ((localaj1.getType().equals("@domain.android")) && (!com.tencent.mm.model.ae.tW()))
            {
              h.p(lm.a(this.gRv), lm.a(this.gRv).getString(2131165817), lm.a(this.gRv).getString(2131167675));
              return;
            }
            Intent localIntent3 = new Intent();
            localIntent3.setClass(lm.a(this.gRv), SelectContactUI.class);
            localIntent3.putExtra("Contact_GroupFilter_Type", localaj1.getType()).putExtra("Contact_GroupFilter_Str", localaj1.aBR()).putExtra("Contact_GroupFilter_DisplayName", localaj1.rq());
            localIntent3.addFlags(268435456);
            lm.a(this.gRv).startActivity(localIntent3);
          }
          while (lm.c(this.gRv) == null);
          lm.c(this.gRv).a(paramam);
          return;
          this.gRv.b(paramam.foS, null);
        }
        while (lm.c(this.gRv) == null);
        lm.c(this.gRv).a(paramam);
        return;
        this.gRv.a(paramam.foS, null);
      }
      while (lm.c(this.gRv) == null);
      lm.c(this.gRv).a(paramam);
      return;
    case 28:
      if (lm.c(this.gRv) != null)
        lm.c(this.gRv).a(paramam);
      cl localcl = new cl();
      localcl.bNO.bNQ = 11;
      localcl.bNO.bNR = paramam.foS;
      cm localcm = localcl.bNO;
      lt locallt1 = lm.b(this.gRv);
      String str1 = null;
      if (locallt1 == null);
      while (true)
      {
        localcm.username = str1;
        localcl.bNO.context = lm.a(this.gRv);
        com.tencent.mm.sdk.b.a.ayH().f(localcl);
        return;
        str1 = lm.b(this.gRv).getUsername();
      }
    case 27:
      if (lm.c(this.gRv) != null)
        lm.c(this.gRv).a(paramam);
      Intent localIntent2 = new Intent(lm.a(this.gRv), WebViewUI.class);
      localIntent2.putExtra("rawUrl", paramam.foS);
      lm.a(this.gRv).startActivity(localIntent2);
      return;
    case 29:
    }
    if (lm.c(this.gRv) != null)
      lm.c(this.gRv).a(paramam);
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("entrance_scence", 3);
    localIntent1.putExtra("extra_id", (String)paramam.data);
    localIntent1.putExtra("preceding_scence", 3);
    com.tencent.mm.ak.a.b(lm.a(this.gRv), "emoji", ".ui.EmojiStoreDetailUI", localIntent1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ln
 * JD-Core Version:    0.6.2
 */