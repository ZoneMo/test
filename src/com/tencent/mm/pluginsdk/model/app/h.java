package com.tencent.mm.pluginsdk.model.app;

import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;
import java.util.Map;

public final class h
{
  private List fhf = null;
  private List fhg = null;
  private Map fhh = null;
  private ay fhi = new ay(new i(this), false);
  private Handler handler = new j(this);

  public h()
  {
    this.fhi.bO(600000L);
  }

  private boolean a(v paramv)
  {
    if (paramv == null)
    {
      aa.e("MicroMsg.AppIconService", "startDownload fail, geticoninfo is null");
      return false;
    }
    int i;
    if (paramv == null)
    {
      aa.e("MicroMsg.AppIconService", "increaseCounter fail, info is null");
      i = 0;
    }
    while (i == 0)
    {
      aa.e("MicroMsg.AppIconService", "increaseCounter fail");
      return false;
      Integer localInteger = Integer.valueOf(cj.a((Integer)this.fhh.get(paramv.toString()), 0));
      if (localInteger.intValue() >= 5)
      {
        aa.e("MicroMsg.AppIconService", "increaseCounter fail, has reached the max try count");
        i = 0;
      }
      else
      {
        this.fhh.put(paramv.toString(), Integer.valueOf(1 + localInteger.intValue()));
        i = 1;
      }
    }
    k localk = ba.HE().qo(paramv.appId);
    if (localk == null)
    {
      aa.e("MicroMsg.AppIconService", "push, appinfo does not exist, appId = " + paramv.appId);
      return false;
    }
    String str;
    switch (paramv.cZr)
    {
    default:
      aa.e("MicroMsg.AppIconService", "push, unknown iconType = " + paramv.cZr);
      return false;
    case 1:
      if ((localk.field_appIconUrl == null) || (localk.field_appIconUrl.length() == 0))
      {
        aa.e("MicroMsg.AppIconService", "push, appIconUrl is null, appId = " + paramv.appId);
        return false;
      }
      str = localk.field_appIconUrl;
    case 2:
    case 3:
    }
    while (true)
    {
      new w(this.handler, paramv.appId, paramv.cZr, str).start();
      return true;
      if ((localk.field_appWatermarkUrl == null) || (localk.field_appWatermarkUrl.length() == 0))
      {
        aa.e("MicroMsg.AppIconService", "push, appWatermarkUrl is null, appId = " + paramv.appId);
        return false;
      }
      str = localk.field_appWatermarkUrl;
      continue;
      if ((localk.bSJ == null) || (localk.bSJ.length() == 0))
      {
        aa.e("MicroMsg.AppIconService", "push, appSuggestionIconUrl is null, appId = " + paramv.appId);
        return false;
      }
      str = localk.bSJ;
    }
  }

  public final void Y(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramString.length() == 0))
      aa.e("MicroMsg.AppIconService", "push fail, appId is null");
    v localv;
    do
    {
      do
      {
        return;
        localv = new v(paramString, paramInt);
        if (this.fhf.contains(localv))
        {
          aa.i("MicroMsg.AppIconService", "push, appId = " + paramString + ", iconType = " + paramInt + " already in running list");
          return;
        }
        if (this.fhf.size() < 5)
          break;
        aa.i("MicroMsg.AppIconService", "running list has reached the max count");
      }
      while (this.fhg.contains(localv));
      this.fhg.add(localv);
      return;
    }
    while (!a(localv));
    this.fhf.add(localv);
  }

  public final void clear()
  {
    this.fhf.clear();
    this.fhg.clear();
    this.fhh.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.h
 * JD-Core Version:    0.6.2
 */