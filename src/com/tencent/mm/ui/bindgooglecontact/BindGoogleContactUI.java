package com.tencent.mm.ui.bindgooglecontact;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ab;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.v.a;
import com.tencent.mm.v.c;

public class BindGoogleContactUI extends MMActivity
  implements com.tencent.mm.n.m
{
  private boolean cmH = false;
  private ProgressDialog dbm;
  private TextView drn;
  private String gHA;
  private a gHB;
  private boolean gHn = false;
  private String gHp;
  private int gHr;
  private WebView gHw;
  private boolean gHx = false;
  private String gHy;
  private String gHz;

  private void LL()
  {
    if ((this.dbm != null) && (this.dbm.isShowing()))
      this.dbm.dismiss();
  }

  private void LP()
  {
    if (this.gHn)
    {
      this.gHw.setVisibility(8);
      aIv();
      startActivityForResult(new Intent("com.tencent.mm.gms.ACTION_CHOOSE_ACCOUNT"), 1003);
      return;
    }
    this.gHw.setVisibility(0);
    aIv();
    this.gHw.getSettings().setJavaScriptEnabled(true);
    this.gHw.setWebViewClient(new g(this));
    WebView localWebView = this.gHw;
    aa.d("MicroMsg.GoogleContactLogic", "getRequestCodeUrl:%s", new Object[] { "https://accounts.google.com/o/oauth2/auth?scope=https://www.googleapis.com/auth/userinfo.email https://www.google.com/m8/feeds&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code&client_id=369820936870.apps.googleusercontent.com" });
    localWebView.loadUrl("https://accounts.google.com/o/oauth2/auth?scope=https://www.googleapis.com/auth/userinfo.email https://www.google.com/m8/feeds&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=code&client_id=369820936870.apps.googleusercontent.com");
  }

  private void aIu()
  {
    if (this.gHw != null)
      this.gHw.setVisibility(4);
    if (this.drn != null)
      this.drn.setVisibility(0);
    if (!ba.bk(this));
    for (String str = getString(n.boG); ; str = getString(n.boz))
    {
      this.drn.setText(str);
      return;
    }
  }

  private void aIv()
  {
    if ((this.dbm == null) || (!this.dbm.isShowing()))
    {
      getString(n.ber);
      this.dbm = com.tencent.mm.ui.base.h.a(this, getString(n.beu), true, new l(this));
    }
  }

  private void ar(String paramString, int paramInt)
  {
    this.gHp = paramString;
    nu(paramInt);
  }

  private void nu(int paramInt)
  {
    this.gHB = new a(c.csJ, this.gHp, paramInt);
    be.uA().d(this.gHB);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.gHy;
    arrayOfObject[1] = this.gHz;
    aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "doScene mAppToken:%s, mWebToke:%s", arrayOfObject);
  }

  protected final void FR()
  {
    mn(n.boy);
    a(new f(this));
    this.gHw = ((WebView)findViewById(com.tencent.mm.i.avD));
    this.drn = ((TextView)findViewById(com.tencent.mm.i.empty));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    if (TextUtils.isEmpty(paramString))
      paramString = "";
    arrayOfObject[2] = paramString;
    aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "[onSceneEnd] errType:%d,errCode:%d,errMsg:%s", arrayOfObject);
    LL();
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if (this.gHn)
      {
        be.uz().sr().set(208903, this.gHp);
        be.uz().sr().set(208901, this.gHy);
      }
      while (true)
      {
        Intent localIntent = new Intent(this, GoogleFriendUI.class);
        localIntent.putExtra("enter_scene", this.gHr);
        startActivity(localIntent);
        finish();
        return;
        be.uz().sr().set(208903, this.gHp);
        be.uz().sr().set(208902, this.gHz);
        be.uz().sr().set(208904, this.gHA);
      }
    }
    if (paramInt2 == a.csE)
    {
      com.tencent.mm.ui.base.h.a(this, getString(n.boE), "", new j(this), new k(this));
      return;
    }
    aIu();
  }

  public final void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((paramBoolean) && (!TextUtils.isEmpty(paramString1)))
    {
      this.gHz = paramString1;
      this.gHA = paramString2;
      new m(this, this.gHz).execute(new Void[0]);
      return;
    }
    LL();
    aIu();
  }

  public final void f(boolean paramBoolean, String paramString)
  {
    if ((paramBoolean) && (!TextUtils.isEmpty(paramString)))
    {
      if ((!TextUtils.isEmpty(this.gHp)) && (!TextUtils.isEmpty(paramString)) && (!this.gHp.equalsIgnoreCase(paramString)))
      {
        LL();
        com.tencent.mm.ui.base.h.a(this, getString(n.boF), "", new h(this, paramString), new i(this));
        return;
      }
      this.gHp = paramString;
      ar(this.gHp, a.csC);
      return;
    }
    LL();
    aIu();
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aSA;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "requestCode:%d, resultCode:%d", arrayOfObject1);
    if (paramInt2 == -1)
    {
      switch (paramInt1)
      {
      default:
        return;
      case 1005:
        this.gHn = paramIntent.getBooleanExtra("gpservices", false);
        LP();
        return;
      case 1003:
        int j = paramIntent.getIntExtra("error_code", -1);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(j);
        aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "errorCode:%d ", arrayOfObject3);
        if (j == 0)
        {
          this.gHp = paramIntent.getStringExtra("account");
          if (this.cmH)
          {
            LL();
            return;
          }
          aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "startAcitivtyForGetToken");
          Intent localIntent = new Intent("com.tencent.mm.gms.ACTION_GET_TOKEN");
          localIntent.putExtra("gmail", this.gHp);
          localIntent.putExtra("scope", "oauth2:https://www.googleapis.com/auth/userinfo.email https://www.google.com/m8/feeds");
          startActivityForResult(localIntent, 1004);
          return;
        }
        LL();
        aIu();
        return;
      case 1004:
      }
      int i = paramIntent.getIntExtra("error_code", -1);
      String str = paramIntent.getStringExtra("error_msg");
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = str;
      aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "errorCode:%d errorMsg:%s", arrayOfObject2);
      if (i == 0)
      {
        this.gHy = paramIntent.getStringExtra("token");
        nu(a.csC);
        return;
      }
      LL();
      aIu();
      return;
    }
    if (paramInt1 == 1005)
    {
      this.gHn = paramIntent.getBooleanExtra("gpservices", false);
      LP();
      return;
    }
    LL();
    aIu();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.gHr = getIntent().getIntExtra("enter_scene", 0);
    this.gHn = ab.O(this);
    this.gHp = ((String)be.uz().sr().get(208903));
    FR();
    if (this.gHn)
    {
      startActivityForResult(new Intent("com.tencent.mm.gms.CHECK_GP_SERVICES"), 1005);
      return;
    }
    LP();
  }

  protected void onPause()
  {
    super.onPause();
    be.uA().b(487, this);
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(487, this);
    this.gHx = ((Boolean)be.uz().sr().get(208905, Boolean.valueOf(false))).booleanValue();
    if (this.gHx);
    try
    {
      CookieSyncManager.createInstance(this);
      CookieManager.getInstance().removeAllCookie();
      this.gHx = false;
      be.uz().sr().set(208905, Boolean.valueOf(false));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        aa.d("Google Login", "Clear cookie failed");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.BindGoogleContactUI
 * JD-Core Version:    0.6.2
 */