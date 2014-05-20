package com.tencent.mm.ui.tools;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Process;
import android.os.RemoteException;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebSettings.TextSize;
import android.webkit.WebView;
import android.webkit.WebView.HitTestResult;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.an.a;
import com.tencent.mm.b;
import com.tencent.mm.f;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.o;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.plugin.webview.stub.WebViewStubService;
import com.tencent.mm.plugin.webview.stub.ao;
import com.tencent.mm.pluginsdk.ui.tools.y;
import com.tencent.mm.pluginsdk.ui.tools.z;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.af;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.cn;
import com.tencent.mm.ui.KeyboardLinearLayout;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ar;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.tools.jsapi.j;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class WebViewUI extends MMActivity
  implements View.OnCreateContextMenuListener
{
  private static WebSettings.RenderPriority hni = WebSettings.RenderPriority.NORMAL;
  private static final Set hnt;
  private int bMD = 0;
  private long bMS = 0L;
  public String bQI = null;
  protected com.tencent.mm.plugin.webview.stub.al cOg = null;
  protected WebView cOj;
  protected boolean cOl = true;
  private boolean eCL = true;
  private ServiceConnection eMy = new gt(this);
  private String fes;
  private ao feu = new ge(this);
  private View fox;
  private ce gVb;
  private Handler handler;
  protected boolean hmQ = false;
  private ImageButton hmR;
  private ImageButton hmS;
  private View hmT;
  private boolean hmU = true;
  private boolean hmV = false;
  private boolean hmW = false;
  private boolean hmX = true;
  private boolean hmY = false;
  private String hmZ = null;
  private int hna = 0;
  private String hnb = "";
  protected j hnc = null;
  private List hnd = new ArrayList();
  private WebChromeClient.CustomViewCallback hne;
  private WebChromeClient hnf;
  private ProgressBar hng;
  private boolean hnh = false;
  private gb hnj = null;
  private ht hnk = new ht(null);
  protected hu hnl = new hu(this);
  private boolean hnm = false;
  private af hnn = new af(12);
  private HashMap hno = new HashMap();
  private ie hnp;
  private ValueCallback hnq;
  private final ay hnr = new ay(new ha(this), true);
  private String hns = "";
  private String[] hnu = null;
  private int mode = 0;
  private int versionCode;
  private String versionName;

  static
  {
    HashSet localHashSet = new HashSet();
    hnt = localHashSet;
    localHashSet.add("file:///android_asset/");
  }

  private void T(String paramString, boolean paramBoolean)
  {
    if (this.hmV)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "edw startGetA8Key, nevergeta8key");
      this.hnj.a(paramString, null, null, null);
      return;
    }
    if ((this.hnj.has(paramString)) && (!paramBoolean))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "edw startGetA8Key no need, wvPerm already has value, url = " + paramString);
      return;
    }
    String str = getIntent().getStringExtra("geta8key_username");
    int i = xF(str);
    int j = this.hnk.xM(paramString);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "edw startGetA8Key, url = " + paramString + ", scene = " + i + ", username = " + str + ", reason = " + j + ", force = " + paramBoolean);
    s(false, false);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "edw startGetA8Key, begin, set a default permission");
    this.hnj.a(paramString, null, null, null);
    this.hnl.aOf();
    Bundle localBundle = new Bundle();
    localBundle.putString("geta8key_data_req_url", paramString);
    localBundle.putString("geta8key_data_username", str);
    localBundle.putInt("geta8key_data_scene", i);
    localBundle.putInt("geta8key_data_reason", j);
    this.hmZ = paramString;
    try
    {
      boolean bool2 = this.cOg.c(233, localBundle);
      bool1 = bool2;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "startGetA8Key, doScene ret = " + bool1);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "startGetA8Key, ex = " + localException.getMessage());
        boolean bool1 = false;
      }
    }
  }

  private void aNV()
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("scene_end_type", 233);
      localBundle.putInt("scene_end_listener_hash_code", hashCode());
      this.cOg.b(6, localBundle);
      return;
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "removeSceneEnd, ex = " + localException.getMessage());
    }
  }

  private void aNW()
  {
    try
    {
      FrameLayout localFrameLayout = (FrameLayout)findViewById(i.aqA);
      if (localFrameLayout != null)
        localFrameLayout.removeView(this.cOj);
      this.cOj.stopLoading();
      this.cOj.removeAllViews();
      this.cOj.clearView();
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          this.cOj.destroy();
          this.cOj = null;
          finish();
          Process.killProcess(Process.myPid());
          return;
          localException1 = localException1;
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "forceQuit, ex = " + localException1.getMessage());
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = localException2.getMessage();
          com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.WebViewUI", "forceQuit, viewWV destroy, ex = %s", arrayOfObject);
        }
      }
    }
  }

  private boolean aNX()
  {
    try
    {
      boolean bool = this.cOg.qc("favorite");
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private void aNY()
  {
    if (!this.hnr.azG())
    {
      this.hnr.azn();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "tryStopTimer success");
    }
  }

  @TargetApi(11)
  private void aOa()
  {
    int i;
    if (Build.VERSION.SDK_INT < 11)
    {
      i = 1;
      if (i == 0)
        break label28;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "removeConfigJsInterface, api level too low");
    }
    while (true)
    {
      return;
      i = 0;
      break;
      try
      {
        label28: this.cOj.removeJavascriptInterface("searchBoxJavaBridge_");
        if (this.hnu != null);
      }
      catch (Exception localException3)
      {
        try
        {
          if (this.cOg.HB())
            this.hnu = this.cOg.qu();
          Object[] arrayOfObject2 = new Object[1];
          if (this.hnu == null)
          {
            j = 0;
            arrayOfObject2[0] = Integer.valueOf(j);
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "removeConfigJsInterface, to remove list size = %d", arrayOfObject2);
            if ((this.hnu == null) || (this.hnu.length == 0))
              continue;
          }
        }
        catch (Exception localException3)
        {
          try
          {
            while (true)
            {
              for (String str : this.hnu)
              {
                com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "removeConfigJsInterface, js interface name = %s", new Object[] { str });
                this.cOj.removeJavascriptInterface(str);
              }
              localException1 = localException1;
              Object[] arrayOfObject1 = new Object[1];
              arrayOfObject1[0] = localException1.getMessage();
              com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.WebViewUI", "removeConfigJsInterface, ex = %s", arrayOfObject1);
              continue;
              localException3 = localException3;
              Object[] arrayOfObject4 = new Object[1];
              arrayOfObject4[0] = localException3.getMessage();
              com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.WebViewUI", "getRemoveJsInterfaceList, ex = %s", arrayOfObject4);
            }
            int j = this.hnu.length;
          }
          catch (Exception localException2)
          {
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = localException2.getMessage();
            com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.WebViewUI", "removeConfigJsInterface, ex = %s", arrayOfObject3);
          }
        }
      }
    }
  }

  private void eu(boolean paramBoolean)
  {
    dh(paramBoolean);
    if (!paramBoolean)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "initShareBtn fail, share btn is invisible");
      return;
    }
    switch (this.mode)
    {
    default:
      return;
    case 0:
      a(0, com.tencent.mm.h.afQ, new gs(this));
      return;
    case 1:
    }
    a(0, com.tencent.mm.h.afQ, new gu(this));
  }

  private void ev(boolean paramBoolean)
  {
    if (findViewById(i.aQZ) == null)
      return;
    boolean bool1;
    Activity localActivity;
    if (findViewById(i.aQZ).getVisibility() == 0)
    {
      bool1 = true;
      if (bool1 != paramBoolean)
      {
        localActivity = aal();
        if (!paramBoolean)
          break label89;
      }
    }
    label89: for (int i = b.Yv; ; i = b.Yw)
    {
      Animation localAnimation = AnimationUtils.loadAnimation(localActivity, i);
      findViewById(i.aQZ).startAnimation(localAnimation);
      if (paramBoolean)
        break label97;
      findViewById(i.aQZ).setVisibility(8);
      return;
      bool1 = false;
      break;
    }
    label97: findViewById(i.aQZ).setVisibility(0);
    this.hmR = ((ImageButton)findViewById(i.aQY));
    ImageButton localImageButton = this.hmR;
    if ((this.cOj != null) && (this.cOj.canGoBack()));
    for (boolean bool2 = true; ; bool2 = false)
    {
      localImageButton.setEnabled(bool2);
      this.hmR.setOnClickListener(new gy(this));
      this.hmS = ((ImageButton)findViewById(i.aRa));
      this.hmS.setOnClickListener(new gz(this));
      return;
    }
  }

  private void ew(boolean paramBoolean)
  {
    if (this.hmS != null)
      this.hmS.setEnabled(paramBoolean);
  }

  private void ex(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mC(n.bHI);
      if (!this.hmY)
      {
        int i = com.tencent.mm.sdk.platformtools.al.azt().getInt("enter_web_pay_over_time", 2);
        if (i > 0)
        {
          SharedPreferences.Editor localEditor = com.tencent.mm.sdk.platformtools.al.azt().edit();
          localEditor.putInt("enter_web_pay_over_time", i - 1);
          localEditor.commit();
        }
        switch (i)
        {
        default:
        case 2:
        case 1:
        }
      }
      while (true)
      {
        this.hmY = true;
        return;
        ol(k.bbW);
        continue;
        ol(k.bbV);
      }
    }
    vU(null);
  }

  private void ok(int paramInt)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("scene_end_type", paramInt);
      localBundle.putInt("scene_end_listener_hash_code", hashCode());
      this.cOg.b(5, localBundle);
      return;
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "addSceneEnd, ex = " + localException.getMessage());
    }
  }

  private void ol(int paramInt)
  {
    ar localar = new ar(this, o.bIO);
    LinearLayout localLinearLayout = (LinearLayout)((LayoutInflater)getSystemService("layout_inflater")).inflate(paramInt, null);
    ImageView localImageView;
    if (paramInt == k.bbV)
      localImageView = (ImageView)localLinearLayout.findViewById(i.avT);
    try
    {
      String str = this.cOg.pW(this.cOg.q(2, null));
      if (!cj.hX(str))
        localImageView.setImageBitmap(com.tencent.mm.sdk.platformtools.h.a(en.nb(str), false, 1.0F));
      localLinearLayout.setMinimumWidth(10000);
      TextView localTextView = (TextView)localLinearLayout.findViewById(i.aBn);
      localar.getWindow();
      localar.setCanceledOnTouchOutside(true);
      localar.setOnDismissListener(new hb(this));
      localar.setOnCancelListener(new hc(this));
      localTextView.setOnClickListener(new hd(this, localar));
      localar.setContentView(localLinearLayout);
      localar.show();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", localRemoteException.toString());
    }
  }

  private void om(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 4))
      paramInt = 2;
    if (this.hnc != null)
      this.hnc.oA(paramInt);
  }

  private void on(int paramInt)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "localSetFontSize, fontSize = " + paramInt);
    switch (paramInt)
    {
    case 2:
    default:
      this.cOj.getSettings().setTextSize(WebSettings.TextSize.NORMAL);
      return;
    case 1:
      this.cOj.getSettings().setTextSize(WebSettings.TextSize.SMALLER);
      return;
    case 3:
      this.cOj.getSettings().setTextSize(WebSettings.TextSize.LARGER);
      return;
    case 4:
    }
    this.cOj.getSettings().setTextSize(WebSettings.TextSize.LARGEST);
  }

  private void xB(String paramString)
  {
    if (this.cOj != null);
    try
    {
      WebView.class.getMethod(paramString, new Class[0]).invoke(this.cOj, new Object[0]);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "No such method: " + paramString + ", " + localNoSuchMethodException.toString());
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "Illegal Access: " + paramString + ", " + localIllegalAccessException.toString());
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "Invocation Target Exception: " + paramString + ", " + localInvocationTargetException.toString());
      return;
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "Exception : " + paramString + ", " + localException.toString());
    }
  }

  private void xC(String paramString)
  {
    if (this.hnc != null)
      this.hnc.xP(paramString);
  }

  private boolean xD(String paramString)
  {
    try
    {
      String str3 = this.cOg.Dj();
      str1 = str3;
      if (cj.hX(str1))
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "dealLoadUrlFromCache fail, toolsPath is empty");
        return false;
      }
    }
    catch (Exception localException)
    {
      String str1;
      while (true)
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "dealLoadUrlFromCache fail, ex = " + localException.getMessage());
        str1 = null;
      }
      this.cOj.getSettings().setAppCacheMaxSize(20971520L);
      this.cOj.getSettings().setAppCachePath(str1);
      this.cOj.getSettings().setAllowFileAccess(true);
      this.cOj.getSettings().setAppCacheEnabled(true);
      this.cOj.getSettings().setCacheMode(1);
      if (ht.xN(paramString))
      {
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.WebViewUI", "dealLocalUrlFromCache, contains wechat redirect, no means to loadfromcache");
        return false;
      }
      boolean bool = fz.c(paramString, this.cOg);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "dealLocalUrlFromCache, url = " + paramString + ", hasCache = " + bool);
      if (bool)
      {
        Uri localUri = Uri.parse(paramString);
        if (localUri == null)
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "dealLoadUrlFromCache fail, uri is null");
          return false;
        }
        if (localUri.getScheme() == null)
          paramString = "http://" + paramString;
        ga localga = fz.b(paramString, this.cOg);
        StringBuilder localStringBuilder1 = new StringBuilder("dealLoadUrlFromCache, cache jsPerm = ");
        Object localObject1;
        Object localObject2;
        label284: gb localgb;
        String str2;
        JsapiPermissionWrapper localJsapiPermissionWrapper;
        if (localga == null)
        {
          localObject1 = null;
          StringBuilder localStringBuilder2 = localStringBuilder1.append(localObject1).append(", cache genCtrl = ");
          if (localga != null)
            break label384;
          localObject2 = null;
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", localObject2);
          localgb = this.hnj;
          str2 = this.bQI;
          if (localga != null)
            break label394;
          localJsapiPermissionWrapper = null;
          label319: if (localga != null)
            break label404;
        }
        label384: label394: label404: for (GeneralControlWrapper localGeneralControlWrapper = null; ; localGeneralControlWrapper = localga.hmF)
        {
          localgb.a(str2, localJsapiPermissionWrapper, localGeneralControlWrapper, null);
          if (xI(paramString))
            break label414;
          com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.WebViewUI", "dealLoadUrlFromCache, canLoadUrl fail, url = " + paramString);
          aNW();
          return true;
          localObject1 = localga.hmE;
          break;
          localObject2 = localga.hmF;
          break label284;
          localJsapiPermissionWrapper = localga.hmE;
          break label319;
        }
        label414: this.cOj.loadUrl(paramString);
        return true;
      }
    }
    return false;
  }

  private static int xE(String paramString)
  {
    int i = paramString.indexOf("#wechat_webview_type");
    if (i == -1)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "getWebViewType fail, no key word, url = " + paramString);
      return 0;
    }
    int j = 1 + (i + 20);
    if (paramString.length() <= j)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "getWebViewType fail, url is too short, url = " + paramString);
      return 0;
    }
    int k = Integer.parseInt(paramString.substring(j, j + 1));
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "getWebViewType result = " + k + ", url = " + paramString);
    return k;
  }

  private int xF(String paramString)
  {
    int i = getIntent().getIntExtra("geta8key_scene", 0);
    if ((i != 0) || ((paramString != null) && (paramString.length() > 0)));
    while (true)
    {
      try
      {
        boolean bool1 = this.cOg.db(paramString);
        if (bool1)
        {
          i = 8;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(i);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "KGetA8KeyScene = %s", arrayOfObject);
          return i;
        }
        boolean bool2 = this.cOg.cw(paramString);
        if (bool2)
        {
          i = 7;
          continue;
        }
        i = 1;
        continue;
      }
      catch (Exception localException)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "getScene fail, ex = " + localException.getMessage());
        i = 1;
        continue;
      }
      i = 0;
    }
  }

  private boolean xG(String paramString)
  {
    if (cj.hX(paramString))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "search contact err: null or nill url");
      return false;
    }
    ok(106);
    Bundle localBundle = new Bundle();
    localBundle.putString("search_contact_data_url", paramString);
    try
    {
      this.cOg.c(106, localBundle);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "startSearchContact, ex = " + localException.getMessage());
    }
  }

  private boolean xH(String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "dealCustomScheme, url = " + paramString);
    if ((paramString == null) || (paramString.length() == 0))
      return false;
    try
    {
      if (this.cOg.aH(paramString))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "dealCustomScheme, url is handled by QRCodeSpanUtil, url = " + paramString);
        this.cOg.pY(paramString);
        return true;
      }
    }
    catch (Exception localException1)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "dealCustomScheme, tryHandleEvents, ex = " + localException1.getMessage());
      Uri localUri = Uri.parse(paramString);
      if ((localUri != null) && (!paramString.startsWith("weixin://")) && (!paramString.startsWith("http")))
      {
        if (paramString.startsWith("tel:"))
        {
          Intent localIntent1 = new Intent("android.intent.action.DIAL", localUri);
          localIntent1.addFlags(268435456);
          try
          {
            startActivity(localIntent1);
            return true;
          }
          catch (Exception localException2)
          {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = localException2.getMessage();
            com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.WebViewUI", "start dial app failed:[%s]", arrayOfObject);
            return true;
          }
        }
        try
        {
          if ((!this.hnj.aNR().avF()) && (this.cOg != null) && (this.cOg.HB()))
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "dealCustomScheme, not allow outer open url");
            return true;
          }
        }
        catch (RemoteException localRemoteException)
        {
          Intent localIntent2 = new Intent("android.intent.action.VIEW", localUri);
          localIntent2.addFlags(268435456);
          if (cj.i(aal(), localIntent2))
          {
            startActivity(localIntent2);
            return true;
          }
        }
      }
    }
    return false;
  }

  private static final boolean xI(String paramString)
  {
    if (at.cHH)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "skipLoadUrlCheck");
      return true;
    }
    if (cj.hX(paramString))
      return true;
    String str = paramString.toLowerCase();
    if (!str.contains("file://"))
      return true;
    Iterator localIterator = hnt.iterator();
    while (localIterator.hasNext())
      if (str.startsWith((String)localIterator.next()))
        return true;
    return false;
  }

  private boolean z(Bundle paramBundle)
  {
    int i = paramBundle.getInt("geta8key_result_action_code");
    String str1 = paramBundle.getString("geta8key_result_title");
    String str2 = paramBundle.getString("geta8key_result_full_url");
    String str3 = paramBundle.getString("geta8key_result_content");
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "processGetA8Key, actionCode = " + i + ", title = " + str1 + ", fullUrl = " + str2 + ", content = " + str3);
    switch (i)
    {
    case 5:
    default:
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "qrcode-getA8key-not_catch: action code = " + i);
      return false;
    case 1:
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "getA8key-text: " + str3);
      if ((str3 == null) || (str3.length() == 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "getA8key-text fail, invalid content");
        return false;
      }
      this.cOj.loadData(str3, "text/html", "utf-8");
      return true;
    case 2:
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "getA8key-webview: title = " + str1 + ", fullUrl = " + str2);
      if ((str2 == null) || (str2.length() == 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "getA8key-webview fail, invalid fullUrl");
        return false;
      }
      if ((str1 != null) && (str1.length() > 0))
        vT(str1);
      if (!xI(str2))
      {
        com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.WebViewUI", "processGetA8Key qrcode, canLoadUrl fail, url = " + str2);
        aNW();
        return true;
      }
      this.cOj.loadUrl(str2);
      return true;
    case 7:
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "getA8key-webview_no_notice: title = " + str1 + ", fullUrl = " + str2);
      if ((str2 == null) || (str2.length() == 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "getA8key-webview_no_notice fail, invalid fullUrl");
        return false;
      }
      if ((str1 != null) && (str1.length() > 0))
        vT(str1);
      if (!xI(str2))
      {
        com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.WebViewUI", "processGetA8Key qrcode no notice, canLoadUrl fail, url = " + str2);
        aNW();
        return true;
      }
      this.cOj.loadUrl(str2);
      return true;
    case 6:
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "getA8key-special_webview: fullUrl = " + str2);
      if ((str2 == null) || (str2.length() == 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "getA8key-special_webview fail, invalid fullUrl");
        return false;
      }
      if (!xI(str2))
      {
        com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.WebViewUI", "processGetA8Key special, canLoadUrl fail, url = " + str2);
        aNW();
        return true;
      }
      this.cOj.loadUrl(str2);
      eu(false);
      return true;
    case 3:
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "getA8key-app: " + str2);
      if ((str2 == null) || (str2.length() == 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "getA8key-app, fullUrl is null");
        return false;
      }
      return xH(str2);
    case 4:
    }
    return xG(str2);
  }

  protected void FR()
  {
    this.bQI = aMw();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.bQI;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "initView , rawUrl = %s ", arrayOfObject);
    boolean bool = getIntent().getBooleanExtra("vertical_scroll", true);
    this.hmX = getIntent().getBooleanExtra("is_favorite_item", false);
    this.hmU = getIntent().getBooleanExtra("show_bottom", true);
    this.eCL = getIntent().getBooleanExtra("isWebwx", true);
    this.versionName = getIntent().getStringExtra("version_name");
    this.versionCode = getIntent().getIntExtra("version_code", 0);
    this.hmV = getIntent().getBooleanExtra("neverGetA8Key", false);
    this.bMS = getIntent().getLongExtra("msg_id", -9223372036854775808L);
    this.bMD = getIntent().getIntExtra("sns_local_id", 0);
    this.hna = getIntent().getIntExtra("news_svr_id", 0);
    this.hnb = getIntent().getStringExtra("news_svr_tweetid");
    this.mode = getIntent().getIntExtra("mode", 0);
    if ((this.bQI != null) && (this.bQI.contains("#wechat_webview_type")))
      this.mode = xE(this.bQI);
    FrameLayout localFrameLayout;
    if (this.eCL)
    {
      String str2 = cj.hW(getIntent().getStringExtra("title"));
      if (str2.length() > 0)
        this.hmQ = true;
      vT(str2);
      ev(aNU());
      ew(false);
      if (hni == WebSettings.RenderPriority.NORMAL)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "initView, set render priority to HIGH");
        this.cOj.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        hni = WebSettings.RenderPriority.HIGH;
      }
      localFrameLayout = (FrameLayout)findViewById(i.aqA);
      int i = getIntent().getIntExtra("webview_bg_color_rsID", -1);
      if ((i == -1) || (getContentView() == null))
        break label599;
      mA(i);
      getContentView().setBackgroundResource(i);
      this.cOj.setBackgroundResource(17170445);
      findViewById(i.aRe).setBackgroundResource(17170445);
    }
    while (true)
    {
      localFrameLayout.addView(this.cOj);
      if (!bool)
        this.cOj.setVerticalScrollBarEnabled(false);
      this.hnf = new WebViewUI.3(this);
      this.cOj.setWebChromeClient(this.hnf);
      this.cOj.setWebViewClient(new hq(this));
      this.cOj.setDownloadListener(new hf(this));
      this.cOj.requestFocus(130);
      this.cOj.setOnTouchListener(new hg(this));
      String str1 = com.tencent.mm.pluginsdk.ui.tools.aa.ah(this, this.cOj.getSettings().getUserAgentString());
      this.cOj.getSettings().setUserAgentString(str1);
      cn.b(this.cOj);
      new dg(aal()).a(this.cOj, this, null);
      a(new hh(this));
      ((KeyboardLinearLayout)findViewById(i.aRe)).a(new gv(this));
      return;
      vT("");
      break;
      label599: this.cOj.setBackgroundDrawable(a.k(this, f.aak));
    }
  }

  protected int Iw()
  {
    return k.aXn;
  }

  protected void Ix()
  {
    int i = 1;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "edw postBinded");
    aOa();
    String str1 = getIntent().getStringExtra("geta8key_username");
    String str2 = getIntent().getStringExtra("srcUsername");
    int k = getIntent().getIntExtra("message_id", 0);
    int m = getIntent().getIntExtra("message_index", 0);
    this.hnp = new ie(this, str1, this.bQI, str2, k, m);
    WebView localWebView = this.cOj;
    HashMap localHashMap1 = new HashMap();
    String str3;
    if (this.mode == 0)
      str3 = "0";
    while (true)
    {
      localHashMap1.put("webview_type", str3);
      localHashMap1.put("init_url", this.bQI);
      localHashMap1.put("init_font_size", "1");
      localHashMap1.put("short_url", cj.hW(getIntent().getStringExtra("shortUrl")));
      this.hnc = new j(localWebView, localHashMap1, new gj(this), this.cOg);
      j localj = this.hnc;
      String str4 = getIntent().getStringExtra("geta8key_username");
      HashMap localHashMap2;
      label289: RadioButton localRadioButton1;
      label384: RadioButton localRadioButton2;
      RadioButton localRadioButton3;
      RadioButton localRadioButton4;
      if (!cj.hX(getIntent().getStringExtra("srcUsername")))
      {
        localHashMap2 = new HashMap();
        localHashMap2.put("srcUsername", getIntent().getStringExtra("srcUsername"));
        localHashMap2.put("srcDisplayname", getIntent().getStringExtra("srcDisplayname"));
        localHashMap2.put("message_id", Integer.valueOf(getIntent().getIntExtra("message_id", 0)));
        localHashMap2.put("message_index", Integer.valueOf(getIntent().getIntExtra("message_index", 0)));
        localHashMap2.put("scene", Integer.valueOf(xF(str4)));
        localHashMap2.put("pay_channel", Integer.valueOf(getIntent().getIntExtra("pay_channel", 0)));
        localj.q(localHashMap2);
        this.hnd.add(this.hnc);
        this.hnd.add(new hv(this, (byte)0));
        this.hnd.add(new hp(this, (byte)0));
        this.hnd.add(new hw(this, (byte)0));
        this.hnd.add(new hz(this, (byte)0));
        this.hnd.add(new hl(this, (byte)0));
        this.hnd.add(new id(this, (byte)0));
        this.hnd.add(new hx(this, (byte)0));
        this.hnd.add(new hr(this, (byte)0));
        this.hnd.add(new hm(this, (byte)0));
        this.hnd.add(new ho(this, (byte)0));
        this.hnd.add(new hn(this, (byte)0));
        this.hnd.add(new ia(this, (byte)0));
        this.hnd.add(new ic(this, (byte)0));
        eu(getIntent().getBooleanExtra("showShare", i));
        this.hmT = LayoutInflater.from(this).inflate(k.aYf, null);
        localRadioButton1 = (RadioButton)this.hmT.findViewById(i.aGb);
        localRadioButton2 = (RadioButton)this.hmT.findViewById(i.aFY);
        localRadioButton3 = (RadioButton)this.hmT.findViewById(i.aFZ);
        localRadioButton4 = (RadioButton)this.hmT.findViewById(i.aGa);
        ImageButton localImageButton = (ImageButton)this.hmT.findViewById(i.aGc);
        hs localhs = new hs(this, localRadioButton1, localRadioButton2, localRadioButton3, localRadioButton4);
        localRadioButton1.setTag(Integer.valueOf(i));
        localRadioButton2.setTag(Integer.valueOf(2));
        localRadioButton3.setTag(Integer.valueOf(3));
        localRadioButton4.setTag(Integer.valueOf(4));
        localRadioButton1.setOnCheckedChangeListener(localhs);
        localRadioButton2.setOnCheckedChangeListener(localhs);
        localRadioButton3.setOnCheckedChangeListener(localhs);
        localRadioButton4.setOnCheckedChangeListener(localhs);
        localImageButton.setOnClickListener(new he(this));
        FrameLayout localFrameLayout = (FrameLayout)findViewById(i.aqA);
        FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
        this.hmT.setLayoutParams(localLayoutParams);
        localFrameLayout.addView(this.hmT);
        this.hmT.setVisibility(8);
      }
      try
      {
        if (this.cOg.HB())
        {
          int i8 = this.cOg.aJ(16384, 0);
          int n = i8;
          if ((n <= 0) || (n > 4))
            n = 2;
          om(n);
          on(n);
          if (n != i)
            break label1235;
          int i2 = i;
          localRadioButton1.setChecked(i2);
          if (n != 2)
            break label1241;
          int i4 = i;
          localRadioButton2.setChecked(i4);
          if (n != 3)
            break label1247;
          int i6 = i;
          localRadioButton3.setChecked(i6);
          if (n != 4)
            break label1253;
          localRadioButton4.setChecked(i);
        }
      }
      catch (Exception localException1)
      {
        try
        {
          while (true)
          {
            this.cOg.C(this.bQI, true);
            Iterator localIterator = this.hnd.iterator();
            ib localib;
            String str7;
            do
            {
              if (!localIterator.hasNext())
                break;
              localib = (ib)localIterator.next();
              str7 = localib.aOe().toLowerCase();
            }
            while ((this.bQI == null) || (!this.bQI.toLowerCase().startsWith(str7)));
            boolean bool2 = localib.xL(this.bQI);
            com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.WebViewUI", "initView, url handled, result = " + bool2 + ", url = " + this.bQI);
            return;
            str3 = "1";
            break;
            if (!cj.hX(str4))
            {
              localHashMap2 = new HashMap();
              localHashMap2.put("srcUsername", str4);
              break label289;
            }
            localHashMap2 = null;
            break label384;
            localException1 = localException1;
            com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "initFontChooserView, ex = " + localException1.getMessage());
            int i1 = 2;
            continue;
            label1235: int i3 = 0;
            continue;
            label1241: int i5 = 0;
            continue;
            label1247: int i7 = 0;
          }
          label1253: int j = 0;
        }
        catch (Exception localException2)
        {
          boolean bool1;
          do
          {
            while (true)
              com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "postBinded, jumpToActivity, ex = " + localException2.getMessage());
            this.hnh = getIntent().getBooleanExtra("webview_load_url_from_cache", false);
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "initView, loadUrlFromCache = " + this.hnh);
            if (!this.hnh)
              break;
            bool1 = xD(this.bQI);
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "initView, localCacheSucc = " + bool1);
          }
          while (bool1);
          if (Iz())
          {
            com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "needDelayLoadUrl is true, do nothing");
            return;
          }
          Object localObject = getIntent().getStringExtra("data");
          if (localObject != null)
          {
            com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.WebViewUI", (String)localObject);
            try
            {
              String str6 = this.cOg.pX((String)localObject);
              localObject = str6;
              this.cOj.setOnLongClickListener(new hi(this));
              this.cOj.getSettings().setUseWideViewPort(false);
              this.cOj.getSettings().setLoadWithOverviewMode(false);
              str5 = getIntent().getStringExtra("baseurl");
              if (!xI(str5))
              {
                com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.WebViewUI", "postBinded baseUrl, canLoadUrl fail, url = " + str5);
                aNW();
                return;
              }
            }
            catch (Exception localException3)
            {
              String str5;
              while (true)
                com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "postBinded, formatQRString, ex = " + localException3.getMessage());
              this.cOj.loadDataWithBaseURL(str5, (String)localObject, "text/html", "utf-8", null);
              com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "loadDataWithBaseUrl, data = " + (String)localObject);
              return;
            }
          }
          if ((this.bQI == null) || (this.bQI.length() == 0))
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "initView, rawUrl is null, no data or getStringExtra(\"data\") is null");
            return;
          }
          Uri localUri = Uri.parse(this.bQI);
          if (localUri == null)
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "initView uri is null");
            return;
          }
          if (localUri.getScheme() == null)
            this.bQI = ("http://" + this.bQI);
          while (localUri.getScheme().startsWith("http"))
          {
            this.hnk = new ht(this.bQI);
            if ((!this.hmV) && (!this.hnj.has(this.bQI)))
              break label1875;
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "initView, no need to geta8key, loadUrl directly, neverGetA8Key = " + this.hmV);
            if (xI(this.bQI))
              break;
            com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.WebViewUI", "postBinded 2, canLoadUrl fail, url = " + this.bQI);
            aNW();
            return;
          }
          com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.WebViewUI", "uri scheme not startwith http, scheme = " + localUri.getScheme());
          if (!xI(this.bQI))
          {
            com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.WebViewUI", "postBinded, canLoadUrl fail, url = " + this.bQI);
            aNW();
            return;
          }
          this.cOj.loadUrl(this.bQI);
          return;
        }
      }
    }
    this.cOj.loadUrl(this.bQI);
    return;
    label1875: T(this.bQI, false);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "before geta8key, rawUrl = " + this.bQI);
  }

  protected boolean Iz()
  {
    return false;
  }

  // ERROR //
  public void a(com.tencent.mm.plugin.webview.stub.d paramd)
  {
    // Byte code:
    //   0: ldc 226
    //   2: new 240	java/lang/StringBuilder
    //   5: dup
    //   6: ldc_w 1865
    //   9: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_0
    //   13: invokevirtual 556	java/lang/Object:hashCode	()I
    //   16: invokevirtual 355	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   19: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   22: invokestatic 261	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   25: aload_0
    //   26: invokevirtual 1868	com/tencent/mm/ui/tools/WebViewUI:isFinishing	()Z
    //   29: ifeq +12 -> 41
    //   32: ldc 226
    //   34: ldc_w 1870
    //   37: invokestatic 407	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   40: return
    //   41: iconst_0
    //   42: istore_2
    //   43: iconst_m1
    //   44: istore_3
    //   45: aload_1
    //   46: invokeinterface 1873 1 0
    //   51: istore_2
    //   52: aload_1
    //   53: invokeinterface 1876 1 0
    //   58: istore_3
    //   59: aload_1
    //   60: invokeinterface 1879 1 0
    //   65: istore 21
    //   67: iload 21
    //   69: istore 5
    //   71: aload_1
    //   72: invokeinterface 1882 1 0
    //   77: pop
    //   78: aload_1
    //   79: invokeinterface 1885 1 0
    //   84: astore 23
    //   86: aload 23
    //   88: astore 7
    //   90: ldc 226
    //   92: new 240	java/lang/StringBuilder
    //   95: dup
    //   96: ldc_w 1887
    //   99: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   102: iload_2
    //   103: invokevirtual 355	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   106: ldc_w 1889
    //   109: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: iload 5
    //   114: invokevirtual 355	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   117: ldc_w 1891
    //   120: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: iload_3
    //   124: invokevirtual 355	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   127: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokestatic 261	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   133: iload_2
    //   134: sipush 233
    //   137: if_icmpeq +16 -> 153
    //   140: iload_2
    //   141: sipush 131
    //   144: if_icmpeq +9 -> 153
    //   147: iload_2
    //   148: bipush 106
    //   150: if_icmpne -110 -> 40
    //   153: iload_2
    //   154: lookupswitch	default:+26->180, 106:+27->181, 233:+73->227
    //   181: aload_0
    //   182: invokevirtual 592	com/tencent/mm/ui/tools/WebViewUI:finish	()V
    //   185: return
    //   186: astore 4
    //   188: iconst_m1
    //   189: istore 5
    //   191: aload 4
    //   193: astore 6
    //   195: ldc 226
    //   197: new 240	java/lang/StringBuilder
    //   200: dup
    //   201: ldc_w 1893
    //   204: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: aload 6
    //   209: invokevirtual 404	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   212: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   218: invokestatic 234	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   221: aconst_null
    //   222: astore 7
    //   224: goto -134 -> 90
    //   227: aload_0
    //   228: getfield 163	com/tencent/mm/ui/tools/WebViewUI:hnl	Lcom/tencent/mm/ui/tools/hu;
    //   231: invokevirtual 1896	com/tencent/mm/ui/tools/hu:aOg	()V
    //   234: aload 7
    //   236: ifnonnull +424 -> 660
    //   239: new 375	android/os/Bundle
    //   242: dup
    //   243: invokespecial 376	android/os/Bundle:<init>	()V
    //   246: astore 8
    //   248: aload 8
    //   250: ldc_w 1898
    //   253: invokevirtual 1902	android/os/Bundle:getSerializable	(Ljava/lang/String;)Ljava/io/Serializable;
    //   256: astore 9
    //   258: aload 9
    //   260: ifnull +394 -> 654
    //   263: aload 9
    //   265: checkcast 142	java/util/ArrayList
    //   268: astore 10
    //   270: new 434	com/tencent/mm/protocal/JsapiPermissionWrapper
    //   273: dup
    //   274: aload 8
    //   276: ldc_w 1904
    //   279: invokevirtual 1427	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   282: aload 8
    //   284: ldc_w 1906
    //   287: invokevirtual 1427	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   290: invokespecial 1909	com/tencent/mm/protocal/JsapiPermissionWrapper:<init>	(II)V
    //   293: astore 11
    //   295: new 1378	com/tencent/mm/protocal/GeneralControlWrapper
    //   298: dup
    //   299: aload 8
    //   301: ldc_w 1911
    //   304: invokevirtual 1427	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   307: invokespecial 1912	com/tencent/mm/protocal/GeneralControlWrapper:<init>	(I)V
    //   310: astore 12
    //   312: aload 8
    //   314: ldc_w 1914
    //   317: invokevirtual 1427	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   320: istore 13
    //   322: ldc 226
    //   324: new 240	java/lang/StringBuilder
    //   327: dup
    //   328: ldc_w 1916
    //   331: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   334: iload 13
    //   336: invokevirtual 355	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   339: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   342: invokestatic 261	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   345: iload 13
    //   347: tableswitch	default:+25 -> 372, 0:+102->449, 1:+184->531, 2:+102->449
    //   373: astore 14
    //   375: aload_0
    //   376: aload_0
    //   377: getfield 149	com/tencent/mm/ui/tools/WebViewUI:hnj	Lcom/tencent/mm/ui/tools/gb;
    //   380: aload 14
    //   382: invokevirtual 1920	com/tencent/mm/ui/tools/gb:xz	(Ljava/lang/String;)Lcom/tencent/mm/protocal/JsapiPermissionWrapper;
    //   385: invokevirtual 1923	com/tencent/mm/protocal/JsapiPermissionWrapper:awy	()Z
    //   388: invokespecial 699	com/tencent/mm/ui/tools/WebViewUI:ex	(Z)V
    //   391: aload_0
    //   392: getfield 147	com/tencent/mm/ui/tools/WebViewUI:hnh	Z
    //   395: ifeq -355 -> 40
    //   398: aload_0
    //   399: getfield 112	com/tencent/mm/ui/tools/WebViewUI:bQI	Ljava/lang/String;
    //   402: aload 11
    //   404: aload 12
    //   406: aload_0
    //   407: getfield 179	com/tencent/mm/ui/tools/WebViewUI:cOg	Lcom/tencent/mm/plugin/webview/stub/al;
    //   410: invokestatic 1926	com/tencent/mm/ui/tools/fz:a	(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Lcom/tencent/mm/plugin/webview/stub/al;)Z
    //   413: pop
    //   414: ldc 226
    //   416: new 240	java/lang/StringBuilder
    //   419: dup
    //   420: ldc_w 1928
    //   423: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   426: aload 11
    //   428: invokevirtual 1284	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   431: ldc_w 1930
    //   434: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: aload 12
    //   439: invokevirtual 1284	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   442: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   445: invokestatic 261	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   448: return
    //   449: iload_3
    //   450: ifne +8 -> 458
    //   453: iload 5
    //   455: ifeq +16 -> 471
    //   458: iload_3
    //   459: iconst_4
    //   460: if_icmpne +59 -> 519
    //   463: iload 5
    //   465: sipush -2005
    //   468: if_icmpne +51 -> 519
    //   471: aload 8
    //   473: ldc_w 1433
    //   476: invokevirtual 1431	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   479: astore 19
    //   481: aload_0
    //   482: getfield 149	com/tencent/mm/ui/tools/WebViewUI:hnj	Lcom/tencent/mm/ui/tools/gb;
    //   485: aload 19
    //   487: aload 11
    //   489: aload 12
    //   491: aload 10
    //   493: invokevirtual 323	com/tencent/mm/ui/tools/gb:a	(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V
    //   496: aload_0
    //   497: aload 8
    //   499: invokespecial 1932	com/tencent/mm/ui/tools/WebViewUI:z	(Landroid/os/Bundle;)Z
    //   502: pop
    //   503: aload_0
    //   504: aload 11
    //   506: invokevirtual 1935	com/tencent/mm/protocal/JsapiPermissionWrapper:awh	()Z
    //   509: putfield 165	com/tencent/mm/ui/tools/WebViewUI:hnm	Z
    //   512: aload 19
    //   514: astore 14
    //   516: goto -141 -> 375
    //   519: aload_0
    //   520: iconst_1
    //   521: iconst_1
    //   522: invokevirtual 368	com/tencent/mm/ui/tools/WebViewUI:s	(ZZ)V
    //   525: aconst_null
    //   526: astore 14
    //   528: goto -153 -> 375
    //   531: iload_3
    //   532: ifne +49 -> 581
    //   535: iload 5
    //   537: ifne +44 -> 581
    //   540: aload 8
    //   542: ldc_w 1937
    //   545: invokevirtual 1431	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   548: astore 18
    //   550: aload_0
    //   551: getfield 149	com/tencent/mm/ui/tools/WebViewUI:hnj	Lcom/tencent/mm/ui/tools/gb;
    //   554: aload 18
    //   556: aload 11
    //   558: aload 12
    //   560: aload 10
    //   562: invokevirtual 323	com/tencent/mm/ui/tools/gb:a	(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V
    //   565: aload_0
    //   566: aload 11
    //   568: invokevirtual 1935	com/tencent/mm/protocal/JsapiPermissionWrapper:awh	()Z
    //   571: putfield 165	com/tencent/mm/ui/tools/WebViewUI:hnm	Z
    //   574: aload 18
    //   576: astore 14
    //   578: goto -203 -> 375
    //   581: iload_3
    //   582: iconst_4
    //   583: if_icmpne +57 -> 640
    //   586: iload 5
    //   588: sipush -2005
    //   591: if_icmpne +49 -> 640
    //   594: aload_0
    //   595: getfield 236	com/tencent/mm/ui/tools/WebViewUI:cOj	Landroid/webkit/WebView;
    //   598: invokevirtual 580	android/webkit/WebView:stopLoading	()V
    //   601: aload 8
    //   603: ldc_w 1433
    //   606: invokevirtual 1431	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   609: astore 16
    //   611: aload_0
    //   612: getfield 149	com/tencent/mm/ui/tools/WebViewUI:hnj	Lcom/tencent/mm/ui/tools/gb;
    //   615: aload 16
    //   617: aload 11
    //   619: aload 12
    //   621: aload 10
    //   623: invokevirtual 323	com/tencent/mm/ui/tools/gb:a	(Ljava/lang/String;Lcom/tencent/mm/protocal/JsapiPermissionWrapper;Lcom/tencent/mm/protocal/GeneralControlWrapper;Ljava/util/ArrayList;)V
    //   626: aload_0
    //   627: aload 8
    //   629: invokespecial 1932	com/tencent/mm/ui/tools/WebViewUI:z	(Landroid/os/Bundle;)Z
    //   632: pop
    //   633: aload 16
    //   635: astore 14
    //   637: goto -262 -> 375
    //   640: aload_0
    //   641: iconst_1
    //   642: iconst_1
    //   643: invokevirtual 368	com/tencent/mm/ui/tools/WebViewUI:s	(ZZ)V
    //   646: goto -274 -> 372
    //   649: astore 6
    //   651: goto -456 -> 195
    //   654: aconst_null
    //   655: astore 10
    //   657: goto -387 -> 270
    //   660: aload 7
    //   662: astore 8
    //   664: goto -416 -> 248
    //
    // Exception table:
    //   from	to	target	type
    //   45	67	186	java/lang/Exception
    //   71	86	649	java/lang/Exception
  }

  protected final void aEM()
  {
    aX();
    setProgressBarIndeterminateVisibility(false);
  }

  public final boolean aEW()
  {
    return false;
  }

  protected String aMw()
  {
    String str = cj.hW(getIntent().getStringExtra("rawUrl"));
    if ((str != null) && (str.length() > 0))
      return str;
    Uri localUri = getIntent().getData();
    if (localUri == null)
      return "";
    return localUri.toString();
  }

  protected final boolean aNU()
  {
    return (this.hmU) && (this.mode != 1);
  }

  protected final void aNZ()
  {
    int i = 2;
    try
    {
      if (this.cOg.HB())
      {
        int k = this.cOg.aJ(16384, 2);
        j = k;
        if ((j > 0) && (j <= 4))
          break label84;
        om(i);
        s(true, true);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "onLoadJsApiFinished, ex = " + localException.getMessage());
        int j = i;
        continue;
        label84: i = j;
      }
    }
  }

  public void finish()
  {
    if (this.hmW)
      setResult(-1);
    super.finish();
  }

  protected int getLayoutId()
  {
    return k.aRd;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 != 1) || (this.hnq == null))
      return;
    if (paramIntent == null)
    {
      localUri = null;
      String str = cj.c(this, localUri);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "get file path:[%s]", new Object[] { str });
      if (cj.hX(str))
        break label131;
      if (!str.startsWith(Environment.getExternalStorageDirectory().getAbsolutePath()))
      {
        com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.WebViewUI", "select a file not on sdcard :[%s]", new Object[] { str });
        Toast.makeText(this, n.bIt, 1).show();
      }
    }
    label131: for (Uri localUri = null; ; localUri = null)
    {
      this.hnq.onReceiveValue(localUri);
      this.hnq = null;
      return;
      localUri = paramIntent.getData();
      break;
    }
  }

  @TargetApi(11)
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.handler = new Handler();
    if (Build.VERSION.SDK_INT >= 11)
      getWindow().setFlags(16777216, 16777216);
    Iterator localIterator = y.Au().iterator();
    while (localIterator.hasNext())
    {
      z localz = (z)localIterator.next();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "onCreate, start plugin, plugin name = " + localz.getName());
      localz.auP();
    }
    boolean bool1 = getIntent().getBooleanExtra("usePlugin", true);
    boolean bool2 = getIntent().getBooleanExtra("zoom", true);
    boolean bool3 = getIntent().getBooleanExtra("useJs", true);
    this.cOj = new WebView(this);
    this.cOj.getSettings().setJavaScriptEnabled(bool3);
    this.cOj.getSettings().setPluginsEnabled(bool1);
    this.cOj.getSettings().setDomStorageEnabled(true);
    this.cOj.getSettings().setBuiltInZoomControls(bool2);
    this.cOj.getSettings().setUseWideViewPort(true);
    this.cOj.getSettings().setLoadWithOverviewMode(true);
    this.cOj.getSettings().setSavePassword(false);
    this.cOj.getSettings().setSaveFormData(false);
    this.cOj.getSettings().setGeolocationEnabled(true);
    this.cOj.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    WindowManager localWindowManager = (WindowManager)getApplicationContext().getSystemService("window");
    try
    {
      Field localField1 = WebView.class.getDeclaredField("mWebViewCore").getType().getDeclaredField("mBrowserFrame").getType().getDeclaredField("sConfigCallback");
      localField1.setAccessible(true);
      Object localObject = localField1.get(null);
      if (localObject == null);
      while (true)
      {
        label328: aOa();
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "edw tryBindService");
        Intent localIntent = new Intent(this, WebViewStubService.class);
        localIntent.putExtra("jsapiargs", getIntent().getBundleExtra("jsapiargs"));
        bindService(localIntent, this.eMy, 1);
        this.hnj = new gb(this, this.cOj);
        FR();
        xC("onCreate");
        return;
        Field localField2 = localField1.getType().getDeclaredField("mWindowManager");
        localField2.setAccessible(true);
        localField2.set(localObject, localWindowManager);
      }
    }
    catch (Exception localException)
    {
      break label328;
    }
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    WebView.HitTestResult localHitTestResult;
    if ((paramView instanceof WebView))
    {
      localHitTestResult = ((WebView)paramView).getHitTestResult();
      if (localHitTestResult != null)
        break label29;
    }
    while (true)
    {
      return;
      label29: if ((localHitTestResult.getType() != 5) && (localHitTestResult.getType() != 8))
        continue;
      try
      {
        boolean bool2 = this.cOg.isSDCardAvailable();
        bool1 = bool2;
        if (!bool1)
          continue;
        paramContextMenu.setHeaderTitle(n.bIn);
        paramContextMenu.add(0, 0, 0, getString(n.bwX)).setOnMenuItemClickListener(new hj(this, localHitTestResult));
        return;
      }
      catch (Exception localException)
      {
        while (true)
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "onCreateContextMenu fail, ex = " + localException.getMessage());
          boolean bool1 = false;
        }
      }
    }
  }

  @TargetApi(11)
  protected void onDestroy()
  {
    xC("onDestroy");
    aNV();
    try
    {
      this.cOg.b(10, null);
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          this.cOg.aoY();
          this.cOg.jT(hashCode());
          if (this.eMy != null)
            unbindService(this.eMy);
          Iterator localIterator1 = y.Au().iterator();
          while (localIterator1.hasNext())
          {
            z localz = (z)localIterator1.next();
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "onDestroy, stop plugin, plugin name = " + localz.getName());
            localz.auQ();
          }
          localException1 = localException1;
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "removeshareurl cache failed: " + localException1.getMessage());
        }
      }
      catch (Exception localException2)
      {
        while (true)
          com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewUI", "onDestroy, ex = " + localException2.getMessage());
        y.clear();
        try
        {
          Iterator localIterator2 = this.hnd.iterator();
          while (localIterator2.hasNext())
            localIterator2.next();
        }
        catch (Exception localException3)
        {
          this.hnd.clear();
          if (Build.VERSION.SDK_INT >= 11)
          {
            this.cOj.removeJavascriptInterface("MicroMsg");
            this.cOj.removeJavascriptInterface("JsApi");
          }
          this.hnj.detach();
          this.hnj = null;
          this.cOj.setVisibility(8);
        }
      }
    }
    try
    {
      FrameLayout localFrameLayout = (FrameLayout)findViewById(i.aqA);
      if (localFrameLayout != null)
        localFrameLayout.removeView(this.cOj);
      this.cOj.removeAllViews();
      this.cOj.clearView();
    }
    catch (Exception localException4)
    {
      try
      {
        while (true)
        {
          this.cOj.destroy();
          this.cOj = null;
          System.gc();
          super.onDestroy();
          return;
          localException4 = localException4;
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "onDestory, ex = " + localException4.getMessage());
        }
      }
      catch (Exception localException5)
      {
        while (true)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = localException5.getMessage();
          com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.WebViewUI", "onDestroy, viewWV destroy, ex = %s", arrayOfObject);
        }
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.fox != null) && (this.hne != null) && (this.hnf != null))
    {
      this.hnf.onHideCustomView();
      return true;
    }
    if ((paramInt == 4) && (this.cOj.canGoBack()))
    {
      this.cOj.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    if (this.gVb != null)
      this.gVb.dismiss();
    xB("onPause");
    Iterator localIterator = y.Au().iterator();
    while (localIterator.hasNext())
    {
      z localz = (z)localIterator.next();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "onCreate, start plugin, plugin name = " + localz.getName());
      localz.auR();
    }
    xC("onPause");
  }

  protected void onResume()
  {
    super.onResume();
    xB("onResume");
    Iterator localIterator = y.Au().iterator();
    while (localIterator.hasNext())
    {
      z localz = (z)localIterator.next();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "onCreate, start plugin, plugin name = " + localz.getName());
      localz.bb(this);
    }
    xC("onResume");
  }

  public void onStart()
  {
    super.onStart();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "edw onStart");
  }

  protected void onStop()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "edw onStop");
    if (this.hnp != null)
    {
      this.hnp.oS();
      this.hnp = null;
    }
    aNY();
    s(true, true);
    super.onStop();
  }

  protected final void s(boolean paramBoolean1, boolean paramBoolean2)
  {
    dg(paramBoolean1);
    if (!paramBoolean2);
    for (boolean bool = true; ; bool = false)
    {
      setProgressBarIndeterminateVisibility(bool);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.WebViewUI
 * JD-Core Version:    0.6.2
 */