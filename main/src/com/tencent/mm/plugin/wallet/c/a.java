package com.tencent.mm.plugin.wallet.c;

import android.content.Context;
import android.os.Build;
import com.tencent.mm.n;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.wu;
import com.tencent.mm.protocal.a.wv;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tenpay.android.wechat.TenpayUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

public abstract class a extends x
  implements ab
{
  private m cjh;
  private com.tencent.mm.n.a cke;
  private String faq = "";
  private String far = "";

  public abstract int TN();

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSenceTenPayBase", "Cmd : " + TN() + ", errType = " + paramInt2 + ", errCode = " + paramInt3 + ", errMsg = " + paramString);
    wv localwv = (wv)((com.tencent.mm.n.a)paramaj).ws();
    String str1;
    if ((paramInt2 == 0) && (paramInt3 == 0))
      if (localwv.fXL == 0)
        str1 = an.b(localwv.fXK);
    while (true)
    {
      int j;
      try
      {
        JSONObject localJSONObject = new JSONObject(str1);
        this.faq = localJSONObject.optString("pay_flag");
        this.far = localJSONObject.optString("return_url");
        int i = localJSONObject.getInt("retcode");
        String str2 = localwv.fXP;
        if (cj.hX(str2))
          str2 = localJSONObject.optString("retmsg");
        j = localwv.fXO;
        if ((i == 0) && (j == 0))
        {
          a(i, str2, localJSONObject);
          aa.d("MicroMsg.NetSenceTenPayBase", "Cmd : " + TN() + ", resp = " + str1);
          if (paramInt2 != 0)
            aa.e("MicroMsg.NetSenceTenPayBase", "Cmd : " + TN() + ", errType = " + paramInt2 + ", errCode = " + paramInt3 + ", errMsg = " + paramString);
          this.cjh.a(paramInt2, paramInt3, paramString, this);
          return;
        }
        aa.d("MicroMsg.NetSenceTenPayBase", "ErrCode tenpayErrType : " + j);
        if (j != 0)
          break label429;
        paramInt3 = -1000;
        aa.d("MicroMsg.NetSenceTenPayBase", "ErrCode errMsg : " + str2);
        paramString = str2;
        paramInt2 = 1000;
        continue;
      }
      catch (Exception localException)
      {
        paramString = al.getContext().getString(n.bGg);
        paramInt3 = 2;
        paramInt2 = 1000;
        continue;
      }
      paramString = localwv.fXM;
      paramInt3 = 2;
      paramInt2 = 1000;
      continue;
      Map localMap = u.aL(paramString, "e");
      if (localMap != null)
      {
        aa.d("MicroMsg.NetSenceTenPayBase", "CDN error!");
        paramString = (String)localMap.get(".e.Content");
        continue;
        label429: paramInt3 = j;
      }
    }
  }

  public abstract void a(int paramInt, String paramString, JSONObject paramJSONObject);

  public final void a(PayInfo paramPayInfo, Map paramMap)
  {
    if (paramPayInfo == null)
    {
      aa.e("MicroMsg.NetSenceTenPayBase", "payInfo is null");
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put("devicename", Build.MODEL);
      n(localHashMap2);
      return;
    }
    aa.d("MicroMsg.NetSenceTenPayBase", "payInfo is " + paramPayInfo);
    paramMap.put("req_key", paramPayInfo.faP);
    paramMap.put("partner_id", paramPayInfo.fbi);
    paramMap.put("pay_sign", paramPayInfo.fbj);
    if (paramPayInfo.fbh > 0)
      paramMap.put("pay_scene", paramPayInfo.fbh);
    if (paramPayInfo.fbg >= 0)
      paramMap.put("bindbankscene", paramPayInfo.fbg);
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("uuid", paramPayInfo.dnL);
    localHashMap1.put("appid", paramPayInfo.appId);
    localHashMap1.put("appsource", paramPayInfo.fbc);
    localHashMap1.put("channel", paramPayInfo.cCI);
    localHashMap1.put("devicename", Build.MODEL);
    n(localHashMap1);
  }

  public final boolean anV()
  {
    if (this.faq == null)
      return false;
    return "1".equals(this.faq.trim());
  }

  public final String anW()
  {
    return this.far;
  }

  public String ank()
  {
    return null;
  }

  public final int getType()
  {
    return 385;
  }

  public final void m(Map paramMap)
  {
    if (paramMap == null)
      paramMap = new HashMap();
    if (paramMap != null)
      paramMap.remove("uin");
    if (this.cke == null)
    {
      b localb = new b();
      localb.a(new wu());
      localb.b(new wv());
      localb.es("/cgi-bin/micromsg-bin/tenpay");
      localb.cN(385);
      localb.cO(185);
      localb.cP(1000000185);
      this.cke = localb.wx();
    }
    wu localwu = (wu)this.cke.wr();
    localwu.fXG = TN();
    localwu.fXH = 1;
    StringBuilder localStringBuilder;
    String str1;
    if (paramMap != null)
    {
      Object[] arrayOfObject = paramMap.keySet().toArray();
      Arrays.sort(arrayOfObject);
      localStringBuilder = new StringBuilder();
      int i = 0;
      int j = 0;
      while (i < arrayOfObject.length)
      {
        Object localObject = arrayOfObject[i];
        String str3 = (String)paramMap.get(localObject);
        if (!cj.hX(str3))
        {
          if (j != 0)
            localStringBuilder.append("&");
          localStringBuilder.append(localObject);
          localStringBuilder.append("=");
          localStringBuilder.append(str3);
          j = 1;
        }
        i++;
      }
      aa.d("MicroMsg.NetSenceTenPayBase", "Cmd : " + localwu.fXG + ", req = " + localStringBuilder.toString());
      str1 = TenpayUtil.signWith3Des(localStringBuilder.toString());
      if (j == 0)
        break label363;
    }
    label363: for (String str2 = "&"; ; str2 = "")
    {
      localStringBuilder.append(str2);
      localStringBuilder.append("WCPaySign");
      localStringBuilder.append("=");
      localStringBuilder.append(str1);
      byte[] arrayOfByte = localStringBuilder.toString().getBytes();
      localwu.fXI = new rv().bM(arrayOfByte);
      return;
    }
  }

  public final void n(Map paramMap)
  {
    if (this.cke == null)
    {
      b localb = new b();
      localb.a(new wu());
      localb.b(new wv());
      localb.es("/cgi-bin/micromsg-bin/tenpay");
      localb.cN(385);
      localb.cO(185);
      localb.cP(1000000185);
      this.cke = localb.wx();
    }
    wu localwu = (wu)this.cke.wr();
    if (paramMap != null)
    {
      Object[] arrayOfObject = paramMap.keySet().toArray();
      Arrays.sort(arrayOfObject);
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      int j = 0;
      while (i < arrayOfObject.length)
      {
        Object localObject = arrayOfObject[i];
        String str = (String)paramMap.get(localObject);
        if (!cj.hX(str))
        {
          if (j != 0)
            localStringBuilder.append("&");
          localStringBuilder.append(localObject);
          localStringBuilder.append("=");
          localStringBuilder.append(str);
          j = 1;
        }
        i++;
      }
      aa.d("MicroMsg.NetSenceTenPayBase", "Cmd : " + localwu.fXG + ", wxreq = " + localStringBuilder.toString());
      byte[] arrayOfByte = localStringBuilder.toString().getBytes();
      localwu.fXJ = new rv().bM(arrayOfByte);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.c.a
 * JD-Core Version:    0.6.2
 */