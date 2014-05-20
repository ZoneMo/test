package com.tencent.mm.modelfriend;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.e;
import java.net.URLEncoder;
import java.util.List;
import org.apache.http.NameValuePair;

public final class ab
{
  public static boolean O(Context paramContext)
  {
    Intent localIntent1 = new Intent("com.google.android.gms.common.account.CHOOSE_ACCOUNT");
    Intent localIntent2 = new Intent("com.tencent.mm.gms.ACTION_CHOOSE_ACCOUNT");
    return (paramContext.getPackageManager().resolveActivity(localIntent2, 0) != null) && (paramContext.getPackageManager().resolveActivity(localIntent1, 0) != null) && (Build.VERSION.SDK_INT >= 8) && (!paramContext.getSharedPreferences(al.azs(), 0).getBoolean("googleauth", false));
  }

  public static String p(List paramList)
  {
    if (paramList == null)
    {
      aa.w("MicroMsg.GoogleContactLogic", "");
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramList.size();
    for (int j = 0; j < i; j++)
    {
      NameValuePair localNameValuePair = (NameValuePair)paramList.get(j);
      if (!TextUtils.isEmpty(localNameValuePair.getName()))
      {
        if (j != 0)
          localStringBuilder.append("&");
        localStringBuilder.append(URLEncoder.encode(localNameValuePair.getName(), "UTF-8"));
        localStringBuilder.append("=");
        if (!TextUtils.isEmpty(localNameValuePair.getValue()))
          localStringBuilder.append(URLEncoder.encode(localNameValuePair.getValue(), "UTF-8"));
      }
    }
    return localStringBuilder.toString();
  }

  public static boolean zy()
  {
    return !TextUtils.isEmpty((String)be.uz().sr().get(208903));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.ab
 * JD-Core Version:    0.6.2
 */