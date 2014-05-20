package com.tencent.mm.ui.chatting;

import android.net.Uri;
import android.os.Bundle;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.m;
import com.tencent.mm.sdk.modelmsg.n;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;

public final class mg
  implements kf
{
  private static am gRS = new mh();
  private ChattingUI gMB;
  private final Map gRW = new HashMap();

  protected mg(ChattingUI paramChattingUI)
  {
    this.gMB = paramChattingUI;
  }

  public static void w(Bundle paramBundle)
  {
    gRS.ah(paramBundle);
    gRS.Ei();
  }

  public final void a(String paramString1, WXMediaMessage paramWXMediaMessage, String paramString2)
  {
    aa.d("MicroMsg.WXAppMessageShower", "request pkg = " + paramString1 + ", openId = " + paramString2);
    m localm = l.a(this.gMB, paramString1, paramWXMediaMessage, paramString2);
    this.gRW.put(localm.fhS, localm);
  }

  public final void v(Bundle paramBundle)
  {
    String str = Uri.parse(paramBundle.getString("_mmessage_content")).getQueryParameter("appid");
    aa.d("MicroMsg.WXAppMessageShower", "handleResp, appid = " + str);
    n localn = new n(paramBundle);
    aa.i("MicroMsg.WXAppMessageShower", "handleResp, errCode = " + localn.bLJ + ", type = 4");
    if ((m)this.gRW.get(localn.fhS) == null)
    {
      aa.e("MicroMsg.WXAppMessageShower", "invalid resp, check transaction failed, transaction=" + localn.fhS);
      return;
    }
    this.gRW.remove(localn.fhS);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.mg
 * JD-Core Version:    0.6.2
 */