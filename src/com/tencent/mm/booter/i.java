package com.tencent.mm.booter;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import com.tencent.mm.h.b;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.xlog.LogLogicJni;
import com.tencent.mm.xlog.app.XLogSetup;
import java.util.HashMap;

public final class i
{
  private final String[] bZx = { "_id", "key", "type", "value" };
  private final HashMap bZy = new HashMap();

  public i(Context paramContext)
  {
    Cursor localCursor = paramContext.getContentResolver().query(b.CONTENT_URI, this.bZx, null, null, null);
    if (localCursor == null)
      return;
    if (localCursor.getCount() <= 0)
    {
      localCursor.close();
      return;
    }
    if (!"18c867f0717aa67b2ab7347505ba07ed".equals(cj.g("com.tencent.mm.coolassist", paramContext)))
    {
      localCursor.close();
      return;
    }
    int i = localCursor.getColumnIndex("key");
    int j = localCursor.getColumnIndex("type");
    int k = localCursor.getColumnIndex("value");
    while (localCursor.moveToNext())
    {
      Object localObject = j.b(localCursor.getInt(j), localCursor.getString(k));
      this.bZy.put(localCursor.getString(i), localObject);
    }
    localCursor.close();
  }

  private void aJ(String paramString)
  {
    Integer localInteger = getInteger(".com.tencent.mm.debug.log.level");
    boolean bool1 = cj.a(aK(".com.tencent.mm.debug.log.append_mode"), false);
    aa.lH(cj.a(localInteger, 2));
    if ((cj.hX(getString(".com.tencent.mm.debug.log.mmlog"))) && (cj.a(aK(".com.tencent.mm.debug.test.uploadLog"), false)));
    for (boolean bool2 = true; ; bool2 = false)
    {
      XLogSetup.keep_setupXLog(Integer.valueOf(a.fxr), com.tencent.mm.storage.h.ggz, localInteger, Boolean.valueOf(bool1), Boolean.valueOf(bool2), paramString, false);
      if (!"PUSH".equalsIgnoreCase(paramString))
        LogLogicJni.setErrLogOpen(false);
      return;
    }
  }

  private Integer getInteger(String paramString)
  {
    Object localObject = this.bZy.get(paramString);
    if ((localObject instanceof Integer))
    {
      aa.d("MicroMsg.Debugger", "getInteger(): key=" + paramString + ", value=" + localObject.toString());
      return (Integer)localObject;
    }
    return null;
  }

  public final Boolean aK(String paramString)
  {
    Object localObject = this.bZy.get(paramString);
    if (localObject == null)
      return null;
    if ((localObject instanceof Boolean))
    {
      aa.d("MicroMsg.Debugger", "getBoolean(): key=" + paramString + ", value=" + localObject.toString());
      return (Boolean)localObject;
    }
    return null;
  }

  public final String getString(String paramString)
  {
    Object localObject = this.bZy.get(paramString);
    if ((localObject instanceof String))
    {
      aa.d("MicroMsg.Debugger", "getString(): key=" + paramString + ", value=" + localObject.toString());
      return (String)localObject;
    }
    return null;
  }

  public final void ol()
  {
    aJ("MM");
    at.cHa = cj.a(aK(".com.tencent.mm.debug.test.display_errcode"), false);
    at.cHb = cj.a(aK(".com.tencent.mm.debug.test.display_msgstate"), false);
    at.cHc = cj.a(aK(".com.tencent.mm.debug.test.network.simulate_fault"), false);
    at.cHd = cj.a(aK(".com.tencent.mm.debug.test.network.force_touch"), false);
    at.cHe = cj.a(aK(".com.tencent.mm.debug.test.outputToSdCardlog"), false);
    at.cHf = cj.a(aK(".com.tencent.mm.debug.test.crashIsExit"), false);
    at.cHC = cj.getInt(cj.R(getString(".com.tencent.mm.debug.datatransfer.times"), "0"), 0);
    at.cHD = cj.getInt(cj.R(getString(".com.tencent.mm.debug.datatransfer.duration"), "0"), 0);
    at.cHh = cj.a(aK(".com.tencent.mm.debug.test.album_drop_table"), false);
    at.cHi = cj.a(aK(".com.tencent.mm.debug.test.album_dle_file"), false);
    at.cHj = cj.a(aK(".com.tencent.mm.debug.test.album_show_info"), false);
    at.cHk = cj.a(aK(".com.tencent.mm.debug.test.location_help"), false);
    at.cHm = cj.a(aK(".com.tencent.mm.debug.test.force_soso"), false);
    at.cHn = cj.a(aK(".com.tencent.mm.debug.test.simulatePostServerError"), false);
    at.cHo = cj.a(aK(".com.tencent.mm.debug.test.simulateUploadServerError"), false);
    at.cHp = cj.a(aK(".com.tencent.mm.debug.test.snsNotwirteThumb"), false);
    at.cHs = cj.a(aK(".com.tencent.mm.debug.test.filterfpnp"), false);
    at.cHt = cj.a(aK(".com.tencent.mm.debug.test.testForPull"), false);
    int i = cj.a(getInteger(".com.tencent.mm.debug.test.cdnDownloadThread"), 0);
    at.cHq = i;
    if ((i != 4) && (at.cHq > 0))
    {
      com.tencent.mm.storage.g.ggs = at.cHq;
      aa.e("MicroMsg.Debugger", "cdn thread num " + at.cHq);
    }
    at.cHr = cj.a(aK(".com.tencent.mm.debug.test.logShowSnsItemXml"), false);
    at.cHu = cj.R(getString(".com.tencent.mm.debug.server.host.http"), "");
    at.cHv = cj.R(getString(".com.tencent.mm.debug.server.host.socket"), "");
    if (cj.a(aK(".com.tencent.mm.debug.test.show_full_version"), false))
      com.tencent.mm.sdk.platformtools.j.gco = true;
    try
    {
      int j = Integer.decode(getString(".com.tencent.mm.debug.log.setversion")).intValue();
      a.lg(j);
      new StringBuilder("set up test protocal version = ").append(Integer.toHexString(j)).toString();
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          boolean bool1 = cj.a(aK(".com.tencent.mm.debug.report.debugmodel"), false);
          boolean bool2 = cj.a(aK(".com.tencent.mm.debug.report.kvstat"), false);
          boolean bool3 = cj.a(aK(".com.tencent.mm.debug.report.clientpref"), false);
          boolean bool4 = cj.a(aK(".com.tencent.mm.debug.report.useraction"), false);
          com.tencent.mm.plugin.d.a.h.a(bool1, bool2, bool3, bool4);
          new StringBuilder("try control report : debugModel[").append(bool1).append("],kv[").append(bool2).append("], clientPref[").append(bool3).append("], useraction[").append(bool4).append("]").toString();
          at.cHy = cj.a(aK(".com.tencent.mm.debug.test.update_test"), false);
          at.cHz = cj.a(aK(".com.tencent.mm.debug.test.scan_save_image"), false);
          at.cHB = cj.a(aK(".com.tencent.mm.debug.test.shake_get_config_list"), false);
          at.cHF = cj.R(getString(".com.tencent.mm.debug.jsapi.permission"), "");
          aa.d("MicroMsg.Debugger", "Test.jsapiPermission = " + at.cHF);
          return;
          localException1 = localException1;
          aa.i("MicroMsg.Debugger", "no debugger was got");
        }
      }
      catch (Exception localException2)
      {
        while (true)
          aa.i("MicroMsg.Debugger", "no debugger was got");
      }
    }
  }

  public final void om()
  {
    aJ("PUSH");
    at.cHa = cj.a(aK(".com.tencent.mm.debug.test.display_errcode"), false);
    at.cHb = cj.a(aK(".com.tencent.mm.debug.test.display_msgstate"), false);
    at.cHc = cj.a(aK(".com.tencent.mm.debug.test.network.simulate_fault"), false);
    at.cHd = cj.a(aK(".com.tencent.mm.debug.test.network.force_touch"), false);
    at.cHe = cj.a(aK(".com.tencent.mm.debug.test.outputToSdCardlog"), false);
    at.cHf = cj.a(aK(".com.tencent.mm.debug.test.crashIsExit"), false);
    at.cHj = cj.a(aK(".com.tencent.mm.debug.test.album_show_info"), false);
    at.cHk = cj.a(aK(".com.tencent.mm.debug.test.location_help"), false);
    at.cHm = cj.a(aK(".com.tencent.mm.debug.test.force_soso"), false);
    at.cHn = cj.a(aK(".com.tencent.mm.debug.test.simulatePostServerError"), false);
    at.cHo = cj.a(aK(".com.tencent.mm.debug.test.simulateUploadServerError"), false);
    at.cHp = cj.a(aK(".com.tencent.mm.debug.test.snsNotwirteThumb"), false);
    at.cHs = cj.a(aK(".com.tencent.mm.debug.test.filterfpnp"), false);
    at.cHt = cj.a(aK(".com.tencent.mm.debug.test.testForPull"), false);
    int i = cj.a(getInteger(".com.tencent.mm.debug.test.cdnDownloadThread"), 0);
    at.cHq = i;
    if ((i != 4) && (at.cHq > 0))
    {
      com.tencent.mm.storage.g.ggs = at.cHq;
      aa.e("MicroMsg.Debugger", "cdn thread num " + at.cHq);
    }
    at.cHr = cj.a(aK(".com.tencent.mm.debug.test.logShowSnsItemXml"), false);
    at.cHw = cj.a(aK(".com.tencent.mm.debug.test.skip_getdns"), false);
    try
    {
      int j = Integer.decode(getString(".com.tencent.mm.debug.log.setversion")).intValue();
      a.lg(j);
      new StringBuilder("set up test protocal version = ").append(Integer.toHexString(j)).toString();
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          boolean bool1 = cj.a(aK(".com.tencent.mm.debug.report.debugmodel"), false);
          boolean bool2 = cj.a(aK(".com.tencent.mm.debug.report.kvstat"), false);
          boolean bool3 = cj.a(aK(".com.tencent.mm.debug.report.clientpref"), false);
          boolean bool4 = cj.a(aK(".com.tencent.mm.debug.report.useraction"), false);
          com.tencent.mm.plugin.d.a.h.a(bool1, bool2, bool3, bool4);
          new StringBuilder("try control report : debugModel[").append(bool1).append("],kv[").append(bool2).append("], clientPref[").append(bool3).append("], useraction[").append(bool4).append("]").toString();
          return;
          localException1 = localException1;
          aa.i("MicroMsg.Debugger", "no debugger was got");
        }
      }
      catch (Exception localException2)
      {
        aa.i("MicroMsg.Debugger", "no debugger was got");
      }
    }
  }

  public final void on()
  {
    aJ("TOOL");
    at.cHa = cj.a(aK(".com.tencent.mm.debug.test.display_errcode"), false);
    at.cHb = cj.a(aK(".com.tencent.mm.debug.test.display_msgstate"), false);
    at.cHc = cj.a(aK(".com.tencent.mm.debug.test.network.simulate_fault"), false);
    at.cHd = cj.a(aK(".com.tencent.mm.debug.test.network.force_touch"), false);
    at.cHe = cj.a(aK(".com.tencent.mm.debug.test.outputToSdCardlog"), false);
    at.cHf = cj.a(aK(".com.tencent.mm.debug.test.crashIsExit"), false);
    at.cHj = cj.a(aK(".com.tencent.mm.debug.test.album_show_info"), false);
    at.cHk = cj.a(aK(".com.tencent.mm.debug.test.location_help"), false);
    at.cHm = cj.a(aK(".com.tencent.mm.debug.test.force_soso"), false);
    at.cHn = cj.a(aK(".com.tencent.mm.debug.test.simulatePostServerError"), false);
    at.cHo = cj.a(aK(".com.tencent.mm.debug.test.simulateUploadServerError"), false);
    at.cHp = cj.a(aK(".com.tencent.mm.debug.test.snsNotwirteThumb"), false);
    at.cHs = cj.a(aK(".com.tencent.mm.debug.test.filterfpnp"), false);
    at.cHt = cj.a(aK(".com.tencent.mm.debug.test.testForPull"), false);
    int i = cj.a(getInteger(".com.tencent.mm.debug.test.cdnDownloadThread"), 0);
    at.cHq = i;
    if ((i != 4) && (at.cHq > 0))
    {
      com.tencent.mm.storage.g.ggs = at.cHq;
      aa.e("MicroMsg.Debugger", "cdn thread num " + at.cHq);
    }
    at.cHr = cj.a(aK(".com.tencent.mm.debug.test.logShowSnsItemXml"), false);
    try
    {
      int j = Integer.decode(getString(".com.tencent.mm.debug.log.setversion")).intValue();
      a.lg(j);
      new StringBuilder("set up test protocal version = ").append(Integer.toHexString(j)).toString();
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          boolean bool1 = cj.a(aK(".com.tencent.mm.debug.report.debugmodel"), false);
          boolean bool2 = cj.a(aK(".com.tencent.mm.debug.report.kvstat"), false);
          boolean bool3 = cj.a(aK(".com.tencent.mm.debug.report.clientpref"), false);
          boolean bool4 = cj.a(aK(".com.tencent.mm.debug.report.useraction"), false);
          com.tencent.mm.plugin.d.a.h.a(bool1, bool2, bool3, bool4);
          new StringBuilder("try control report : debugModel[").append(bool1).append("],kv[").append(bool2).append("], clientPref[").append(bool3).append("], useraction[").append(bool4).append("]").toString();
          at.cHF = cj.R(getString(".com.tencent.mm.debug.jsapi.permission"), "");
          aa.d("MicroMsg.Debugger", "Test.jsapiPermission = " + at.cHF);
          at.cHG = cj.R(getString(".com.tencent.mm.debug.generalcontrol.permission"), "");
          aa.d("MicroMsg.Debugger", "Test.generalCtrl = " + at.cHG);
          at.cHH = cj.a(aK(".com.tencent.mm.debug.skiploadurlcheck"), false);
          aa.d("MicroMsg.Debugger", "Test.skipLoadUrlCheck = " + at.cHH);
          return;
          localException1 = localException1;
          aa.i("MicroMsg.Debugger", "no debugger was got");
        }
      }
      catch (Exception localException2)
      {
        while (true)
          aa.i("MicroMsg.Debugger", "no debugger was got");
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.i
 * JD-Core Version:    0.6.2
 */