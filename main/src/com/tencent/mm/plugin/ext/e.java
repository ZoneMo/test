package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.ac;
import com.tencent.mm.c.a.ad;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.platformtools.aa;

public final class e extends com.tencent.mm.sdk.b.g
{
  d dfi;
  l dfj;
  i dfk;
  h dfl;
  k dfm;
  j dfn;
  g dfo;
  f dfp;

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    int i = 1;
    if (!(parame instanceof ac))
    {
      aa.aM("MicroMsg.SubCoreExtAgent", "mismatched event");
      i = 0;
    }
    do
    {
      ac localac;
      do
      {
        return i;
        localac = (ac)parame;
        if (localac.bMr.op == i)
        {
          aa.e("MicroMsg.SubCoreExtAgent", "ExtAgentLifeEventListener init");
          this.dfi = new d();
          this.dfj = new l();
          this.dfk = new i();
          this.dfl = new h();
          this.dfm = new k();
          this.dfn = new j();
          this.dfo = new g();
          this.dfp = new f();
          a.ayH().a("ExtIsAppidValid", this.dfi);
          a.ayH().a("ExtRequestAccountSync", this.dfj);
          a.ayH().a("ExtRecord", this.dfk);
          a.ayH().a("ExtPlayer", this.dfl);
          a.ayH().a("ExtVoiceMsgIdToFileName", this.dfm);
          a.ayH().a("ExtVoiceFileNameToMsgId", this.dfn);
          a.ayH().a("ExtNetSceneSendMsg", this.dfo);
          a.ayH().a("ExtCursorForTimeLine", this.dfp);
          return i;
        }
      }
      while (localac.bMr.op != 2);
      if (this.dfi != null)
        a.ayH().b("ExtIsAppidValid", this.dfi);
      if (this.dfj != null)
        a.ayH().b("ExtRequestAccountSync", this.dfj);
      if (this.dfk != null)
        a.ayH().b("ExtRecord", this.dfk);
      if (this.dfl != null)
        a.ayH().b("ExtPlayer", this.dfl);
      if (this.dfm != null)
        a.ayH().b("ExtVoiceMsgIdToFileName", this.dfm);
      if (this.dfn != null)
        a.ayH().b("ExtVoiceFileNameToMsgId", this.dfn);
      if (this.dfo != null)
        a.ayH().b("ExtNetSceneSendMsg", this.dfo);
    }
    while (this.dfp == null);
    a.ayH().b("ExtCursorForTimeLine", this.dfp);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.e
 * JD-Core Version:    0.6.2
 */