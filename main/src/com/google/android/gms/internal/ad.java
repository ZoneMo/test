package com.google.android.gms.internal;

public final class ad
{
  public static void a(StringBuilder paramStringBuilder, double[] paramArrayOfDouble)
  {
    int i = paramArrayOfDouble.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(Double.toString(paramArrayOfDouble[j]));
    }
  }

  public static void a(StringBuilder paramStringBuilder, float[] paramArrayOfFloat)
  {
    int i = paramArrayOfFloat.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(Float.toString(paramArrayOfFloat[j]));
    }
  }

  public static void a(StringBuilder paramStringBuilder, long[] paramArrayOfLong)
  {
    int i = paramArrayOfLong.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(Long.toString(paramArrayOfLong[j]));
    }
  }

  public static void a(StringBuilder paramStringBuilder, Object[] paramArrayOfObject)
  {
    int i = paramArrayOfObject.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(paramArrayOfObject[j].toString());
    }
  }

  public static void a(StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append("\"").append(paramArrayOfString[j]).append("\"");
    }
  }

  public static void a(StringBuilder paramStringBuilder, boolean[] paramArrayOfBoolean)
  {
    int i = paramArrayOfBoolean.length;
    for (int j = 0; j < i; j++)
    {
      if (j != 0)
        paramStringBuilder.append(",");
      paramStringBuilder.append(Boolean.toString(paramArrayOfBoolean[j]));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ad
 * JD-Core Version:    0.6.2
 */