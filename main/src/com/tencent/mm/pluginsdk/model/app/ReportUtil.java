package com.tencent.mm.pluginsdk.model.app;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.mm.sdk.a.a;
import com.tencent.mm.sdk.a.b;
import com.tencent.mm.sdk.modelmsg.j;

public final class ReportUtil
{
  public static ReportUtil.ReportArgs a(Bundle paramBundle, int paramInt)
  {
    String str1 = paramBundle.getString("SendAppMessageWrapper_AppId");
    if (str1 == null)
    {
      String str2 = paramBundle.getString("_mmessage_content");
      if (str2 != null)
        str1 = Uri.parse(str2).getQueryParameter("appid");
    }
    if (str1 == null)
      return null;
    k localk = new k();
    localk.field_appId = str1;
    ba.HE().c(localk, new String[0]);
    ReportUtil.ReportArgs localReportArgs = new ReportUtil.ReportArgs();
    localReportArgs.bMO = localk.field_packageName;
    localReportArgs.bLJ = paramInt;
    j localj = new j();
    localj.i(paramBundle);
    localReportArgs.fhS = localj.fhS;
    localReportArgs.cOp = localk.field_openId;
    return localReportArgs;
  }

  public static void a(Context paramContext, ReportUtil.ReportArgs paramReportArgs)
  {
    com.tencent.mm.sdk.modelmsg.k localk = new com.tencent.mm.sdk.modelmsg.k();
    localk.bLJ = paramReportArgs.bLJ;
    localk.fhS = paramReportArgs.fhS;
    localk.cOp = paramReportArgs.cOp;
    Bundle localBundle = new Bundle();
    localk.h(localBundle);
    u.s(localBundle);
    b localb = new b();
    localb.gbQ = paramReportArgs.bMO;
    localb.gbS = localBundle;
    a.a(paramContext, localb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ReportUtil
 * JD-Core Version:    0.6.2
 */