package com.tencent.mm.plugin.base.stub;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.tencent.mm.an.a;
import com.tencent.mm.plugin.webview.stub.d;
import com.tencent.mm.sdk.modelmsg.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cn;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.tools.WebViewUI;
import com.tencent.mm.ui.tools.hu;

public class OAuthUI extends WebViewUI
{
  private String appId;
  protected WebView cOj;
  private ProgressBar cOk;
  private boolean cOl = true;
  private g cOm;
  private e cOn;

  private void IA()
  {
    z.a(getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs(), 0));
    this.cOn = e.a(this, this.appId, this.cOm, new n(this), this.cOg);
  }

  // ERROR //
  private void Iy()
  {
    // Byte code:
    //   0: ldc 64
    //   2: new 66	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 68
    //   8: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: getfield 41	com/tencent/mm/plugin/base/stub/OAuthUI:appId	Ljava/lang/String;
    //   15: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   21: invokestatic 84	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   24: aload_0
    //   25: getfield 52	com/tencent/mm/plugin/base/stub/OAuthUI:cOg	Lcom/tencent/mm/plugin/webview/stub/al;
    //   28: aload_0
    //   29: getfield 41	com/tencent/mm/plugin/base/stub/OAuthUI:appId	Ljava/lang/String;
    //   32: invokeinterface 90 2 0
    //   37: astore 10
    //   39: aload 10
    //   41: astore_3
    //   42: aload_0
    //   43: getfield 52	com/tencent/mm/plugin/base/stub/OAuthUI:cOg	Lcom/tencent/mm/plugin/webview/stub/al;
    //   46: invokeinterface 93 1 0
    //   51: astore 12
    //   53: aload 12
    //   55: astore 4
    //   57: aload_0
    //   58: getfield 52	com/tencent/mm/plugin/base/stub/OAuthUI:cOg	Lcom/tencent/mm/plugin/webview/stub/al;
    //   61: ldc 94
    //   63: aconst_null
    //   64: invokeinterface 98 3 0
    //   69: astore 13
    //   71: aload 13
    //   73: astore 5
    //   75: aload_3
    //   76: invokestatic 104	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   79: ifeq +66 -> 145
    //   82: ldc 64
    //   84: new 66	java/lang/StringBuilder
    //   87: dup
    //   88: ldc 106
    //   90: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   93: aload_0
    //   94: getfield 41	com/tencent/mm/plugin/base/stub/OAuthUI:appId	Ljava/lang/String;
    //   97: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokestatic 109	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   106: return
    //   107: astore_1
    //   108: aload_1
    //   109: astore_2
    //   110: aconst_null
    //   111: astore_3
    //   112: aconst_null
    //   113: astore 4
    //   115: ldc 64
    //   117: new 66	java/lang/StringBuilder
    //   120: dup
    //   121: ldc 111
    //   123: invokespecial 71	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   126: aload_2
    //   127: invokevirtual 114	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   130: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   136: invokestatic 117	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   139: aconst_null
    //   140: astore 5
    //   142: goto -67 -> 75
    //   145: new 119	com/tencent/mm/sdk/modelmsg/h
    //   148: dup
    //   149: invokespecial 120	com/tencent/mm/sdk/modelmsg/h:<init>	()V
    //   152: astore 6
    //   154: aload 6
    //   156: aload_0
    //   157: getfield 43	com/tencent/mm/plugin/base/stub/OAuthUI:cOm	Lcom/tencent/mm/sdk/modelmsg/g;
    //   160: getfield 125	com/tencent/mm/sdk/modelmsg/g:fhS	Ljava/lang/String;
    //   163: putfield 126	com/tencent/mm/sdk/modelmsg/h:fhS	Ljava/lang/String;
    //   166: aload 6
    //   168: bipush 254
    //   170: putfield 130	com/tencent/mm/sdk/modelmsg/h:bLJ	I
    //   173: aload 6
    //   175: aload 4
    //   177: putfield 133	com/tencent/mm/sdk/modelmsg/h:doZ	Ljava/lang/String;
    //   180: aload 6
    //   182: aload 5
    //   184: putfield 136	com/tencent/mm/sdk/modelmsg/h:dHm	Ljava/lang/String;
    //   187: new 138	android/os/Bundle
    //   190: dup
    //   191: invokespecial 139	android/os/Bundle:<init>	()V
    //   194: astore 7
    //   196: aload 6
    //   198: aload 7
    //   200: invokevirtual 143	com/tencent/mm/sdk/modelmsg/h:h	(Landroid/os/Bundle;)V
    //   203: aload 7
    //   205: invokestatic 148	com/tencent/mm/pluginsdk/model/app/u:s	(Landroid/os/Bundle;)V
    //   208: new 150	com/tencent/mm/sdk/a/b
    //   211: dup
    //   212: invokespecial 151	com/tencent/mm/sdk/a/b:<init>	()V
    //   215: astore 8
    //   217: aload 8
    //   219: aload_3
    //   220: putfield 154	com/tencent/mm/sdk/a/b:gbQ	Ljava/lang/String;
    //   223: aload 8
    //   225: aload 7
    //   227: putfield 158	com/tencent/mm/sdk/a/b:gbS	Landroid/os/Bundle;
    //   230: aload_0
    //   231: aload 8
    //   233: invokestatic 163	com/tencent/mm/sdk/a/a:a	(Landroid/content/Context;Lcom/tencent/mm/sdk/a/b;)Z
    //   236: pop
    //   237: return
    //   238: astore 11
    //   240: aload 11
    //   242: astore_2
    //   243: aconst_null
    //   244: astore 4
    //   246: goto -131 -> 115
    //   249: astore_2
    //   250: goto -135 -> 115
    //
    // Exception table:
    //   from	to	target	type
    //   24	39	107	java/lang/Exception
    //   42	53	238	java/lang/Exception
    //   57	71	249	java/lang/Exception
  }

  protected final void FR()
  {
    super.FR();
    this.cOk = ((ProgressBar)findViewById(2131362023));
    this.cOk.setVisibility(0);
    this.cOj = new WebView(aal());
    this.cOj.setBackgroundDrawable(a.k(this, 2131492883));
    ((FrameLayout)findViewById(2131362131)).addView(this.cOj);
    this.cOj.getSettings().setJavaScriptEnabled(true);
    this.cOj.setVerticalScrollBarEnabled(false);
  }

  protected final int Iw()
  {
    return 2130903542;
  }

  protected final void Ix()
  {
    super.Ix();
    Bundle localBundle;
    try
    {
      boolean bool2 = this.cOg.HB();
      bool1 = bool2;
      if (!bool1)
      {
        aa.e("MicroMsg.OAuthUI", "start, hasSetUin fail");
        Toast.makeText(this, 2131167864, 1).show();
        this.cOk.setVisibility(4);
        a(new i(this));
        dg(false);
        return;
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        aa.w("MicroMsg.OAuthUI", "hasSetUin, ex = " + localException1.getMessage());
        boolean bool1 = false;
      }
      this.cOj.setWebChromeClient(new OAuthUI.2(this));
      this.cOj.setWebViewClient(new j(this));
      this.cOj.setDownloadListener(new k(this));
      cn.b(this.cOj);
      a(new l(this));
      a(0, getString(2131167787), new m(this));
      localBundle = getIntent().getExtras();
      this.appId = Uri.parse(localBundle.getString("_mmessage_content")).getQueryParameter("appid");
      aa.d("MicroMsg.OAuthUI", "initView, appId = " + this.appId);
    }
    try
    {
      this.cOg.qa(this.appId);
      this.cOm = new g(localBundle);
    }
    catch (Exception localException2)
    {
      try
      {
        this.hnl.aOf();
        IA();
        return;
        localException2 = localException2;
        aa.w("MicroMsg.OAuthUI", "checkGetAppSetting, ex = " + localException2.getMessage());
      }
      catch (Exception localException3)
      {
        while (true)
          aa.w("MicroMsg.OAuthUI", "AC_ADD_SCENE_END, ex = " + localException3.getMessage());
      }
    }
  }

  protected final boolean Iz()
  {
    return true;
  }

  public final void a(d paramd)
  {
    if (this.cOn != null)
      this.cOn.a(paramd);
  }

  protected final int getLayoutId()
  {
    return 2130903867;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    try
    {
      this.hnl.aOg();
      this.cOj.setVisibility(8);
      this.cOj.destroy();
      this.cOj = null;
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        aa.w("MicroMsg.OAuthUI", "AC_REMOVE_SCENE_END, ex = " + localException.getMessage());
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((!this.cOl) && (paramInt == 4) && (this.cOj.canGoBack()))
    {
      this.cOj.goBack();
      return true;
    }
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      Iy();
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    WebView.disablePlatformNotifications();
  }

  protected void onResume()
  {
    super.onResume();
    WebView.enablePlatformNotifications();
  }

  protected void onStop()
  {
    this.cOj.stopLoading();
    super.onStop();
  }

  public final void stopLoading()
  {
    s(true, true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.OAuthUI
 * JD-Core Version:    0.6.2
 */