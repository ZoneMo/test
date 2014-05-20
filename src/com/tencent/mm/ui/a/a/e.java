package com.tencent.mm.ui.a.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.tencent.mm.sdk.platformtools.aa;

public final class e
{
  protected static String ham = "https://m.facebook.com/dialog/";
  protected static String han = "https://graph.facebook.com/";
  protected static String hao = "https://api.facebook.com/restserver.php";
  private String dsd;
  private String gHE = null;
  private long hap = 0L;
  private long haq = 0L;
  private Activity har;
  private String[] has;
  private int hat;
  private g hau;
  private final long hav = 86400000L;

  public e(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("You must specify your application ID when instantiating a Facebook object. See README for details.");
    this.dsd = paramString;
  }

  private void a(Activity paramActivity, String[] paramArrayOfString)
  {
    Bundle localBundle = new Bundle();
    if (paramArrayOfString.length > 0)
      localBundle.putString("scope", TextUtils.join(",", paramArrayOfString));
    CookieSyncManager.createInstance(paramActivity);
    a(paramActivity, "oauth", localBundle, new f(this));
  }

  public final String a(String paramString1, Bundle paramBundle, String paramString2)
  {
    paramBundle.putString("format", "json");
    if (aLJ())
      paramBundle.putString("access_token", this.gHE);
    if (paramString1 != null);
    for (String str = han + paramString1; ; str = hao)
      return m.c(str, paramString2, paramBundle);
  }

  public final void a(Activity paramActivity, String[] paramArrayOfString, g paramg)
  {
    this.hau = paramg;
    a(paramActivity, paramArrayOfString);
  }

  public final void a(Context paramContext, String paramString, Bundle paramBundle, g paramg)
  {
    String str1 = ham + paramString;
    paramBundle.putString("display", "touch");
    paramBundle.putString("redirect_uri", "fbconnect://success");
    if (paramString.equals("oauth"))
    {
      paramBundle.putString("type", "user_agent");
      paramBundle.putString("client_id", this.dsd);
    }
    String str2;
    while (true)
    {
      if (aLJ())
        paramBundle.putString("access_token", this.gHE);
      str2 = str1 + "?" + m.x(paramBundle);
      if (paramContext.checkCallingOrSelfPermission("android.permission.INTERNET") == 0)
        break;
      m.q(paramContext, "Error", "Application requires permission to access the Internet");
      return;
      paramBundle.putString("app_id", this.dsd);
    }
    new i(paramContext, str2, paramg).show();
  }

  public final boolean aLJ()
  {
    return (this.gHE != null) && ((this.haq == 0L) || (System.currentTimeMillis() < this.haq));
  }

  public final String aLK()
  {
    return this.gHE;
  }

  public final long aLL()
  {
    return this.haq;
  }

  public final void c(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == this.hat)
    {
      if (paramInt2 != -1)
        break label294;
      str1 = paramIntent.getStringExtra("error");
      if (str1 == null)
        str1 = paramIntent.getStringExtra("error_type");
      if (str1 == null)
        break label197;
      if ((!str1.equals("service_disabled")) && (!str1.equals("AndroidAuthKillSwitchException")))
        break label79;
      aa.d("Facebook-authorize", "Hosted auth currently disabled. Retrying dialog auth...");
      a(this.har, this.has);
    }
    label79: 
    while (paramInt2 != 0)
    {
      String str1;
      return;
      if ((str1.equals("access_denied")) || (str1.equals("OAuthAccessDeniedException")))
      {
        aa.d("Facebook-authorize", "Login canceled by user.");
        this.hau.onCancel();
        return;
      }
      String str2 = paramIntent.getStringExtra("error_description");
      if (str2 != null)
        str1 = str1 + ":" + str2;
      aa.d("Facebook-authorize", "Login failed: " + str1);
      this.hau.a(new h(str1));
      return;
      xh(paramIntent.getStringExtra("access_token"));
      xi(paramIntent.getStringExtra("expires_in"));
      if (aLJ())
      {
        aa.d("Facebook-authorize", "Login Success! access_token=" + this.gHE + " expires=" + this.haq);
        this.hau.e(paramIntent.getExtras());
        return;
      }
      this.hau.a(new h("Failed to receive access token."));
      return;
    }
    label197: if (paramIntent != null)
    {
      aa.d("Facebook-authorize", "Login failed: " + paramIntent.getStringExtra("error"));
      this.hau.a(new d(paramIntent.getStringExtra("error"), paramIntent.getIntExtra("error_code", -1), paramIntent.getStringExtra("failing_url")));
      return;
    }
    label294: aa.d("Facebook-authorize", "Login canceled by user.");
    this.hau.onCancel();
  }

  public final String ca(Context paramContext)
  {
    CookieSyncManager.createInstance(paramContext);
    CookieManager.getInstance().removeAllCookie();
    xh(null);
    this.haq = 0L;
    return null;
  }

  public final void xh(String paramString)
  {
    this.gHE = paramString;
    this.hap = System.currentTimeMillis();
  }

  public final void xi(String paramString)
  {
    if (paramString != null)
      if (!paramString.equals("0"))
        break label22;
    label22: for (long l = 0L; ; l = System.currentTimeMillis() + 1000L * Long.parseLong(paramString))
    {
      this.haq = l;
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.a.a.e
 * JD-Core Version:    0.6.2
 */