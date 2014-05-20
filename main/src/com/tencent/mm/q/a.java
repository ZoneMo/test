package com.tencent.mm.q;

import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.cj;

public final class a
{
  private static int cow = 0;
  private static int cox = 0;
  private static String coy;

  public static String a(b paramb)
  {
    if (paramb == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder("");
    localStringBuilder.append(cj.hW(paramb.coI));
    localStringBuilder.append("\n-------------------\n");
    localStringBuilder.append(cj.hW(paramb.coF));
    localStringBuilder.append("\n-------------------\n");
    localStringBuilder.append(cj.hW(paramb.coC));
    return localStringBuilder.toString();
  }

  public static String a(String paramString1, String paramString2, b paramb, String paramString3)
  {
    if (!cj.hX(paramb.coI))
    {
      String str3 = g(paramb.coA, paramb.coB, paramb.coC) + h(paramb.coG, paramb.coH, paramb.coI) + h("", paramString1, paramString3);
      return b(paramString1, paramString2, paramb.coH, str3);
    }
    if (!cj.hX(paramb.coF))
    {
      String str2 = g(paramb.coA, paramb.coB, paramb.coC) + h(paramb.coD, paramb.coE, paramb.coF) + h("", paramString1, paramString3);
      return b(paramString1, paramString2, paramb.coE, str2);
    }
    if (!cj.hX(paramb.coC))
    {
      String str1 = g(paramb.coA, paramb.coB, paramb.coC) + h("", paramString1, paramString3);
      return b(paramString1, paramString2, paramb.coB, str1);
    }
    return "";
  }

  public static String b(b paramb)
  {
    StringBuilder localStringBuilder = new StringBuilder("");
    if (!v.cm(paramb.cgI))
    {
      localStringBuilder.append(paramb.coz);
      localStringBuilder.append(": ");
    }
    String str;
    if (cj.hX(paramb.coI))
      if (cj.hX(paramb.coF))
        str = paramb.coC;
    while (true)
    {
      localStringBuilder.append(str);
      return localStringBuilder.toString();
      str = paramb.coF;
      continue;
      str = paramb.coI;
    }
  }

  private static String b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return String.format("<qamsg fromUser=\"%s\" fromNickname=\"%s\" toUser=\"%s\">%s</qamsg>", new Object[] { paramString1, paramString2, paramString3, paramString4 });
  }

  public static void eR(String paramString)
  {
    coy = paramString;
  }

  private static String g(String paramString1, String paramString2, String paramString3)
  {
    return String.format("<question id=\"%s\" fromUser=\"%s\"><content>%s</content></question>", new Object[] { paramString1, paramString2, paramString3 });
  }

  private static String h(String paramString1, String paramString2, String paramString3)
  {
    return String.format("<answer id=\"%s\" fromUser=\"%s\"><content>%s</content></answer>", new Object[] { paramString1, paramString2, paramString3 });
  }

  public static String i(String paramString1, String paramString2, String paramString3)
  {
    return String.format("<qamsg fromUser=\"%s\" fromNickname=\"%s\">%s</qamsg>", new Object[] { paramString1, paramString2, g("", paramString1, paramString3) });
  }

  public static int yk()
  {
    return cow;
  }

  public static void yl()
  {
    cow = 0;
  }

  public static int ym()
  {
    return cox;
  }

  public static void yn()
  {
    cox = 0;
  }

  public static void yo()
  {
    cow = -1 + cow;
  }

  public static void yp()
  {
    cox = -1 + cox;
  }

  public static String yq()
  {
    return coy;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.q.a
 * JD-Core Version:    0.6.2
 */