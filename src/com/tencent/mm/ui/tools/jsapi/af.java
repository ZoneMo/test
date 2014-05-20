package com.tencent.mm.ui.tools.jsapi;

import com.tencent.mm.c.a.er;
import com.tencent.mm.c.a.et;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;

final class af
  implements Runnable
{
  af(p paramp, er paramer, String paramString)
  {
  }

  public final void run()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.dFm.bPt.bLJ);
    arrayOfObject[1] = Boolean.valueOf(this.dFm.bPt.bPu);
    aa.e("MicroMsg.MsgHandler", "JSOAUTH errCode[%s], isAccept[%s]", arrayOfObject);
    if (this.dFm.bPt.bLJ == -119)
      return;
    if (this.dFm.bPt.bLJ != 0)
    {
      p.a(this.hpx, p.b(this.hpx), this.hpI + "fail", null);
      return;
    }
    if (!this.dFm.bPt.bPu)
    {
      p.a(this.hpx, p.b(this.hpx), this.hpI + "cancel", null);
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("nationalCode", this.dFm.bPt.bPv);
    localHashMap.put("userName", this.dFm.bPt.bPx);
    localHashMap.put("telNumber", this.dFm.bPt.bPw);
    localHashMap.put("addressPostalCode", this.dFm.bPt.bPy);
    localHashMap.put("proviceFirstStageName", this.dFm.bPt.bPz);
    localHashMap.put("addressCitySecondStageName", this.dFm.bPt.bPA);
    localHashMap.put("addressCountiesThirdStageName", this.dFm.bPt.bPB);
    localHashMap.put("addressDetailInfo", this.dFm.bPt.bPC);
    p.a(this.hpx, p.b(this.hpx), this.hpI + "ok", localHashMap);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.af
 * JD-Core Version:    0.6.2
 */