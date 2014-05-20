package com.tencent.mm.pluginsdk.ui.tools;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.webkit.WebView;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.cj;
import junit.framework.Assert;

public final class aa
{
  private static bu cGF = null;

  public static void a(WebView paramWebView)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUtil", "initIFrame");
    paramWebView.loadUrl("javascript:var edw_iframe = document.getElementById('_edw_iframe_');if (edw_iframe === null) {edw_iframe = document.createElement('iframe');edw_iframe.id = '_edw_iframe_';edw_iframe.style.display = 'none';document.documentElement.appendChild(edw_iframe);}");
  }

  public static void a(WebView paramWebView, String paramString1, String paramString2)
  {
    if ((paramWebView == null) || (cj.hX(paramString1)) || (cj.hX(paramString2)))
    {
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.WebViewUtil", "getJsResult fail, invalid argument, scheme = %s, jsCode = %s", new Object[] { paramString1, paramString2 });
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUtil", "getJsResult, scheme = %s, jsCode = %s", new Object[] { paramString1, paramString2 });
    a(paramWebView);
    paramWebView.loadUrl("javascript:document.getElementById('_edw_iframe_').src = '" + paramString1 + "' + " + paramString2);
  }

  public static String aI(String paramString1, String paramString2)
  {
    if ((cj.hX(paramString1)) || (cj.hX(paramString2)))
    {
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.WebViewUtil", "genJsCode fail, invalid argument, scheme = %s, jsCode = %s", new Object[] { paramString1, paramString2 });
      return null;
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUtil", "genJsCode, scheme = %s, jsCode = %s", new Object[] { paramString1, paramString2 });
    return "document.getElementById('_edw_iframe_').src = '" + paramString1 + "' + " + paramString2;
  }

  private static PackageInfo ad(Context paramContext, String paramString)
  {
    if (paramString == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUtil", "getPackageInfo fail, packageName is null");
      return null;
    }
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      return localPackageInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return null;
  }

  public static String ah(Context paramContext, String paramString)
  {
    String str1 = "MicroMsg.WebViewUtil, appendUserAgent fail, context is null, stack = " + cj.azV();
    boolean bool;
    if (paramContext != null)
    {
      bool = true;
      Assert.assertTrue(str1, bool);
      if (paramString != null)
        break label137;
    }
    label137: for (String str2 = " MicroMessenger/"; ; str2 = paramString + " MicroMessenger/")
    {
      PackageInfo localPackageInfo = ad(paramContext, al.getPackageName());
      if (localPackageInfo != null)
      {
        String str3 = str2 + localPackageInfo.versionName;
        str2 = str3 + "." + localPackageInfo.versionCode;
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUtil", "appendUserAgent, uaStr = " + str2);
      return str2;
      bool = false;
      break;
    }
  }

  public static void b(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (cGF == null)
      cGF = new bu(1, "webview-save-image", 1);
    cGF.c(new ab(paramContext, paramString1, paramString2, paramBoolean));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.aa
 * JD-Core Version:    0.6.2
 */