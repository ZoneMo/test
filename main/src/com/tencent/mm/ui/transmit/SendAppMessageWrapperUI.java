package com.tencent.mm.ui.transmit;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.MotionEvent;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.MMActivity;

public class SendAppMessageWrapperUI extends MMActivity
{
  private int bLN = 0;
  private String bQq = null;
  private ay cBV = new ay(new ae(this), true);
  private String diH = null;
  private int diK = 0;
  private k hrU = null;
  private WXMediaMessage hrV = null;
  private boolean hrW = false;

  private r a(WXMediaMessage paramWXMediaMessage)
  {
    return new af(this, paramWXMediaMessage);
  }

  protected final void FR()
  {
  }

  protected final int getLayoutId()
  {
    return -1;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aW().hide();
    SharedPreferences localSharedPreferences = getSharedPreferences(al.azs(), 0);
    if (!localSharedPreferences.getBoolean("settings_landscape_mode", false))
    {
      aa.d("MicroMsg.SendAppMessageWrapperUI", "change orientation");
      this.hrW = true;
      setRequestedOrientation(-1);
      localSharedPreferences.edit().putBoolean("settings_landscape_mode", true).commit();
    }
    Bundle localBundle = getIntent().getExtras();
    j localj = new j(localBundle);
    this.bQq = localBundle.getString("Select_Conv_User");
    this.bLN = localBundle.getInt("SendAppMessageWrapper_Scene", 0);
    String str1 = localBundle.getString("SendAppMessageWrapper_AppId");
    if (str1 == null)
      str1 = Uri.parse(localBundle.getString("_mmessage_content")).getQueryParameter("appid");
    this.hrU = new k();
    this.hrU.field_appId = str1;
    ba.HE().c(this.hrU, new String[0]);
    if (this.hrU.field_appName == null);
    for (String str2 = getString(2131167839); ; str2 = l.c(aal(), this.hrU))
    {
      this.diH = getString(2131167838, new Object[] { str2 });
      this.hrV = localj.gca;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.hrV.messageAction;
      arrayOfObject[1] = this.hrV.messageExt;
      aa.f("MicroMsg.SendAppMessageWrapperUI", "onCreate, messageAction = %s, messageExt = %s", arrayOfObject);
      this.cBV.bO(100L);
      return;
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.hrW)
    {
      aa.d("MicroMsg.SendAppMessageWrapperUI", "restore orientation");
      SharedPreferences localSharedPreferences = getSharedPreferences(al.azs(), 0);
      setRequestedOrientation(1);
      localSharedPreferences.edit().putBoolean("settings_landscape_mode", false).commit();
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    SM();
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.SendAppMessageWrapperUI
 * JD-Core Version:    0.6.2
 */