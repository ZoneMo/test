package com.tencent.mm.compatible.g;

public final class j
{
  public static int qe()
  {
    return new java.lang.Throwable().getStackTrace()[1].getLineNumber();
  }

  public static String qf()
  {
    return new java.lang.Throwable().getStackTrace()[1].toString();
  }

  public static String qg()
  {
    StackTraceElement localStackTraceElement = new java.lang.Throwable().getStackTrace()[1];
    int i = localStackTraceElement.getMethodName().lastIndexOf('.');
    return localStackTraceElement.getMethodName().substring(i + 1) + "(" + localStackTraceElement.getFileName() + ":" + localStackTraceElement.getLineNumber() + ")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.g.j
 * JD-Core Version:    0.6.2
 */