package com.tencent.mm.plugin.search.model;

import android.database.DatabaseUtils;
import info.guardianproject.database.sqlcipher.SQLiteDatabase;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public class SearchUtils
{
  private static String[] eil = { "wxid_", "wx_", "gh_" };
  private static final String[] eim = { "UNKNOWN", "CREATE", "INSERT", "UPDATE", "REPLACE", "DELETE", "DROP", "QUERY" };

  static String a(Collection paramCollection)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append('(');
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (localObject != null)
        localStringBuilder.append(localObject.toString()).append(',');
    }
    localStringBuilder.setCharAt(-1 + localStringBuilder.length(), ')');
    return localStringBuilder.toString();
  }

  public static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    return Arrays.binarySearch(paramArrayOfInt, paramInt) >= 0;
  }

  public static String am(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 0))
      return paramString2;
    String[] arrayOfString = eil;
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      if (paramString1.startsWith(arrayOfString[j]))
        return null;
    if (paramString1.indexOf('@') >= 0)
      return null;
    return paramString1;
  }

  static String b(int[] paramArrayOfInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('(');
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
      localStringBuilder.append(paramArrayOfInt[j]).append(',');
    localStringBuilder.setCharAt(-1 + localStringBuilder.length(), ')');
    return localStringBuilder.toString();
  }

  static native int countTokens(String paramString);

  static native int initFts(SQLiteDatabase paramSQLiteDatabase, byte[] paramArrayOfByte);

  public static native int stringCompareUtfBinary(String paramString1, String paramString2);

  static int[] u(String[] paramArrayOfString)
  {
    int[] arrayOfInt = new int[paramArrayOfString.length];
    arrayOfInt[0] = 0;
    for (int i = 1; i < paramArrayOfString.length; i++)
      arrayOfInt[i] = (arrayOfInt[(i - 1)] + countTokens(paramArrayOfString[(i - 1)]));
    return arrayOfInt;
  }

  static String v(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append('(');
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      localStringBuilder.append(DatabaseUtils.sqlEscapeString(str) + ',');
    }
    localStringBuilder.setCharAt(-1 + localStringBuilder.length(), ')');
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.SearchUtils
 * JD-Core Version:    0.6.2
 */