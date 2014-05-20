package com.tencent.mm.ao;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import com.tencent.mm.compatible.g.n;
import com.tencent.mm.g;
import com.tencent.mm.sdk.platformtools.cj;

public final class b
{
  private static final com.tencent.mm.a.d gfW = new com.tencent.mm.a.d(500);
  private static final com.tencent.mm.a.d gfX = new com.tencent.mm.a.d(500);

  public static SpannableString a(Context paramContext, String paramString1, int paramInt, String paramString2)
  {
    SpannableString localSpannableString1;
    if ((paramString1 == null) || (paramString1.equals("")))
      localSpannableString1 = new SpannableString("");
    String str1;
    String str2;
    label92: 
    do
    {
      return localSpannableString1;
      if (!cj.hX(paramString2))
        break;
      str1 = paramString1 + "@" + paramInt;
      str2 = n.l(paramString1).toString();
      switch (paramInt)
      {
      default:
        localSpannableString1 = (SpannableString)gfW.get(str1);
      case -1:
      case -2:
      }
    }
    while (localSpannableString1 != null);
    SpannableString localSpannableString2 = new SpannableString(a.ti(str2));
    boolean bool1 = d.b(paramContext, localSpannableString2, paramInt);
    boolean bool2 = a.b(paramContext, localSpannableString2, paramInt);
    if ((bool1) || (bool2));
    for (boolean bool3 = true; ; bool3 = false)
    {
      gfX.f(str1, Boolean.valueOf(bool3));
      gfW.f(str1, localSpannableString2);
      return localSpannableString2;
      str1 = paramString2 + "@" + paramInt;
      break;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaK);
      break label92;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaO);
      break label92;
    }
  }

  public static SpannableString a(Context paramContext, String paramString, int paramInt, boolean paramBoolean)
  {
    SpannableString localSpannableString1;
    if ((paramString == null) || (paramString.equals("")))
      localSpannableString1 = new SpannableString("");
    String str1;
    String str2;
    do
    {
      return localSpannableString1;
      if (paramBoolean)
        paramString = n.l(paramString).toString();
      switch (paramInt)
      {
      default:
        str1 = paramString + "@" + paramInt;
        str2 = a.ti(paramString);
        localSpannableString1 = (SpannableString)gfW.get(str1);
      case -1:
      case -2:
      }
    }
    while (localSpannableString1 != null);
    SpannableString localSpannableString2 = new SpannableString(str2);
    boolean bool1 = d.b(paramContext, localSpannableString2, paramInt);
    boolean bool2 = a.b(paramContext, localSpannableString2, paramInt);
    if ((bool1) || (bool2));
    for (boolean bool3 = true; ; bool3 = false)
    {
      gfX.f(str1, Boolean.valueOf(bool3));
      gfW.f(str1, localSpannableString2);
      return localSpannableString2;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaK);
      break;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaO);
      break;
    }
  }

  public static SpannableString b(Context paramContext, String paramString, int paramInt, boolean paramBoolean)
  {
    SpannableString localSpannableString1;
    if ((paramString == null) || (paramString.equals("")))
      localSpannableString1 = new SpannableString("");
    String str1;
    String str2;
    do
    {
      return localSpannableString1;
      if (paramBoolean)
        paramString = n.l(paramString).toString();
      switch (paramInt)
      {
      default:
        str1 = paramString + "@" + paramInt;
        str2 = a.ti(paramString);
        localSpannableString1 = (SpannableString)gfW.get(str1);
      case -1:
      case -2:
      }
    }
    while (localSpannableString1 != null);
    SpannableString localSpannableString2 = new SpannableString(str2);
    boolean bool1 = d.b(paramContext, localSpannableString2, paramInt);
    boolean bool2 = a.b(paramContext, localSpannableString2, paramInt);
    if ((bool1) || (bool2));
    for (boolean bool3 = true; ; bool3 = false)
    {
      gfX.f(str1, Boolean.valueOf(bool3));
      gfW.f(str1, localSpannableString2);
      return localSpannableString2;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaK);
      break;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaO);
      break;
    }
  }

  public static SpannableString c(Context paramContext, String paramString, int paramInt)
  {
    return a(paramContext, paramString, paramInt, true);
  }

  public static CharSequence d(Context paramContext, String paramString, int paramInt)
  {
    Object localObject;
    if ((paramString == null) || (paramString.equals("")))
      localObject = new String("");
    String str2;
    String str3;
    do
    {
      return localObject;
      String str1 = tk(paramString);
      switch (paramInt)
      {
      default:
      case -1:
      case -2:
      }
      while (true)
      {
        str2 = str1 + "@" + paramInt;
        str3 = a.ti(str1);
        Boolean localBoolean = (Boolean)gfX.get(str2);
        if ((localBoolean == null) || (localBoolean.booleanValue()))
          break;
        return str3;
        paramInt = paramContext.getResources().getDimensionPixelSize(g.aaK);
        continue;
        paramInt = paramContext.getResources().getDimensionPixelSize(g.aaO);
      }
      localObject = (SpannableString)gfW.get(str2);
    }
    while (localObject != null);
    SpannableString localSpannableString = new SpannableString(str3);
    boolean bool1 = d.b(paramContext, localSpannableString, paramInt);
    boolean bool2 = a.b(paramContext, localSpannableString, paramInt);
    if ((bool1) || (bool2));
    for (boolean bool3 = true; ; bool3 = false)
    {
      gfX.f(str2, Boolean.valueOf(bool3));
      gfW.f(str2, localSpannableString);
      if (!bool3)
        break;
      return localSpannableString;
    }
    return str3;
  }

  public static SpannableString e(Context paramContext, String paramString, int paramInt)
  {
    SpannableString localSpannableString1;
    if ((paramString == null) || (paramString.equals("")))
    {
      localSpannableString1 = new SpannableString("");
      return localSpannableString1;
    }
    String str1 = n.l(paramString).toString();
    switch (paramInt)
    {
    default:
    case -1:
    case -2:
    }
    while (true)
    {
      String str2 = str1 + "@" + paramInt;
      String str3 = a.ti(str1);
      localSpannableString1 = (SpannableString)gfW.get(str2);
      if (localSpannableString1 != null)
        break;
      SpannableString localSpannableString2 = new SpannableString(str3);
      boolean bool = a.b(paramContext, localSpannableString2, paramInt);
      gfX.f(str2, Boolean.valueOf(bool));
      gfW.f(str2, localSpannableString2);
      return localSpannableString2;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaK);
      continue;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaO);
    }
  }

  public static CharSequence f(Context paramContext, String paramString, int paramInt)
  {
    SpannableString localSpannableString;
    if ((paramString == null) || (paramString.equals("")))
      localSpannableString = new SpannableString("");
    String str3;
    boolean bool;
    do
    {
      String str2;
      do
      {
        return localSpannableString;
        String str1 = n.l(paramString).toString();
        switch (paramInt)
        {
        default:
        case -1:
        case -2:
        }
        while (true)
        {
          str2 = str1 + "@" + paramInt;
          str3 = a.ti(str1);
          Boolean localBoolean = (Boolean)gfX.get(str2);
          if ((localBoolean == null) || (localBoolean.booleanValue()))
            break;
          return str3;
          paramInt = paramContext.getResources().getDimensionPixelSize(g.aaK);
          continue;
          paramInt = paramContext.getResources().getDimensionPixelSize(g.aaO);
        }
        localSpannableString = (SpannableString)gfW.get(str2);
      }
      while (localSpannableString != null);
      localSpannableString = new SpannableString(str3);
      bool = a.b(paramContext, localSpannableString, paramInt);
      gfX.f(str2, Boolean.valueOf(bool));
      gfW.f(str2, localSpannableString);
    }
    while (bool);
    return str3;
  }

  public static SpannableString g(Context paramContext, String paramString, int paramInt)
  {
    SpannableString localSpannableString1;
    if ((paramString == null) || (paramString.equals("")))
    {
      localSpannableString1 = new SpannableString("");
      return localSpannableString1;
    }
    String str1 = n.l(paramString).toString();
    switch (paramInt)
    {
    default:
    case -1:
    case -2:
    }
    while (true)
    {
      String str2 = str1 + "@" + paramInt;
      String str3 = a.ti(str1);
      localSpannableString1 = (SpannableString)gfW.get(str2);
      if (localSpannableString1 != null)
        break;
      SpannableString localSpannableString2 = new SpannableString(str3);
      a.a(paramContext, localSpannableString2, paramInt);
      gfW.f(str2, localSpannableString2);
      return localSpannableString2;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaK);
      continue;
      paramInt = paramContext.getResources().getDimensionPixelSize(g.aaO);
    }
  }

  public static void release()
  {
    gfW.clear();
  }

  private static String tk(String paramString)
  {
    int i = paramString.length();
    for (int j = 0; (j < i) && (paramString.charAt(j) == '\n'); j++);
    if (j > 0)
      paramString = paramString.substring(j);
    return paramString.replace('\n', ' ');
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ao.b
 * JD-Core Version:    0.6.2
 */