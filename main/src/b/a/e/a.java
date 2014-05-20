package b.a.e;

import b.a.c.e;
import b.a.c.f;
import b.a.d.i;
import b.a.d.j;
import b.a.d.k;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class a
  implements b
{
  private b.a.d.a hAx;
  private b.a.a.a.b hAy;

  public a(b.a.a.a.b paramb, b.a.d.a parama)
  {
    this.hAy = paramb;
    this.hAx = parama;
  }

  private void a(b.a.d.c paramc, i parami)
  {
    paramc.bo("oauth_timestamp", new b.a.f.d().aRA());
    paramc.bo("oauth_nonce", new b.a.f.d().aRB());
    paramc.bo("oauth_consumer_key", this.hAx.aRe());
    paramc.bo("oauth_signature_method", new b.a.f.a().aRz());
    paramc.bo("oauth_version", "1.0");
    if (this.hAx.aRj())
      paramc.bo("scope", this.hAx.aRi());
    this.hAx.u("generating signature...");
    String str1 = new b.a.c.c().a(paramc);
    String str2 = new b.a.f.a().A(str1, this.hAx.aRf(), parami.aRw());
    this.hAx.u("base string is: " + str1);
    this.hAx.u("signature is: " + str2);
    paramc.bo("oauth_signature", str2);
    this.hAx.u("appended additional OAuth parameters: " + b.a.g.b.t(paramc.aRk()));
  }

  private void b(b.a.d.c paramc)
  {
    switch (aRy()[this.hAx.aRh().ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.hAx.u("using Http Header signature");
      paramc.addHeader("Authorization", new e().a(paramc));
      return;
      this.hAx.u("using Querystring signature");
      Iterator localIterator = paramc.aRk().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramc.bp((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
  }

  public final i a(i parami, k paramk)
  {
    this.hAx.u("obtaining access token from " + this.hAy.aRd());
    b.a.d.c localc = new b.a.d.c(j.hAp, this.hAy.aRd());
    localc.bo("oauth_token", parami.ank());
    localc.bo("oauth_verifier", paramk.getValue());
    this.hAx.u("setting token to: " + parami + " and verifier to: " + paramk);
    a(localc, parami);
    b(localc);
    b.a.d.g localg = localc.aRp();
    return new b.a.c.g().yl(localg.getBody());
  }

  public final void a(i parami, b.a.d.c paramc)
  {
    this.hAx.u("signing request: " + paramc.aRn());
    if (!parami.isEmpty())
      paramc.bo("oauth_token", parami.ank());
    this.hAx.u("setting token to: " + parami);
    a(paramc, parami);
    b(paramc);
  }

  public final i aRx()
  {
    this.hAx.u("obtaining request token from " + this.hAy.aRc());
    b.a.d.c localc = new b.a.d.c(j.hAp, this.hAy.aRc());
    this.hAx.u("setting oauth_callback to " + this.hAx.aRg());
    localc.bo("oauth_callback", this.hAx.aRg());
    a(localc, b.a.d.b.hzW);
    b(localc);
    this.hAx.u("sending request...");
    b.a.d.g localg = localc.aRp();
    String str = localg.getBody();
    this.hAx.u("response status code: " + localg.Hr());
    this.hAx.u("response body: " + str);
    return new b.a.c.g().yl(str);
  }

  public final String b(i parami)
  {
    return this.hAy.b(parami);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.e.a
 * JD-Core Version:    0.6.2
 */