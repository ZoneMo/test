package com.tencent.mm.sdk.platformtools;

public final class i
{
  public static String ayK()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(String.format("[tag ] %s\n", new Object[] { "MicroMessenger_Android_Release #1185" }));
    localStringBuilder.append(String.format("[by  ] %s\n", new Object[] { "/home/android" }));
    localStringBuilder.append(String.format("[host] %s\n", new Object[] { "VM_22_112_sles10_64" }));
    localStringBuilder.append(String.format("[time] %s\n", new Object[] { "01/27/2014 03:53 AM" }));
    localStringBuilder.append(String.format("[cmd ] %s\n", new Object[] { "unknown" }));
    localStringBuilder.append(String.format("[rev ] %s\n", new Object[] { "613228" }));
    Object[] arrayOfObject = new Object[1];
    String str = "https://scm-gy.tencent.com/gzrd/gzrd_mail_rep/MicroMsg_proj/branches/android/RB-5.1";
    int i = str.indexOf("MicroMsg_proj");
    if (i < 0);
    while (true)
    {
      arrayOfObject[0] = str;
      localStringBuilder.append(String.format("[path] %s\n", arrayOfObject));
      return localStringBuilder.toString();
      str = str.substring(i);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.i
 * JD-Core Version:    0.6.2
 */