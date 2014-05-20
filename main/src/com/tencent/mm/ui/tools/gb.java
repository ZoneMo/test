package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.content.Intent;
import android.webkit.WebView;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.protocal.a.hh;
import com.tencent.mm.protocal.a.lz;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class gb
{
  private WebView hmG;
  private Map hmH;
  private JsapiPermissionWrapper hmI;
  private GeneralControlWrapper hmJ;
  private final JsapiPermissionWrapper hmK = JsapiPermissionWrapper.fxD;
  private final GeneralControlWrapper hmL = GeneralControlWrapper.fxA;

  public gb(Activity paramActivity, WebView paramWebView)
  {
    this.hmI = ((JsapiPermissionWrapper)paramActivity.getIntent().getParcelableExtra("hardcode_jspermission"));
    if ((at.cHF == null) || (at.cHF.length() == 0))
    {
      aa.d("MicroMsg.WebViewPermission", "setHardcodeJsPermission, Test.jsapiPermission is null");
      this.hmJ = ((GeneralControlWrapper)paramActivity.getIntent().getParcelableExtra("hardcode_general_ctrl"));
      if ((at.cHG != null) && (at.cHG.length() != 0))
        break label328;
      aa.d("MicroMsg.WebViewPermission", "setHardcodeGeneralCtrl, Test.generalCtrl is null");
    }
    while (true)
    {
      while (true)
      {
        aa.d("MicroMsg.WebViewPermission", "edw <init> hardcodeJsPerm = " + this.hmI + ", hardcodeGenCtrl = " + this.hmJ);
        this.hmG = paramWebView;
        this.hmH = new HashMap();
        return;
        try
        {
          String[] arrayOfString = at.cHF.split(";");
          int j = Integer.parseInt(arrayOfString[0], 16);
          aa.d("MicroMsg.WebViewPermission", "setHardcodeJsPermission, permission1 = " + j);
          lz locallz = new lz();
          locallz.fJG = j;
          if (arrayOfString.length > 1)
          {
            int k = Integer.parseInt(arrayOfString[1], 16);
            aa.d("MicroMsg.WebViewPermission", "setHardcodeJsPermission, permission2 = " + k);
            locallz.fNd = k;
          }
          this.hmI = new JsapiPermissionWrapper(locallz);
          aa.d("MicroMsg.WebViewPermission", "setHardcodeJsPermission, hardcodeJsPerm = " + this.hmI);
        }
        catch (Exception localException2)
        {
          while (true)
          {
            aa.e("MicroMsg.WebViewPermission", "setHardcodeJsPermission, parse jsapi fail, ex = " + localException2.getMessage());
            this.hmI = null;
          }
        }
      }
      try
      {
        label328: int i = Integer.parseInt(at.cHG);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(i);
        aa.e("MicroMsg.WebViewPermission", "setHardcodeGeneralCtrl, permission = %d", arrayOfObject2);
        hh localhh = new hh();
        localhh.fJG = i;
        this.hmJ = new GeneralControlWrapper(localhh);
        aa.d("MicroMsg.WebViewPermission", "setHardcodeGeneralCtrl, hardcodeGenCtrl = " + this.hmJ);
      }
      catch (Exception localException1)
      {
        while (true)
        {
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = localException1.getMessage();
          aa.b("MicroMsg.WebViewPermission", "setHardcodeGeneralCtrl fail, ex = %s", arrayOfObject1);
          this.hmJ = null;
        }
      }
    }
  }

  private static String xA(String paramString)
  {
    int i = paramString.indexOf("#");
    if (i < 0)
      return paramString;
    return paramString.substring(0, i);
  }

  public final void a(String paramString, JsapiPermissionWrapper paramJsapiPermissionWrapper, GeneralControlWrapper paramGeneralControlWrapper, ArrayList paramArrayList)
  {
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.WebViewPermission", "update fail, url is null");
      return;
    }
    String str = xA(paramString);
    if (paramJsapiPermissionWrapper == null)
      paramJsapiPermissionWrapper = this.hmK;
    if (paramGeneralControlWrapper == null)
      paramGeneralControlWrapper = this.hmL;
    aa.d("MicroMsg.WebViewPermission", "edw update, jsPerm = " + paramJsapiPermissionWrapper + ", genCtrl = " + paramGeneralControlWrapper + ", url = " + str);
    this.hmH.put(str, new gc(paramJsapiPermissionWrapper, paramGeneralControlWrapper, paramArrayList));
  }

  public final JsapiPermissionWrapper aNQ()
  {
    if (this.hmI != null)
    {
      aa.d("MicroMsg.WebViewPermission", "getJsPerm, return hardcodeJsPerm = " + this.hmI);
      return this.hmI;
    }
    if (this.hmG == null);
    for (String str = null; ; str = this.hmG.getUrl())
      return xz(str);
  }

  public final GeneralControlWrapper aNR()
  {
    if (this.hmJ != null)
    {
      aa.d("MicroMsg.WebViewPermission", "getGenCtrl, return hardcodeGenCtrl = " + this.hmJ);
      return this.hmJ;
    }
    String str1;
    if (this.hmG != null)
    {
      str1 = this.hmG.getUrl();
      if (!cj.hX(str1));
    }
    while (true)
    {
      aa.e("MicroMsg.WebViewPermission", "getGenCtrl fail, url = " + str1);
      return this.hmL;
      String str2 = xA(str1);
      gc localgc = (gc)this.hmH.get(str2);
      StringBuilder localStringBuilder = new StringBuilder("edw getGenCtrl, genCtrl = ");
      Object localObject = null;
      if (localgc == null);
      while (true)
      {
        aa.d("MicroMsg.WebViewPermission", localObject + ", url = " + str2);
        if (localgc != null)
          break;
        return this.hmL;
        localObject = localgc.hmN;
      }
      return localgc.hmN;
      str1 = null;
    }
  }

  public final ArrayList aNS()
  {
    String str1;
    if (this.hmG != null)
    {
      str1 = this.hmG.getUrl();
      if (!cj.hX(str1));
    }
    while (true)
    {
      aa.e("MicroMsg.WebViewPermission", "getScopeList fail, url = " + str1);
      String str2;
      gc localgc;
      do
      {
        return null;
        str2 = xA(str1);
        localgc = (gc)this.hmH.get(str2);
      }
      while (localgc == null);
      StringBuilder localStringBuilder = new StringBuilder("edw getScopeList, scopeList is null []");
      if (localgc.hmO == null);
      for (boolean bool = true; ; bool = false)
      {
        aa.d("MicroMsg.WebViewPermission", bool + ", url = " + str2);
        return localgc.hmO;
      }
      str1 = null;
    }
  }

  public final void detach()
  {
    aa.d("MicroMsg.WebViewPermission", "detach");
    this.hmH.clear();
    this.hmH = null;
    this.hmG = null;
  }

  public final boolean has(String paramString)
  {
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.WebViewPermission", "has fail, url is null");
      return false;
    }
    String str = xA(paramString);
    return this.hmH.containsKey(str);
  }

  public final JsapiPermissionWrapper xz(String paramString)
  {
    if (this.hmI != null)
    {
      aa.d("MicroMsg.WebViewPermission", "getJsPerm, return hardcodeJsPerm = " + this.hmI);
      return this.hmI;
    }
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.WebViewPermission", "getJsPerm fail, url = " + paramString);
      return this.hmK;
    }
    String str = xA(paramString);
    gc localgc = (gc)this.hmH.get(str);
    StringBuilder localStringBuilder = new StringBuilder("edw getJsPerm, jsPerm = ");
    if (localgc == null);
    for (Object localObject = null; ; localObject = localgc.hmM)
    {
      aa.d("MicroMsg.WebViewPermission", localObject + ", url = " + str);
      if (localgc != null)
        break;
      return this.hmK;
    }
    return localgc.hmM;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gb
 * JD-Core Version:    0.6.2
 */