package com.tencent.mm.sdk.platformtools;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class s
{
  private static final Pattern gcY = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
  private static final Pattern gcZ = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
  private static final Pattern gda = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

  public static InetAddress sx(String paramString)
  {
    if (gcY.matcher(paramString).matches())
      return InetAddress.getByName(paramString);
    if ((gcZ.matcher(paramString).matches()) || (gda.matcher(paramString).matches()));
    for (int i = 1; i != 0; i = 0)
      return InetAddress.getByName(paramString);
    throw new UnknownHostException("invalid ipv4 or ipv6 dotted string");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.s
 * JD-Core Version:    0.6.2
 */