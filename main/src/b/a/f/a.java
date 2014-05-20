package b.a.f;

import b.a.g.c;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class a
  implements b
{
  public final String A(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      b.a.g.d.br(paramString1, "Base string cant be null or empty string");
      b.a.g.d.br(paramString2, "Api secret cant be null or empty string");
      SecretKeySpec localSecretKeySpec = new SecretKeySpec((c.encode(paramString2) + '&' + c.encode(paramString3)).getBytes("UTF-8"), "HmacSHA1");
      Mac localMac = Mac.getInstance("HmacSHA1");
      localMac.init(localSecretKeySpec);
      String str = new String(b.a.g.a.cO(localMac.doFinal(paramString1.getBytes("UTF-8")))).replace("\r\n", "");
      return str;
    }
    catch (Exception localException)
    {
      throw new b.a.b.d(paramString1, localException);
    }
  }

  public final String aRz()
  {
    return "HMAC-SHA1";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.f.a
 * JD-Core Version:    0.6.2
 */