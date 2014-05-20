package com.tencent.mm.ui.chatting;

import android.content.Context;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.k;
import com.tencent.mm.p.p;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.tools.dl;
import java.util.List;

public final class kz
{
  public static void a(ak paramak, String paramString, Context paramContext)
  {
    a(paramak, paramString, paramContext, 512);
  }

  private static void a(ak paramak, String paramString, Context paramContext, int paramInt)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptMusicConnector: context is null");
      return;
    }
    if (paramak == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptMusicConnector: msg is null");
      return;
    }
    List localList = null;
    switch (paramInt)
    {
    default:
    case 256:
    case 128:
    case 512:
    }
    while (true)
    {
      a(localList, paramContext, new lk(paramak, paramString, paramInt, paramContext));
      return;
      localList = p.xV();
      continue;
      localList = p.xT();
      continue;
      localList = p.xX();
    }
  }

  private static void a(List paramList, Context paramContext, cd paramcd)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "tryShowConnectorDialog: careList is null or empty");
      return;
    }
    dl localdl = new dl(paramContext);
    localdl.a(new ll());
    localdl.a(new lb(paramContext));
    localdl.a(new lc(paramList));
    localdl.b(paramcd);
    localdl.cB();
  }

  public static void b(ak paramak, Context paramContext)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptVoiceConnector: context is null");
      return;
    }
    if (paramak == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptVoiceConnector: msg is null");
      return;
    }
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(paramContext);
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptVoiceConnector: sd card not available");
      return;
    }
    a(ab.ye().cT(2), paramContext, new ld(paramak, paramContext));
  }

  public static void b(ak paramak, String paramString, Context paramContext)
  {
    a(paramak, paramString, paramContext, 256);
  }

  public static void c(ak paramak, Context paramContext)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptImgConnector: context is null");
      return;
    }
    if (paramak == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptImgConnector: msg is null");
      return;
    }
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(paramContext);
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptImgConnector: sd card is not available");
      return;
    }
    a(ab.ye().cT(4), paramContext, new le(paramak, paramContext));
  }

  public static void c(ak paramak, String paramString, Context paramContext)
  {
    a(paramak, paramString, paramContext, 128);
  }

  public static void d(ak paramak, Context paramContext)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptVideoConnector: context is null");
      return;
    }
    if (paramak == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptVideoConnector: msg is null");
      return;
    }
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(paramContext);
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptVideoConnector: sd card is not available");
      return;
    }
    a(p.xL(), paramContext, new lf(paramak, paramContext));
  }

  public static void e(ak paramak, Context paramContext)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptEmojiConnector: context is null");
      return;
    }
    if (paramak == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptEmojiConnector: msg is null");
      return;
    }
    if (!be.uz().isSDCardAvailable())
    {
      dn.bW(paramContext);
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptEmojiConnector: sd card is not available");
      return;
    }
    a(p.xR(), paramContext, new lj(paramak, paramContext));
  }

  public static void h(String paramString, Context paramContext)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptTextConnector: context is null");
      return;
    }
    if (cj.hX(paramString))
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptTextConnector: content is null");
      return;
    }
    a(ab.ye().cT(1), paramContext, new la(paramString, paramContext));
  }

  public static void i(String paramString, Context paramContext)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptLocationConnector: context is null");
      return;
    }
    if (cj.hX(paramString))
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptLocationConnector: locationXML is null");
      return;
    }
    a(p.xN(), paramContext, new lh(paramString, paramContext));
  }

  public static void j(String paramString, Context paramContext)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptPersonalCardConnector: context is null");
      return;
    }
    if (cj.hX(paramString))
    {
      aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptPersonalCardConnector: locationXML is null");
      return;
    }
    a(p.xP(), paramContext, new li(paramString, paramContext));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.kz
 * JD-Core Version:    0.6.2
 */