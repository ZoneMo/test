package com.tencent.mm.ui.tools;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import com.tencent.mm.pluginsdk.ui.applet.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.chatting.lm;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class el extends lm
{
  private int djZ = 0;
  private List gRr;
  private String hlP;
  private String hlQ;

  public el(Context paramContext)
  {
    super(paramContext, null);
  }

  private void a(String paramString, int paramInt, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    switch (paramInt)
    {
    default:
      return;
    case 25:
      a(paramString, paramOnDismissListener);
      return;
    case 24:
    }
    b(paramString, paramOnDismissListener);
  }

  public static boolean a(Context paramContext, String paramString, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    if ((paramString == null) || (paramString.length() == 0));
    while ((!paramString.endsWith("@mailto@")) && (!paramString.endsWith("@tel@")))
      return false;
    el localel = new el(paramContext);
    if ((paramString == null) || (paramString.length() == 0));
    while (true)
    {
      return true;
      if (paramString.endsWith("@mailto@"))
        localel.a(paramString.substring(0, -8 + paramString.length()), 24, paramOnDismissListener);
      else if (paramString.endsWith("@tel@"))
        localel.a(paramString.substring(0, -5 + paramString.length()), 25, paramOnDismissListener);
    }
  }

  public static boolean aH(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0));
    while ((!paramString.endsWith("@mailto@")) && (!paramString.endsWith("@tel@")))
      return false;
    return true;
  }

  private String c(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    if ((cj.hX(paramString1)) || (cj.hX(paramString2)) || (paramInt1 >= paramInt2))
      return paramString1;
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append(paramString1.subSequence(0, paramInt1 + this.djZ));
      localStringBuilder.append(paramString2);
      localStringBuilder.append(paramString1.subSequence(paramInt2 + this.djZ, paramString1.length()));
      this.djZ += paramString2.length() - (paramInt2 - paramInt1);
      String str = localStringBuilder.toString();
      return str;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.QRCodeSpanUtil", localException.getMessage());
    }
    return "";
  }

  public final String pX(String paramString)
  {
    this.hlP = paramString;
    this.hlQ = paramString;
    this.gRr = R(paramString, true);
    if (this.gRr.size() == 0)
      return this.hlQ;
    Collections.sort(this.gRr, new em(this));
    Iterator localIterator = this.gRr.iterator();
    if (localIterator.hasNext())
    {
      am localam = (am)localIterator.next();
      int i = localam.ehn;
      int j = localam.dKv;
      int k = localam.type;
      String str1 = null;
      label140: String str2;
      Object[] arrayOfObject2;
      switch (k)
      {
      default:
        if (str1 != null)
        {
          str2 = localam.foS;
          if ((localam.type != 1) || (str2.startsWith("http://")))
            break label271;
          arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = ("http://" + str2.trim());
          arrayOfObject2[1] = str2.trim();
        }
        break;
      case 25:
      case 24:
      case 1:
      }
      label271: Object[] arrayOfObject1;
      for (String str3 = String.format(str1, arrayOfObject2); ; str3 = String.format(str1, arrayOfObject1))
      {
        this.hlP = c(this.hlP, i, j, str3);
        if (this.hlP.length() != 0)
          break;
        return this.hlQ;
        str1 = "<a href=\"%s@tel@\">%s</a>";
        break label140;
        str1 = "<a href=\"%s@mailto@\">%s</a>";
        break label140;
        str1 = "<a href=\"%s\">%s</a>";
        break label140;
        break;
        arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = str2.trim();
        arrayOfObject1[1] = str2.trim();
      }
    }
    return this.hlP;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.el
 * JD-Core Version:    0.6.2
 */