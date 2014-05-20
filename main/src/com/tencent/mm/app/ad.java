package com.tencent.mm.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.pluginsdk.ui.applet.i;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.ui.ExposeUI;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.LoginHistoryUI;
import com.tencent.mm.ui.account.LoginIndepPass;
import com.tencent.mm.ui.account.LoginUI;
import com.tencent.mm.ui.account.RegByMobileVoiceVerifyUI;
import com.tencent.mm.ui.account.SimpleLoginUI;
import com.tencent.mm.ui.account.mobile.MobileInputUI;
import com.tencent.mm.ui.base.x;
import com.tencent.mm.ui.bindmobile.BindMContactUI;
import com.tencent.mm.ui.bindqq.BindQQUI;
import com.tencent.mm.ui.br;
import com.tencent.mm.ui.chatting.AppAttachDownloadUI;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.chatting.lm;
import com.tencent.mm.ui.contact.ModRemarkNameUI;
import com.tencent.mm.ui.contact.SelectContactUI;
import com.tencent.mm.ui.contact.SnsAddressUI;
import com.tencent.mm.ui.contact.SnsTagContactListUI;
import com.tencent.mm.ui.contact.bh;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import com.tencent.mm.ui.gallery.GestureGalleryUI;
import com.tencent.mm.ui.openapi.AddAppUI;
import com.tencent.mm.ui.pluginapp.ContactSearchUI;
import com.tencent.mm.ui.setting.EditSignatureUI;
import com.tencent.mm.ui.setting.SelfQRCodeUI;
import com.tencent.mm.ui.setting.SendFeedBackUI;
import com.tencent.mm.ui.setting.SettingsLanguageUI;
import com.tencent.mm.ui.setting.SettingsModifyPasswordUI;
import com.tencent.mm.ui.tools.CountryCodeUI;
import com.tencent.mm.ui.tools.CropImageNewUI;
import com.tencent.mm.ui.tools.MultiStageCitySelectUI;
import com.tencent.mm.ui.tools.ShowImageUI;
import com.tencent.mm.ui.tools.WebViewUI;
import com.tencent.mm.ui.tools.h;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import com.tencent.mm.ui.transmit.SelectConversationUI;
import com.tencent.mm.ui.video.VideoPlayerUI;

public final class ad
  implements e
{
  public final void a(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    if ((paramIntent != null) && (paramActivity != null))
    {
      paramIntent.setClass(paramActivity, CropImageNewUI.class);
      paramActivity.startActivityForResult(paramIntent, paramInt);
    }
  }

  public final void a(Activity paramActivity, Intent paramIntent1, Intent paramIntent2, String paramString, int paramInt)
  {
    if ((paramIntent2 != null) && (paramActivity != null))
    {
      paramIntent2.setClass(paramActivity, CropImageNewUI.class);
      h.b(paramActivity, paramIntent1, paramIntent2, paramString, paramInt);
    }
  }

  public final void a(Context paramContext, Intent paramIntent1, Intent paramIntent2)
  {
    if ((paramContext == null) || (paramIntent1 == null));
    int i;
    do
    {
      return;
      i = paramIntent1.getIntExtra("from_source", 1);
      if (i == 1)
      {
        paramIntent1.setClass(paramContext, LoginUI.class);
        paramContext.startActivity(paramIntent1);
        return;
      }
      if (i == 2)
      {
        paramIntent1.setClass(paramContext, LoginHistoryUI.class);
        paramContext.startActivity(paramIntent1);
        return;
      }
      if (i == 3)
      {
        paramIntent1.setClass(paramContext, SimpleLoginUI.class);
        if (paramIntent2 != null)
        {
          MMWizardActivity.b(paramContext, paramIntent1, paramIntent2);
          return;
        }
        MMWizardActivity.j(paramContext, paramIntent1);
        return;
      }
      if (i == 5)
      {
        paramIntent1.setClass(paramContext, LoginIndepPass.class);
        paramContext.startActivity(paramIntent1);
        return;
      }
    }
    while (i != 6);
    paramIntent1.setClass(paramContext, MobileInputUI.class);
    paramIntent1.putExtra("mobile_input_purpose", 5);
    paramContext.startActivity(paramIntent1);
  }

  public final void a(Intent paramIntent, int paramInt, MMActivity paramMMActivity)
  {
    paramIntent.setClass(paramMMActivity, SelectConversationUI.class);
    paramMMActivity.startActivityForResult(paramIntent, paramInt);
  }

  public final void a(Intent paramIntent1, int paramInt, MMActivity paramMMActivity, Intent paramIntent2)
  {
    if ((paramIntent1 != null) && (paramMMActivity != null))
    {
      paramIntent1.setClass(paramMMActivity, CropImageNewUI.class);
      h.b(paramMMActivity, paramIntent2, paramIntent1, be.uz().sB(), paramInt);
    }
  }

  public final void a(Intent paramIntent, Activity paramActivity)
  {
    if ((paramIntent != null) && (paramActivity != null))
      a.a(paramActivity, "location", ".ui.RedirectUI", paramIntent, 4097);
  }

  public final void a(Intent paramIntent, Activity paramActivity, int paramInt)
  {
    if ((paramIntent != null) && (paramActivity != null))
    {
      paramIntent.setClass(paramActivity, SelectContactUI.class);
      paramActivity.startActivityForResult(paramIntent, paramInt);
    }
  }

  public final void a(Intent paramIntent, Context paramContext)
  {
    if (paramContext == null)
      return;
    if (paramIntent == null)
      paramIntent = new Intent();
    paramIntent.setClass(paramContext, MultiStageCitySelectUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final void a(Intent paramIntent, br parambr, MMActivity paramMMActivity)
  {
    if ((paramIntent != null) && (paramMMActivity != null))
    {
      paramIntent.setClass(paramMMActivity, SelectConversationUI.class);
      paramMMActivity.a(parambr, paramIntent, 1);
    }
  }

  public final void a(MMActivity paramMMActivity, String paramString1, WXMediaMessage paramWXMediaMessage, String paramString2, String paramString3)
  {
    i.a(paramMMActivity, paramWXMediaMessage.thumbData, paramWXMediaMessage.title, paramWXMediaMessage.description, paramString3, true, 2, new af(this, paramWXMediaMessage, paramString1, paramString3, paramString2, paramMMActivity));
  }

  public final void a(MMActivity paramMMActivity, String paramString1, String paramString2)
  {
    i.b(paramMMActivity, paramString1, paramString2, true, new ae(this, paramString1, paramMMActivity));
  }

  public final void a(MMWizardActivity paramMMWizardActivity, Intent paramIntent)
  {
    if ((paramMMWizardActivity == null) || (paramIntent == null))
      return;
    paramIntent.setClass(paramMMWizardActivity, MobileInputUI.class);
    MMWizardActivity.j(paramMMWizardActivity, paramIntent);
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    if ((paramBoolean1) || (paramBoolean2))
    {
      if (!VideoPlayerUI.b(paramString, paramContext, paramBoolean2))
        Toast.makeText(paramContext, paramContext.getString(2131166715), 0).show();
      return;
    }
    Intent localIntent = new Intent(paramContext, VideoPlayerUI.class);
    localIntent.putExtra("VideoPlayer_File_nam", paramString);
    localIntent.putExtra("VideoRecorder_VideoLength", paramInt1);
    localIntent.putExtra("VideoRecorder_VideoSize", paramInt2);
    paramContext.startActivity(localIntent);
  }

  public final void b(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent != null) && (paramContext != null))
    {
      paramIntent.setClass(paramContext, ShowImageUI.class);
      paramContext.startActivity(paramIntent);
    }
  }

  public final void b(Intent paramIntent, Activity paramActivity)
  {
    if ((paramIntent != null) && (paramActivity != null))
    {
      paramIntent.setClass(paramActivity, ModRemarkNameUI.class);
      paramActivity.startActivityForResult(paramIntent, 2);
    }
  }

  public final void b(Intent paramIntent, Activity paramActivity, int paramInt)
  {
    if ((paramIntent != null) && (paramActivity != null))
    {
      paramIntent.setClass(paramActivity, SnsAddressUI.class);
      paramActivity.startActivityForResult(paramIntent, paramInt);
    }
  }

  public final void b(Intent paramIntent, Context paramContext)
  {
    if (paramContext == null)
      return;
    if (paramIntent == null)
      paramIntent = new Intent();
    paramIntent.setClass(paramContext, EditSignatureUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final void b(MMWizardActivity paramMMWizardActivity, Intent paramIntent)
  {
    if ((paramMMWizardActivity == null) || (paramIntent == null))
      return;
    paramIntent.setClass(paramMMWizardActivity, BindMContactUI.class);
    MMWizardActivity.j(paramMMWizardActivity, paramIntent);
  }

  public final void b(String paramString, Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("Ksnsupload_type", 0);
    localIntent.putExtra("sns_kemdia_path", paramString);
    a.b(paramContext, "sns", ".ui.SnsUploadUI", localIntent);
  }

  public final void c(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent == null) || (paramContext == null))
      return;
    paramIntent.setClass(paramContext, ExposeUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final void c(Intent paramIntent, Activity paramActivity)
  {
    if ((paramIntent != null) && (paramActivity != null))
    {
      paramIntent.setClass(paramActivity, CountryCodeUI.class);
      paramActivity.startActivityForResult(paramIntent, 100);
    }
  }

  public final void c(Intent paramIntent, Context paramContext)
  {
    if (paramContext == null)
      return;
    if (paramIntent == null)
      paramIntent = new Intent();
    paramIntent.setClass(paramContext, ContactInfoUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final void d(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null))
      return;
    a.b(paramContext, "safedevice", ".ui.MySafeDeviceListUI", paramIntent);
  }

  public final void d(Intent paramIntent, Context paramContext)
  {
    if (paramContext == null)
      return;
    if (paramIntent == null)
      paramIntent = new Intent();
    String str = paramIntent.getStringExtra("Contact_User");
    if (str != null)
      bh.b(paramIntent, str);
    paramIntent.setClass(paramContext, ChattingUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final void e(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null))
      return;
    paramIntent.setClass(paramContext, RegByMobileVoiceVerifyUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final void e(Intent paramIntent, Context paramContext)
  {
    if (paramContext == null)
      return;
    if (paramIntent == null)
      paramIntent = new Intent();
    paramIntent.setClass(paramContext, ChattingUI.class);
    if ((paramContext instanceof Activity))
    {
      ((Activity)paramContext).startActivityForResult(paramIntent, 1);
      return;
    }
    paramContext.startActivity(paramIntent);
  }

  public final void f(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null))
      return;
    a.a(paramContext, "safedevice", ".ui.SecurityAccountIntroUI", paramIntent);
  }

  public final void f(Intent paramIntent, Context paramContext)
  {
    if (paramContext == null)
      return;
    if (paramIntent == null)
      paramIntent = new Intent();
    paramIntent.setClass(paramContext, BindQQUI.class);
    MMWizardActivity.j(paramContext, paramIntent);
  }

  public final void g(Context paramContext, Intent paramIntent)
  {
    if ((paramContext == null) || (paramIntent == null))
      return;
    a.b(paramContext, "game", ".ui.GameRankUI", paramIntent);
  }

  public final void g(Intent paramIntent, Context paramContext)
  {
    if (paramContext == null)
      return;
    if (paramIntent == null)
      paramIntent = new Intent();
    paramIntent.setClass(paramContext, LauncherUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final void h(Intent paramIntent, Context paramContext)
  {
    if (paramContext == null)
      return;
    if (paramIntent == null)
      paramIntent = new Intent();
    paramIntent.setClass(paramContext, WebViewUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final void i(Context paramContext, String paramString)
  {
    lm.d(paramContext, paramString, false);
  }

  public final void i(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent != null) && (paramContext != null))
    {
      if (paramIntent.getIntExtra("Retr_Msg_Type", -1) < 0)
        paramIntent.putExtra("Retr_Msg_Type", 4);
      paramIntent.setClass(paramContext, MsgRetransmitUI.class);
      paramContext.startActivity(paramIntent);
    }
  }

  public final void j(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent != null) && (paramContext != null))
    {
      paramIntent.putExtra("Ksnsupload_type", 1);
      a.b(paramContext, "sns", ".ui.SnsUploadUI", paramIntent);
    }
  }

  public final boolean j(Context paramContext, String paramString)
  {
    return lm.aq(paramContext, paramString);
  }

  public final void k(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent != null) && (paramContext != null))
    {
      paramIntent.putExtra("Ksnsupload_type", 2);
      a.b(paramContext, "sns", ".ui.SnsUploadUI", paramIntent);
    }
  }

  public final void l(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent != null) && (paramContext != null))
      a.b(paramContext, "location", ".ui.RedirectUI", paramIntent);
  }

  public final void m(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent != null) && (paramContext != null))
    {
      paramIntent.setClass(paramContext, SettingsModifyPasswordUI.class);
      paramContext.startActivity(paramIntent);
    }
  }

  public final void n(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent != null) && (paramContext != null))
    {
      paramIntent.setClass(paramContext, SettingsLanguageUI.class);
      paramContext.startActivity(paramIntent);
    }
  }

  public final void o(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent != null) && (paramContext != null))
    {
      paramIntent.setClass(paramContext, LauncherUI.class);
      paramContext.startActivity(paramIntent);
    }
  }

  public final void p(Intent paramIntent, Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, GestureGalleryUI.class);
    localIntent.putExtras(paramIntent.getExtras());
    if (paramIntent.getFlags() != 0)
      localIntent.addFlags(paramIntent.getFlags());
    paramContext.startActivity(localIntent);
  }

  public final void q(Intent paramIntent, Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, SendFeedBackUI.class);
    localIntent.putExtras(paramIntent.getExtras());
    if (paramIntent.getFlags() != 0)
      localIntent.addFlags(paramIntent.getFlags());
    paramContext.startActivity(localIntent);
  }

  public final void r(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent != null) && (paramContext != null))
    {
      Intent localIntent = new Intent(paramContext, ContactSearchUI.class);
      localIntent.putExtras(paramIntent.getExtras());
      if (paramIntent.getFlags() != 0)
        localIntent.addFlags(paramIntent.getFlags());
      paramContext.startActivity(localIntent);
    }
  }

  public final void s(Intent paramIntent, Context paramContext)
  {
    paramIntent.setClass(paramContext, SnsTagContactListUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final void t(Intent paramIntent, Context paramContext)
  {
    if (paramContext == null)
      return;
    if (paramIntent == null)
      paramIntent = new Intent();
    paramIntent.setClass(paramContext, AppAttachDownloadUI.class);
    paramContext.startActivity(paramIntent);
  }

  public final x v(Context paramContext)
  {
    return MMAppMgr.v(paramContext);
  }

  public final Intent w(Context paramContext)
  {
    return new Intent(paramContext, LauncherUI.class);
  }

  public final void x(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, SelfQRCodeUI.class));
  }

  public final void y(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, AddAppUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.ad
 * JD-Core Version:    0.6.2
 */