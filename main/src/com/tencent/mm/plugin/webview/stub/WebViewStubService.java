package com.tencent.mm.plugin.webview.stub;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import com.tencent.mm.m.af;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.plugin.webview.a.a;
import com.tencent.mm.pluginsdk.model.downloader.FileDownloadManger;
import com.tencent.mm.pluginsdk.model.downloader.n;
import com.tencent.mm.pluginsdk.ui.tools.c;
import com.tencent.mm.protocal.a.hh;
import com.tencent.mm.protocal.a.lz;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.tools.WebViewStubCallbackWrapper;
import com.tencent.mm.ui.tools.jsapi.p;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class WebViewStubService extends Service
  implements com.tencent.mm.n.m
{
  private static final Set feI;
  private am feD = new m(this);
  private List feE = new ArrayList();
  private int feF = 0;
  private n feG;
  private Set feH = new HashSet();
  private Handler handler;

  static
  {
    HashSet localHashSet = new HashSet();
    feI = localHashSet;
    localHashSet.add("sendAppMessage".toLowerCase());
    feI.add("profile".toLowerCase());
    feI.add("shareWeibo".toLowerCase());
    feI.add("addContact".toLowerCase());
    feI.add("addEmoticon".toLowerCase());
    feI.add("GetBrandWCPayRequest".toLowerCase());
    feI.add("editAddress".toLowerCase());
    feI.add("openSpecificView".toLowerCase());
    feI.add("jumpWCMall".toLowerCase());
    feI.add("getLatestAddress".toLowerCase());
    feI.add("openProductView".toLowerCase());
    feI.add("geoLocation".toLowerCase());
    feI.add("getBrandWCPayBindCardRequest".toLowerCase());
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    int i = paramx.getType();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    aa.d("MicroMsg.WebViewStubService", "onSceneEnd :[%d]", arrayOfObject1);
    ak localak = new ak((byte)0);
    localak.type = i;
    localak.bLI = paramInt1;
    localak.bLJ = paramInt2;
    localak.bOM = paramString;
    if (i == 106)
    {
      be.uA().b(106, this);
      if ((paramInt1 != 0) || (paramInt2 != 0))
        aa.e("MicroMsg.WebViewStubService", "onSceneEnd, sendcard errType = " + paramInt1 + ", errCode = " + paramInt2);
    }
    while (i != 233)
      while (true)
      {
        return;
        sj localsj = ((aj)paramx).CB();
        String str = an.a(localsj.fEI);
        af.vJ().c(str, an.a(localsj.fzx));
        Intent localIntent = new Intent();
        c.a(localIntent, localsj, 30);
        if (cj.hW(str).length() > 0)
        {
          i locali = be.uz().su().tO(str);
          if ((locali != null) && (!locali.rb()))
            localIntent.putExtra("Contact_IsLBSFriend", true);
          if ((0x8 & localsj.fNp) > 0)
            com.tencent.mm.plugin.d.c.m.dZN.j(10298, str + ",30");
          localIntent.addFlags(268435456);
          a.cHS.c(localIntent, this);
          Bundle localBundle2 = new Bundle();
          localBundle2.putString("search_contact_result_user", str);
          localak.diG = localBundle2;
          try
          {
            Iterator localIterator2 = this.feE.iterator();
            while (localIterator2.hasNext())
              ((WebViewStubCallbackWrapper)localIterator2.next()).aNT().b(localak);
          }
          catch (Exception localException2)
          {
            aa.e("MicroMsg.WebViewStubService", "onSceneEnd searchcontact fail, ex = " + localException2.getMessage());
            return;
          }
        }
      }
    com.tencent.mm.modelsimple.x localx = (com.tencent.mm.modelsimple.x)paramx;
    Bundle localBundle1 = new Bundle();
    lz locallz = localx.Co();
    int j;
    label422: int k;
    label440: hh localhh;
    int m;
    label465: boolean bool;
    if (locallz == null)
    {
      j = 0;
      localBundle1.putInt("geta8key_result_jsapi_perm_b1", j);
      if (locallz != null)
        break label745;
      k = 0;
      localBundle1.putInt("geta8key_result_jsapi_perm_b2", k);
      localhh = localx.Cp();
      if (localhh != null)
        break label755;
      m = 0;
      localBundle1.putInt("geta8key_result_general_ctrl_b1", m);
      localBundle1.putInt("geta8key_result_reason", localx.Ck());
      localBundle1.putString("geta8key_result_req_url", localx.Cm());
      localBundle1.putString("geta8key_result_full_url", localx.Cl());
      localBundle1.putString("geta8key_result_title", localx.getTitle());
      localBundle1.putInt("geta8key_result_action_code", localx.Cn());
      localBundle1.putString("geta8key_result_content", localx.getContent());
      ArrayList localArrayList = localx.Cr();
      localBundle1.putSerializable("geta8key_result_scope_list", localArrayList);
      Object[] arrayOfObject2 = new Object[4];
      arrayOfObject2[0] = localx.Cq();
      arrayOfObject2[1] = localx.Cl();
      arrayOfObject2[2] = localx.Cm();
      if (localArrayList == null)
        break label765;
      bool = true;
      label611: arrayOfObject2[3] = Boolean.valueOf(bool);
      aa.d("MicroMsg.WebViewStubService", "geta8key onscened: share url:[%s], full url:[%s], req url:[%s], has scopeList:[%s]", arrayOfObject2);
      if (cj.hX(localx.Cq()))
        break label771;
      com.tencent.mm.plugin.webview.b.e.aE(localx.Cl(), localx.Cq());
    }
    while (true)
    {
      while (true)
      {
        localak.diG = localBundle1;
        try
        {
          Iterator localIterator1 = this.feE.iterator();
          while (localIterator1.hasNext())
            ((WebViewStubCallbackWrapper)localIterator1.next()).aNT().b(localak);
        }
        catch (Exception localException1)
        {
          aa.e("MicroMsg.WebViewStubService", "onSceneEnd geta8key fail, ex = " + localException1.getMessage());
          return;
        }
      }
      j = locallz.fJG;
      break label422;
      label745: k = locallz.fNd;
      break label440;
      label755: m = localhh.fJG;
      break label465;
      label765: bool = false;
      break label611;
      label771: Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = localx.Cl();
      arrayOfObject3[1] = localx.Cm();
      aa.b("MicroMsg.WebViewStubService", "null shareUrl, full url:[%s], req url:[%s]", arrayOfObject3);
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    p.A(paramIntent.getBundleExtra("jsapiargs"));
    return this.feD;
  }

  public void onCreate()
  {
    super.onCreate();
    this.handler = new Handler();
    this.feG = new ai(this);
    FileDownloadManger.a(this.feG);
  }

  public void onDestroy()
  {
    super.onDestroy();
    FileDownloadManger.b(this.feG);
    this.feG = null;
    this.feE.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.WebViewStubService
 * JD-Core Version:    0.6.2
 */