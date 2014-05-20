package com.tencent.mm.plugin.search.model;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public final class a
{
  public static final Map egA;
  public static final int[] egB;
  public static final int[] egC;
  public static final int[] egD;
  public static final int[] egE;
  public static final int[] egF;
  public static final Pattern egG;
  public static final Pattern egH;
  public static final Pattern egI;
  public static final Pattern egJ;
  public static final int[] egw;
  public static final int[] egx;
  public static final int[] egy;
  public static final int[] egz;

  static
  {
    int i = 0;
    egw = new int[] { 65536 };
    egx = new int[] { 131072, 131073, 131074, 131075, 131076 };
    egy = new int[] { 131072, 131073, 131074 };
    egz = new int[] { 131075, 131076 };
    egB = new int[] { 4, 5, 6, 11, 12, 13, 14, 19 };
    egD = new int[] { 1, 3, 9, 10, 2, 7, 8 };
    egE = new int[] { 4, 6, 13, 14, 5, 11, 12, 19 };
    egF = new int[] { 15, 16, 17, 18, 5, 11, 12 };
    egG = Pattern.compile(";");
    egH = Pattern.compile(" ");
    egI = Pattern.compile("​");
    egJ = Pattern.compile("\\s+");
    int[] arrayOfInt1 = { 131072, 131075, 131076, 131073, 131074 };
    int[] arrayOfInt2 = { 3, 9, 10, 2, 7, 8, 16, 17, 18, 1, 15, 6, 13, 14, 19, 5, 11, 12, 4, 20, 22, 21, 0 };
    HashMap localHashMap = new HashMap();
    for (int j = 0; j < arrayOfInt1.length; j++)
      localHashMap.put(Integer.valueOf(arrayOfInt1[j]), Integer.valueOf(j));
    egA = Collections.unmodifiableMap(localHashMap);
    egC = new int[arrayOfInt2.length];
    while (i < arrayOfInt2.length)
    {
      egC[arrayOfInt2[i]] = i;
      i++;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.a
 * JD-Core Version:    0.6.2
 */