package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.pluginsdk.model.app.u;
import com.tencent.mm.pluginsdk.ui.applet.i;
import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.sdk.a.a;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.modelmsg.WXImageObject;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.ce;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class md
  implements kf
{
  private static am gRS = new me();
  private ChattingUI gMB;
  private final Set gRR = new HashSet();

  protected md(ChattingUI paramChattingUI)
  {
    this.gMB = paramChattingUI;
  }

  private r a(WXMediaMessage paramWXMediaMessage, k paramk)
  {
    return new mf(this, paramWXMediaMessage, paramk);
  }

  private static void a(Context paramContext, Set paramSet)
  {
    String str = null;
    if (paramSet != null)
    {
      int i = paramSet.size();
      str = null;
      if (i > 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        Iterator localIterator = paramSet.iterator();
        while (localIterator.hasNext())
        {
          localStringBuilder.append((String)localIterator.next());
          localStringBuilder.append(";");
        }
        str = localStringBuilder.toString();
      }
    }
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences(al.azu(), 0).edit();
    localEditor.putString("transactions_array_key", str);
    localEditor.commit();
  }

  private String n(k paramk)
  {
    ChattingUI localChattingUI = this.gMB;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = l.c(this.gMB, paramk);
    return localChattingUI.getString(2131167838, arrayOfObject);
  }

  public static void w(Bundle paramBundle)
  {
    gRS.ah(paramBundle);
    gRS.Ei();
  }

  public final void aKl()
  {
    gRS.a(this, null);
  }

  public final void aKm()
  {
    gRS.remove(this);
    this.gRR.clear();
    a(this.gMB, null);
  }

  public final boolean be(String paramString1, String paramString2)
  {
    aa.d("MicroMsg.WXAppMessageReceiver", "request, pkg = " + paramString1 + ", openId = " + paramString2);
    com.tencent.mm.sdk.modelmsg.b localb = new com.tencent.mm.sdk.modelmsg.b();
    localb.username = this.gMB.aJe();
    localb.fhS = f.h(au.FD().getBytes());
    localb.cOp = paramString2;
    SharedPreferences localSharedPreferences = this.gMB.getSharedPreferences(al.azs(), 0);
    localb.doZ = z.a(localSharedPreferences);
    localb.dHm = ((String)be.uz().sr().get(274436));
    Bundle localBundle = new Bundle();
    localb.h(localBundle);
    u.s(localBundle);
    u.t(localBundle);
    com.tencent.mm.sdk.a.b localb1 = new com.tencent.mm.sdk.a.b();
    localb1.gbQ = paramString1;
    localb1.gbS = localBundle;
    boolean bool = a.a(this.gMB, localb1);
    this.gRR.add(localb.fhS);
    a(this.gMB, this.gRR);
    return bool;
  }

  public final void v(Bundle paramBundle)
  {
    int i = 1;
    int j = 0;
    String str1 = Uri.parse(paramBundle.getString("_mmessage_content")).getQueryParameter("appid");
    c localc = new c(paramBundle);
    WXMediaMessage localWXMediaMessage = localc.gca;
    if (this.gRR.size() == 0)
    {
      ChattingUI localChattingUI2 = this.gMB;
      HashSet localHashSet = new HashSet();
      String str5 = localChattingUI2.getSharedPreferences(al.azu(), 0).getString("transactions_array_key", null);
      if ((str5 != null) && (str5.length() > 0))
      {
        String[] arrayOfString = str5.split(";");
        int n = arrayOfString.length;
        for (int i1 = 0; i1 < n; i1++)
          localHashSet.add(arrayOfString[i1]);
      }
      this.gRR.addAll(localHashSet);
    }
    if (!this.gRR.contains(localc.fhS))
    {
      aa.e("MicroMsg.WXAppMessageReceiver", "invalid resp, check transaction failed, transaction=" + localc.fhS);
      return;
    }
    this.gRR.remove(localc.fhS);
    a(this.gMB, this.gRR);
    k localk = new k();
    localk.field_appId = str1;
    aa.d("MicroMsg.WXAppMessageReceiver", "handleResp, appId = " + str1);
    if (!ba.HE().c(localk, new String[0]))
    {
      aa.e("MicroMsg.WXAppMessageReceiver", "unregistered app, ignore request, appId = " + str1);
      return;
    }
    int k = localWXMediaMessage.getType();
    switch (k)
    {
    case 6:
    default:
      aa.e("MicroMsg.WXAppMessageReceiver", "unknown type = " + k);
      i = 0;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    }
    label1084: 
    while (i == 0)
    {
      aa.e("MicroMsg.WXAppMessageReceiver", "deal fail, result is false");
      return;
      ce localce6 = i.a(this.gMB, localWXMediaMessage.description, n(localk), false, a(localWXMediaMessage, localk));
      int m = 0;
      if (localce6 != null)
        m = i;
      i = m;
      continue;
      ce localce5;
      if ((localWXMediaMessage.thumbData != null) && (localWXMediaMessage.thumbData.length > 0))
      {
        localce5 = i.a(this.gMB, localWXMediaMessage.thumbData, n(localk), false, a(localWXMediaMessage, localk));
        label486: if (localce5 != null)
          break label595;
        aa.e("MicroMsg.WXAppMessageReceiver", "showDialogItem3 fail, invalid argument");
      }
      while (true)
      {
        i = j;
        break;
        WXImageObject localWXImageObject = (WXImageObject)localWXMediaMessage.mediaObject;
        if ((localWXImageObject.imageData != null) && (localWXImageObject.imageData.length > 0))
        {
          localce5 = i.a(this.gMB, localWXImageObject.imageData, n(localk), false, a(localWXMediaMessage, localk));
          break label486;
        }
        localce5 = i.b(this.gMB, localWXImageObject.imagePath, n(localk), false, a(localWXMediaMessage, localk));
        break label486;
        label595: j = i;
      }
      if ((localWXMediaMessage.thumbData != null) && (localWXMediaMessage.thumbData.length > 0));
      for (ce localce4 = i.a(this.gMB, localWXMediaMessage.thumbData, localWXMediaMessage.title, localWXMediaMessage.description, n(localk), false, 2, a(localWXMediaMessage, localk)); localce4 == null; localce4 = i.a(this.gMB, 2130837623, localWXMediaMessage.title, localWXMediaMessage.description, n(localk), false, a(localWXMediaMessage, localk)))
      {
        i = 0;
        break;
      }
      ChattingUI localChattingUI1;
      byte[] arrayOfByte;
      String str2;
      String str3;
      String str4;
      r localr;
      if ((localWXMediaMessage.thumbData != null) && (localWXMediaMessage.thumbData.length > 0))
      {
        localChattingUI1 = this.gMB;
        arrayOfByte = localWXMediaMessage.thumbData;
        str2 = localWXMediaMessage.title;
        str3 = localWXMediaMessage.description;
        str4 = n(localk);
        localr = a(localWXMediaMessage, localk);
      }
      for (ce localce3 = i.a(localChattingUI1, arrayOfByte, str2, str3, str4, false, i, localr); localce3 == null; localce3 = i.a(this.gMB, 2130837626, localWXMediaMessage.title, localWXMediaMessage.description, n(localk), false, a(localWXMediaMessage, localk)))
      {
        i = 0;
        break;
      }
      if (i.a(this.gMB, localWXMediaMessage.title, localWXMediaMessage.thumbData, localWXMediaMessage.description, n(localk), false, a(localWXMediaMessage, localk)) == null)
      {
        i = 0;
        continue;
        if ((localWXMediaMessage.thumbData != null) && (localWXMediaMessage.thumbData.length > 0));
        for (ce localce2 = i.a(this.gMB, localWXMediaMessage.thumbData, localWXMediaMessage.title, localWXMediaMessage.description, n(localk), false, 0, a(localWXMediaMessage, localk)); localce2 == null; localce2 = i.a(this.gMB, 2130837624, localWXMediaMessage.title, localWXMediaMessage.description, n(localk), false, a(localWXMediaMessage, localk)))
        {
          i = 0;
          break;
        }
        if ((localWXMediaMessage.thumbData != null) && (localWXMediaMessage.thumbData.length > 0));
        for (ce localce1 = i.a(this.gMB, localWXMediaMessage.thumbData, n(localk), false, a(localWXMediaMessage, localk)); ; localce1 = i.a(this.gMB, 2130837624, localWXMediaMessage.title, localWXMediaMessage.description, n(localk), false, a(localWXMediaMessage, localk)))
        {
          if (localce1 != null)
            break label1084;
          i = 0;
          break;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.md
 * JD-Core Version:    0.6.2
 */