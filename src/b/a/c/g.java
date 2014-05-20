package b.a.c;

import b.a.b.b;
import b.a.d.i;
import b.a.g.c;
import b.a.g.d;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class g
  implements a, f
{
  private static final Pattern hzU = Pattern.compile("oauth_token=([^&]+)");
  private static final Pattern hzV = Pattern.compile("oauth_token_secret=([^&]*)");

  private static String a(String paramString, Pattern paramPattern)
  {
    Matcher localMatcher = paramPattern.matcher(paramString);
    if ((localMatcher.find()) && (localMatcher.groupCount() > 0))
      return c.decode(localMatcher.group(1));
    throw new b("Response body is incorrect. Can't extract token and secret from this: '" + paramString + "'", null);
  }

  public final i yl(String paramString)
  {
    d.br(paramString, "Response body is incorrect. Can't extract a token from an empty string");
    return new i(a(paramString, hzU), a(paramString, hzV), paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.c.g
 * JD-Core Version:    0.6.2
 */