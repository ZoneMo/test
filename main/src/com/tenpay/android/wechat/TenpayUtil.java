package com.tenpay.android.wechat;

import android.content.Context;
import com.tenpay.android.jni.Encrypt;
import java.lang.reflect.Field;
import java.security.MessageDigest;

public class TenpayUtil
{
  public static final int getResourceDeclareStyleableIndex(Context paramContext, String paramString)
  {
    int i;
    int j;
    do
      try
      {
        Field[] arrayOfField = Class.forName(paramContext.getPackageName() + ".R$styleable").getFields();
        i = arrayOfField.length;
        j = 0;
        continue;
        Field localField = arrayOfField[j];
        if (localField.getName().equals(paramString))
        {
          int k = localField.getInt(null);
          return k;
        }
        j++;
      }
      catch (Throwable localThrowable)
      {
        return 0;
      }
    while (j < i);
    return 0;
  }

  public static final int[] getResourceDeclareStyleableIntArray(Context paramContext, String paramString)
  {
    int i;
    int j;
    do
      try
      {
        Field[] arrayOfField = Class.forName(paramContext.getPackageName() + ".R$styleable").getFields();
        i = arrayOfField.length;
        j = 0;
        continue;
        Field localField = arrayOfField[j];
        if (localField.getName().equals(paramString))
        {
          int[] arrayOfInt = (int[])localField.get(null);
          return arrayOfInt;
        }
        j++;
      }
      catch (Throwable localThrowable)
      {
        return null;
      }
    while (j < i);
    return null;
  }

  public static boolean invalidateID(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return false;
      if (paramString.length() == 18)
      {
        int[] arrayOfInt = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 };
        char[] arrayOfChar = { 49, 48, 88, 57, 56, 55, 54, 53, 52, 51, 50 };
        int i = 0;
        int j = 0;
        try
        {
          int k = paramString.length();
          int i2;
          int i3;
          if (i >= k - 1)
          {
            i2 = j % 11;
            i3 = paramString.charAt(17);
            if (i2 == 2)
              if ((i3 != 88) && (i3 != 120))
                continue;
          }
          else
          {
            while (i3 == arrayOfChar[i2])
            {
              return true;
              int m = i + 1;
              int n = Integer.parseInt(paramString.substring(i, m));
              int i1 = arrayOfInt[i];
              j += n * i1;
              i++;
              break;
            }
            return false;
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
        }
      }
    }
    return false;
  }

  public static String md5HexDigest(String paramString)
  {
    int i = 0;
    char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte = localMessageDigest.digest();
      char[] arrayOfChar2 = new char[32];
      int j = 0;
      while (true)
      {
        if (i >= 16)
          return new String(arrayOfChar2);
        int k = arrayOfByte[i];
        int m = j + 1;
        arrayOfChar2[j] = arrayOfChar1[(0xF & k >>> 4)];
        j = m + 1;
        arrayOfChar2[m] = arrayOfChar1[(k & 0xF)];
        i++;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String signWith3Des(String paramString)
  {
    if (paramString == null)
      return null;
    String str = md5HexDigest(paramString);
    return new Encrypt().a(str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tenpay.android.wechat.TenpayUtil
 * JD-Core Version:    0.6.2
 */