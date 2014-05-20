package com.tencent.mm.ao;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import com.tencent.mm.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Arrays;
import java.util.Comparator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class d
{
  private static d ggb = null;
  private static Pattern ggj;
  public static int ggk = 6;
  private static final Comparator ggl = new e();
  private String[] ggc = null;
  private String[] ggd = null;
  private String[] gge = null;
  private String[] ggf = null;
  private String[] ggg = null;
  private String[] ggh = null;
  private f[] ggi = null;

  private d()
  {
  }

  private d(Context paramContext)
  {
    this.ggc = paramContext.getResources().getStringArray(c.Zn);
    this.ggd = paramContext.getResources().getStringArray(c.Zq);
    this.gge = paramContext.getResources().getStringArray(c.Zo);
    this.ggf = paramContext.getResources().getStringArray(c.Zs);
    this.ggg = paramContext.getResources().getStringArray(c.Zp);
    this.ggh = paramContext.getResources().getStringArray(c.Zr);
    this.ggi = new f[6 * this.ggc.length];
    int i = 0;
    int j = 0;
    while (i < this.ggc.length)
    {
      this.ggi[j] = new f(i, this.ggc[i]);
      j++;
      i++;
    }
    for (int k = 0; k < this.ggd.length; k++)
    {
      this.ggi[j] = new f(k, this.ggd[k]);
      j++;
    }
    for (int m = 0; m < this.gge.length; m++)
    {
      this.ggi[j] = new f(m, this.gge[m]);
      j++;
    }
    for (int n = 0; n < this.ggf.length; n++)
    {
      this.ggi[j] = new f(n, this.ggf[n]);
      j++;
    }
    int i3;
    for (int i1 = 0; ; i1++)
    {
      int i2 = this.ggg.length;
      i3 = 0;
      if (i1 >= i2)
        break;
      this.ggi[j] = new f(i1, this.ggg[i1]);
      j++;
    }
    while (i3 < this.ggh.length)
    {
      this.ggi[j] = new f(i3, this.ggh[i3]);
      j++;
      i3++;
    }
    Arrays.sort(this.ggi, ggl);
  }

  public static SpannableString a(Context paramContext, SpannableString paramSpannableString, int paramInt)
  {
    if ((paramSpannableString == null) || (paramSpannableString.length() == 0))
    {
      paramSpannableString = new SpannableString("");
      return paramSpannableString;
    }
    String str = paramSpannableString.toString();
    int i = -1;
    while (true)
    {
      i = str.indexOf('/', i + 1);
      if (i == -1)
        break;
      if (i < -1 + str.length())
        a(i, paramContext, paramSpannableString, paramInt);
    }
    while (true)
    {
      i = str.indexOf('[', i + 1);
      if (i == -1)
        break;
      if (i < -1 + str.length())
        a(i, paramContext, paramSpannableString, paramInt);
    }
  }

  private static boolean a(int paramInt1, Context paramContext, SpannableString paramSpannableString, int paramInt2)
  {
    f localf = ak(paramContext, paramSpannableString.subSequence(paramInt1, paramSpannableString.length()));
    boolean bool = false;
    int j;
    if (localf != null)
    {
      int i = localf.pos;
      j = paramContext.getResources().getIdentifier("smiley_" + i, "drawable", paramContext.getPackageName());
      if (j != 0)
        break label145;
    }
    label145: for (Drawable localDrawable = null; ; localDrawable = paramContext.getResources().getDrawable(j))
    {
      bool = false;
      if (localDrawable != null)
      {
        localDrawable.setBounds(0, 0, (int)(1.3D * paramInt2), (int)(1.3D * paramInt2));
        paramSpannableString.setSpan(new ImageSpan(localDrawable, 0), paramInt1, paramInt1 + localf.text.length(), 33);
        bool = true;
      }
      return bool;
    }
  }

  private static f ak(Context paramContext, String paramString)
  {
    if (ggb == null)
      ggb = new d(paramContext);
    f[] arrayOff = ggb.ggi;
    int i = Arrays.binarySearch(arrayOff, new f(0, paramString), ggl);
    if (i < 0)
      i = -2 + -i;
    if ((i >= 0) && (paramString.startsWith(arrayOff[i].text)))
      return arrayOff[i];
    return null;
  }

  public static boolean b(Context paramContext, SpannableString paramSpannableString, int paramInt)
  {
    if ((paramSpannableString == null) || (paramSpannableString.length() == 0))
    {
      bool = false;
      return bool;
    }
    String str = paramSpannableString.toString();
    boolean bool = false;
    int i = -1;
    while (true)
    {
      i = str.indexOf('/', i + 1);
      if (i == -1)
        break;
      if ((i < -1 + str.length()) && (a(i, paramContext, paramSpannableString, paramInt)))
        bool = true;
    }
    while (true)
    {
      i = str.indexOf('[', i + 1);
      if (i == -1)
        break;
      if ((i < -1 + str.length()) && (a(i, paramContext, paramSpannableString, paramInt)))
        bool = true;
    }
  }

  public static int h(Context paramContext, String paramString, int paramInt)
  {
    if (cj.hX(paramString));
    int i;
    do
    {
      return paramInt;
      i = paramString.length();
    }
    while ((paramInt == 0) || (paramInt == i));
    int i10;
    if (paramContext == null)
    {
      aa.e("MicroMsg.QQSmileyManager", "setQQSmileyFailed, null context");
      int i9 = ggk;
      i10 = 0;
      if (paramInt >= i9)
        break label544;
      label48: if (paramInt + ggk < i)
        break label554;
    }
    label544: label554: for (int i11 = i - 1; ; i11 = paramInt + ggk)
    {
      String str = paramString.substring(i10, i11);
      int i12 = ggk;
      Matcher localMatcher = ggj.matcher(str);
      while (localMatcher.find())
        if ((i12 > localMatcher.start()) && (i12 < localMatcher.end()))
          i12 = localMatcher.start();
      return paramInt + (i12 - ggk);
      if (ggj != null)
        break;
      String[] arrayOfString1 = paramContext.getResources().getStringArray(c.Zn);
      String[] arrayOfString2 = paramContext.getResources().getStringArray(c.Zq);
      String[] arrayOfString3 = paramContext.getResources().getStringArray(c.Zo);
      String[] arrayOfString4 = paramContext.getResources().getStringArray(c.Zs);
      String[] arrayOfString5 = paramContext.getResources().getStringArray(c.Zp);
      String[] arrayOfString6 = paramContext.getResources().getStringArray(c.Zr);
      StringBuilder localStringBuilder = new StringBuilder();
      int j = arrayOfString1.length;
      for (int k = 0; k < j; k++)
      {
        localStringBuilder.append(Pattern.quote(arrayOfString1[k]));
        if (k != j - 1)
          localStringBuilder.append('|');
      }
      int m = arrayOfString2.length;
      for (int n = 0; n < m; n++)
      {
        localStringBuilder.append(Pattern.quote(arrayOfString2[n]));
        if (n != m - 1)
          localStringBuilder.append('|');
      }
      int i1 = arrayOfString3.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        localStringBuilder.append(Pattern.quote(arrayOfString3[i2]));
        if (i2 != i1 - 1)
          localStringBuilder.append('|');
      }
      int i3 = arrayOfString4.length;
      for (int i4 = 0; i4 < i3; i4++)
      {
        localStringBuilder.append(Pattern.quote(arrayOfString4[i4]));
        if (i4 != i3 - 1)
          localStringBuilder.append('|');
      }
      int i5 = arrayOfString5.length;
      for (int i6 = 0; i6 < i5; i6++)
      {
        localStringBuilder.append(Pattern.quote(arrayOfString5[i6]));
        if (i6 != i5 - 1)
          localStringBuilder.append('|');
      }
      int i7 = arrayOfString6.length;
      for (int i8 = 0; i8 < i7; i8++)
      {
        localStringBuilder.append(Pattern.quote(arrayOfString6[i8]));
        if (i8 != i7 - 1)
          localStringBuilder.append('|');
      }
      ggj = Pattern.compile(localStringBuilder.toString());
      break;
      i10 = paramInt - ggk;
      break label48;
    }
  }

  public static String tl(String paramString)
  {
    Context localContext = al.getContext();
    int i = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(i);
    int j = 0;
    while (j < i)
    {
      char c = paramString.charAt(j);
      if ((c == '/') || (c == '['))
      {
        f localf = ak(localContext, paramString.substring(j));
        if (localf != null)
        {
          for (int k = 0; k < localf.text.length(); k++)
            localStringBuilder.append('​');
          j += localf.text.length();
        }
      }
      else
      {
        localStringBuilder.append(c);
        j++;
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ao.d
 * JD-Core Version:    0.6.2
 */