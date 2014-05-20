package b.a.c;

import b.a.d.e;
import b.a.d.j;
import b.a.g.d;
import java.util.Map;

public final class c
  implements b
{
  public final String a(b.a.d.c paramc)
  {
    d.a(paramc, "Cannot extract base string from null object");
    if ((paramc.aRk() == null) || (paramc.aRk().size() <= 0))
      throw new b.a.b.c(paramc);
    String str1 = b.a.g.c.encode(paramc.aRm().name());
    String str2 = b.a.g.c.encode(paramc.aRr());
    e locale = new e();
    locale.a(paramc.aRl());
    locale.a(paramc.aRq());
    locale.a(new e(paramc.aRk()));
    return String.format("%s&%s&%s", new Object[] { str1, str2, b.a.g.c.encode(locale.aRu().aRt()) });
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.c.c
 * JD-Core Version:    0.6.2
 */