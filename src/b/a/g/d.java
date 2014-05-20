package b.a.g;

import java.util.regex.Pattern;

public final class d
{
  private static final Pattern hAC = Pattern.compile("^[a-zA-Z][a-zA-Z0-9+.-]*://\\S+");

  public static void a(Object paramObject, String paramString)
  {
    if (paramObject != null);
    for (boolean bool = true; ; bool = false)
    {
      g(bool, paramString);
      return;
    }
  }

  public static void br(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (!paramString1.trim().equals("")));
    for (boolean bool = true; ; bool = false)
    {
      g(bool, paramString2);
      return;
    }
  }

  private static void g(boolean paramBoolean, String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() <= 0))
      paramString = "Received an invalid parameter";
    if (!paramBoolean)
      throw new IllegalArgumentException(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.g.d
 * JD-Core Version:    0.6.2
 */