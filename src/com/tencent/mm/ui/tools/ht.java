package com.tencent.mm.ui.tools;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class ht
{
  private static final Pattern guD = Pattern.compile(".*#.*wechat_redirect");
  private String hnH = null;

  public ht(String paramString)
  {
    this.hnH = paramString;
  }

  public static boolean xN(String paramString)
  {
    if (cj.hX(paramString))
      return false;
    return guD.matcher(paramString).find();
  }

  public final int xM(String paramString)
  {
    if (cj.hX(paramString))
      aa.e("MicroMsg.WebViewUI", "getReason fail, url is null");
    while (paramString.equals(this.hnH))
      return 0;
    if (guD.matcher(paramString).find())
      return 2;
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ht
 * JD-Core Version:    0.6.2
 */