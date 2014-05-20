package com.tencent.mm.p;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;
import org.json.JSONObject;

public final class f
{
  public int cnA = 0;
  public boolean cnj = true;
  public boolean cnk = false;
  public boolean cnl = false;
  public boolean cnm = false;
  public String cnn;
  public String cno;
  public List cnp = null;
  public i cnq = null;
  public g cnr = null;
  public boolean cns = false;
  public boolean cnt = false;
  public boolean cnu = false;
  public int cnv;
  public boolean cnw = false;
  public int cnx = 0;
  public int cny = 0;
  public String cnz;

  private static f eC(String paramString)
  {
    int i = 1;
    f localf = new f();
    if (cj.hX(paramString))
    {
      aa.d("MicroMsg.BizInfo", "field_extinfo is null.");
      return localf;
    }
    while (true)
    {
      try
      {
        JSONObject localJSONObject = new JSONObject(paramString);
        if (!localJSONObject.isNull("IsShowHeadImgInMsg"))
          localf.cnj = localJSONObject.getString("IsShowHeadImgInMsg").equals("1");
        localf.cnm = "1".equals(localJSONObject.optString("CanReceiveSpeexVoice"));
        localf.cnk = "1".equals(localJSONObject.optString("IsHideInputToolbarInMsg"));
        localf.cnl = "1".equals(localJSONObject.optString("IsShowMember"));
        localf.cno = localJSONObject.optString("ConferenceContactExpireTime");
        localf.cnn = localJSONObject.optString("VerifyContactPromptTitle");
        localf.cnv = localJSONObject.optInt("ConnectorMsgType");
        if (localJSONObject.optInt("AudioPlayType", 0) == i)
        {
          j = i;
          localf.cnw = j;
          localf.cnA = localJSONObject.optInt("InteractiveMode");
          localf.cnx = localJSONObject.optInt("ScanQRCodeType", 0);
          String str = localJSONObject.optString("MMBizMenu");
          if (str != null)
            localf.cnr = g.eE(str);
          localf.cnq = i.eF(localJSONObject.optString("VerifySource"));
          localf.cnp = j.c(localJSONObject.optJSONArray("Privilege"));
          int k = cj.getInt(localJSONObject.optString("ReportLocationType"), 0);
          if (k <= 0)
            break label316;
          m = i;
          localf.cns = m;
          if (k != 2)
            break label322;
          n = i;
          localf.cnt = n;
          if (cj.getInt(localJSONObject.optString("NeedShowUserAddrObtaining"), 0) != i)
            break label328;
          localf.cnu = i;
          localf.cny = localJSONObject.optInt("ServiceType", 0);
          localf.cnz = localJSONObject.optString("SupportEmoticonLinkPrefix");
          return localf;
        }
      }
      catch (Exception localException)
      {
        return localf;
      }
      int j = 0;
      continue;
      label316: int m = 0;
      continue;
      label322: int n = 0;
      continue;
      label328: i = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.f
 * JD-Core Version:    0.6.2
 */