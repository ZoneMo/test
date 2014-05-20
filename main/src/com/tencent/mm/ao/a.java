package com.tencent.mm.ao;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import com.tencent.mm.c;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import java.util.HashMap;

public final class a
{
  private static a gfP = null;
  private String[] gfQ;
  private String[] gfR;
  private String[] gfS;
  private String[] gfT;
  private HashMap gfU = new HashMap();
  private int[] gfV;

  private a(Context paramContext)
  {
    this.gfQ = paramContext.getResources().getStringArray(c.YY);
    this.gfR = paramContext.getResources().getStringArray(c.Za);
    this.gfT = paramContext.getResources().getStringArray(c.Zb);
    this.gfS = paramContext.getResources().getStringArray(c.Zc);
    String[] arrayOfString = paramContext.getResources().getStringArray(c.YZ);
    this.gfV = new int[arrayOfString.length];
    for (int i = 0; i < arrayOfString.length; i++)
    {
      this.gfV[i] = Integer.parseInt(arrayOfString[i]);
      this.gfU.put(Integer.valueOf(this.gfV[i]), Integer.valueOf(i));
    }
  }

  public static SpannableString a(Context paramContext, SpannableString paramSpannableString, int paramInt)
  {
    if ((paramSpannableString == null) || (paramSpannableString.length() == 0));
    while (true)
    {
      return paramSpannableString;
      char[] arrayOfChar = paramSpannableString.toString().toCharArray();
      for (int i = 0; i < arrayOfChar.length; i++)
      {
        int j = o(arrayOfChar[i]);
        if (j != -1)
        {
          Drawable localDrawable = s(paramContext, j);
          if (localDrawable != null)
          {
            localDrawable.setBounds(0, 0, (int)(1.3D * paramInt), (int)(1.3D * paramInt));
            paramSpannableString.setSpan(new ImageSpan(localDrawable, 0), i, i + 1, 33);
          }
        }
      }
    }
  }

  public static String aj(Context paramContext, String paramString)
  {
    int i = 0;
    if (cj.hX(paramString))
      return "";
    StringBuffer localStringBuffer = new StringBuffer();
    char[] arrayOfChar = paramString.toCharArray();
    HashMap localHashMap = bG(paramContext).gfU;
    String str = z.a(paramContext.getSharedPreferences(al.azs(), 0));
    String[] arrayOfString;
    if (str.equals("zh_CN"))
    {
      arrayOfString = bG(paramContext).gfR;
      int j = arrayOfString.length;
      label72: if (i >= arrayOfChar.length)
        break label212;
      int k = o(arrayOfChar[i]);
      if ((k == -1) || (!localHashMap.containsKey(Integer.valueOf(k))))
        break label200;
      int m = ((Integer)localHashMap.get(Integer.valueOf(k))).intValue();
      if (m >= j)
        break label200;
      localStringBuffer.append(arrayOfString[m]);
    }
    while (true)
    {
      i++;
      break label72;
      if ((str.equals("zh_TW")) || (str.equals("zh_HK")))
      {
        arrayOfString = bG(paramContext).gfS;
        break;
      }
      str.equals("en");
      arrayOfString = bG(paramContext).gfT;
      break;
      label200: localStringBuffer.append(arrayOfChar[i]);
    }
    label212: return ti(localStringBuffer.toString());
  }

  public static boolean b(Context paramContext, SpannableString paramSpannableString, int paramInt)
  {
    boolean bool;
    if ((paramSpannableString == null) || (paramSpannableString.length() == 0))
      bool = false;
    while (true)
    {
      return bool;
      char[] arrayOfChar = paramSpannableString.toString().toCharArray();
      int i = 0;
      bool = false;
      while (i < arrayOfChar.length)
      {
        int j = o(arrayOfChar[i]);
        if (j != -1)
        {
          Drawable localDrawable = s(paramContext, j);
          if (localDrawable != null)
          {
            localDrawable.setBounds(0, 0, (int)(1.3D * paramInt), (int)(1.3D * paramInt));
            paramSpannableString.setSpan(new ImageSpan(localDrawable, 0), i, i + 1, 33);
            bool = true;
          }
        }
        i++;
      }
    }
  }

  private static a bG(Context paramContext)
  {
    if (gfP == null)
      gfP = new a(paramContext);
    return gfP;
  }

  private static int o(char paramChar)
  {
    if ((paramChar < 57345) || (paramChar > 58679));
    do
    {
      return -1;
      if ((paramChar >= 57345) && (paramChar <= 57434))
        return paramChar - 57345;
      if ((paramChar >= 57601) && (paramChar <= 57690))
        return paramChar + 'Z' - 57601;
      if ((paramChar >= 57857) && (paramChar <= 57939))
        return paramChar + '´' - 57857;
      if ((paramChar >= 58113) && (paramChar <= 58189))
        return paramChar + 'ć' - 58113;
      if ((paramChar >= 58369) && (paramChar <= 58444))
        return paramChar + 'Ŕ' - 58369;
    }
    while ((paramChar < 58625) || (paramChar > 58679));
    return paramChar + 'Ơ' - 58625;
  }

  public static Drawable s(Context paramContext, int paramInt)
  {
    if (paramContext == null);
    int i;
    do
    {
      return null;
      i = paramContext.getResources().getIdentifier("emoji_" + paramInt, "drawable", paramContext.getPackageName());
    }
    while (i == 0);
    return paramContext.getResources().getDrawable(i);
  }

  public static String ti(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return paramString;
    while (true)
    {
      int i;
      try
      {
        char[] arrayOfChar = paramString.toString().toCharArray();
        i = 0;
        if (i + 1 < arrayOfChar.length)
        {
          int j = arrayOfChar[i];
          int k = arrayOfChar[(i + 1)];
          if (j == 55356)
          {
            if ((k >= 56324) && (k <= 57320))
            {
              arrayOfChar[i] = '.';
              arrayOfChar[(i + 1)] = '.';
              i++;
            }
          }
          else if ((j == 55357) && (k >= 56343) && (k <= 57024))
          {
            arrayOfChar[i] = '.';
            arrayOfChar[(i + 1)] = '.';
            i++;
          }
        }
        else
        {
          String str = new String(arrayOfChar);
          return str;
        }
      }
      catch (Exception localException)
      {
        return paramString;
      }
      i++;
    }
  }

  public static String tj(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return paramString;
    while (true)
    {
      int i;
      int j;
      try
      {
        char[] arrayOfChar = paramString.toString().toCharArray();
        i = 0;
        if (i < arrayOfChar.length)
        {
          j = arrayOfChar[i];
          if (j >= 57345)
          {
            if (j <= 58679)
              break label92;
            break label80;
            if (k == 0)
              break label86;
            arrayOfChar[i] = '.';
            break label86;
          }
        }
        else
        {
          String str = new String(arrayOfChar);
          return str;
        }
      }
      catch (Exception localException)
      {
        return paramString;
      }
      label80: int k = 0;
      continue;
      label86: i++;
      continue;
      label92: if ((j >= 57345) && (j <= 57434))
        k = 1;
      else if ((j >= 57601) && (j <= 57690))
        k = 1;
      else if ((j >= 57857) && (j <= 57939))
        k = 1;
      else if ((j >= 58113) && (j <= 58189))
        k = 1;
      else if ((j >= 58369) && (j <= 58444))
        k = 1;
      else if ((j >= 58625) && (j <= 58679))
        k = 1;
      else
        k = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ao.a
 * JD-Core Version:    0.6.2
 */