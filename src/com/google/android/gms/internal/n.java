package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.util.AttributeSet;
import android.util.TypedValue;

public final class n
{
  public static String a(String paramString1, String paramString2, Context paramContext, AttributeSet paramAttributeSet)
  {
    String str1;
    if (paramAttributeSet == null)
      str1 = null;
    while (true)
    {
      String str2;
      String str3;
      TypedValue localTypedValue;
      if ((str1 != null) && (str1.startsWith("@string/")))
      {
        str2 = str1.substring(8);
        str3 = paramContext.getPackageName();
        localTypedValue = new TypedValue();
      }
      try
      {
        paramContext.getResources().getValue(str3 + ":string/" + str2, localTypedValue, true);
        if (localTypedValue.string != null)
        {
          str1 = localTypedValue.string.toString();
          return str1;
          str1 = paramAttributeSet.getAttributeValue(paramString1, paramString2);
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        while (true)
          new StringBuilder("Could not find resource for ").append(paramString2).append(": ").append(str1).toString();
        new StringBuilder("Resource ").append(paramString2).append(" was not a string: ").append(localTypedValue).toString();
      }
    }
    return str1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.n
 * JD-Core Version:    0.6.2
 */