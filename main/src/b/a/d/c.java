package b.a.d;

import java.util.HashMap;
import java.util.Map;

public final class c extends f
{
  private Map hzX = new HashMap();

  public c(j paramj, String paramString)
  {
    super(paramj, paramString);
  }

  public final Map aRk()
  {
    return this.hzX;
  }

  public final void bo(String paramString1, String paramString2)
  {
    Map localMap = this.hzX;
    if ((paramString1.startsWith("oauth_")) || (paramString1.equals("scope")))
    {
      localMap.put(paramString1, paramString2);
      return;
    }
    throw new IllegalArgumentException(String.format("OAuth parameters must either be '%s' or start with '%s'", new Object[] { "scope", "oauth_" }));
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = super.aRm();
    arrayOfObject[1] = super.getUrl();
    return String.format("@OAuthRequest(%s, %s)", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.d.c
 * JD-Core Version:    0.6.2
 */