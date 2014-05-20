package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import com.tencent.mm.ah.e;
import com.tencent.mm.ah.i;
import com.tencent.mm.c.a.bo;
import com.tencent.mm.c.a.bq;
import com.tencent.mm.c.b.v;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.ao;

public final class n
{
  public String chj;
  public boolean cpI;
  public String crH;
  public int elN;
  public String frH;
  public long id;
  public String username;

  private static n a(Context paramContext, long paramLong, int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt3)
  {
    n localn = new n();
    localn.id = paramLong;
    if (paramInt1 == 1);
    for (boolean bool = true; ; bool = false)
    {
      localn.cpI = bool;
      aa.d("MicroMsg.FMessageProvider", "build, fmsgInfo.type = " + paramInt2 + ", fmsgInfo.talker = " + paramString1);
      if (paramInt2 != 0)
        break label364;
      if (paramString2 != null)
        break;
      aa.e("MicroMsg.FMessageProvider", "build fail, fmsgInfo msgContent is null, fmsgInfo.talker = " + paramString1);
      return null;
    }
    localn.username = paramString3;
    localn.crH = paramString4;
    switch (paramInt3)
    {
    default:
      localn.chj = paramContext.getString(com.tencent.mm.n.bgO);
    case 4:
    case 10:
    case 11:
    case 31:
    case 32:
    case 58:
    case 59:
    case 60:
    }
    while (true)
    {
      return localn;
      localn.chj = paramContext.getString(com.tencent.mm.n.bgL);
      continue;
      bo localbo = new bo();
      localbo.bNr.bNo = paramString5;
      localbo.bNr.bNp = paramString6;
      com.tencent.mm.sdk.b.a.ayH().f(localbo);
      int i = com.tencent.mm.n.bgN;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.R(localbo.bNs.bNt, "");
      localn.chj = paramContext.getString(i, arrayOfObject);
      continue;
      localn.chj = paramContext.getString(com.tencent.mm.n.bgQ);
      continue;
      localn.chj = paramContext.getString(com.tencent.mm.n.bgP);
      continue;
      localn.frH = al.uQ(paramString2).aCB();
      localn.chj = paramContext.getString(com.tencent.mm.n.bgM);
      continue;
      label364: if (paramInt1 == 1)
      {
        localn.username = paramString1;
        localn.chj = paramString2;
      }
      else
      {
        localn.username = paramString3;
        localn.crH = paramString4;
        if ((paramString7 != null) && (!paramString7.trim().equals("")))
          localn.chj = paramString7;
        else
          localn.chj = paramContext.getString(com.tencent.mm.n.bmt);
      }
    }
  }

  public static n a(Context paramContext, com.tencent.mm.ah.a parama)
  {
    return a(paramContext, parama.field_fmsgSysRowId, parama.field_fmsgIsSend, parama.field_talker, parama.field_fmsgContent, parama.field_fmsgType, parama.field_contentFromUsername, parama.field_contentNickname, parama.field_contentPhoneNumMD5, parama.field_contentFullPhoneNumMD5, parama.field_contentVerifyContent, parama.field_addScene);
  }

  public static n a(Context paramContext, e parame)
  {
    String str1 = null;
    long l = parame.gfy;
    int i = parame.field_isSend;
    String str2 = parame.field_talker;
    String str3 = parame.field_msgContent;
    int j = parame.field_type;
    String str4;
    String str5;
    String str6;
    String str7;
    int k;
    if (j == 0)
    {
      al localal = al.uQ(str3);
      str4 = localal.aCu();
      str5 = localal.kn();
      str6 = localal.aCw();
      str7 = localal.aCz();
      k = localal.Gf();
    }
    while (true)
    {
      return a(paramContext, l, i, str2, str3, j, str4, str5, str6, str7, str1, k);
      if (i == 0)
      {
        ao localao = ao.uU(str3);
        str4 = localao.aCu();
        str5 = localao.kn();
        str1 = localao.getContent();
        str6 = null;
        str7 = null;
        k = 0;
      }
      else
      {
        str4 = null;
        str5 = null;
        str6 = null;
        str7 = null;
        str1 = null;
        k = 0;
      }
    }
  }

  public static n a(Context paramContext, i parami)
  {
    aa.d("MicroMsg.FMessageProvider", "build shake, talker = " + parami.field_talker + ", scene = " + parami.field_scene);
    n localn = new n();
    localn.id = parami.gfy;
    if (parami.field_isSend == 1);
    for (boolean bool = true; ; bool = false)
    {
      localn.cpI = bool;
      localn.username = parami.field_sayhiuser;
      localn.elN = parami.field_scene;
      if (parami.field_isSend != 1)
        break;
      localn.chj = parami.field_content;
      return localn;
    }
    ao localao = ao.uU(parami.field_content);
    if ((localao.getContent() != null) && (!localao.getContent().trim().equals("")));
    for (localn.chj = localao.getContent(); ; localn.chj = paramContext.getString(com.tencent.mm.n.bgR))
    {
      localn.crH = localao.kn();
      return localn;
    }
  }

  public static n a(Context paramContext, v paramv)
  {
    aa.d("MicroMsg.FMessageProvider", "build lbs, talker = " + paramv.field_sayhiuser + ", scene = " + paramv.field_scene);
    n localn = new n();
    localn.id = paramv.gfy;
    if (paramv.field_isSend == 1);
    for (boolean bool = true; ; bool = false)
    {
      localn.cpI = bool;
      localn.username = paramv.field_sayhiuser;
      localn.elN = paramv.field_scene;
      if (paramv.field_isSend != 1)
        break;
      localn.chj = paramv.field_content;
      return localn;
    }
    ao localao = ao.uU(paramv.field_content);
    if ((localao.getContent() != null) && (!localao.getContent().trim().equals("")));
    for (localn.chj = localao.getContent(); ; localn.chj = paramContext.getString(com.tencent.mm.n.bgR))
    {
      localn.crH = localao.kn();
      return localn;
    }
  }

  public static n[] a(Context paramContext, e[] paramArrayOfe)
  {
    StringBuilder localStringBuilder = new StringBuilder("convert fmsgList, talker = ");
    if ((paramArrayOfe == null) || (paramArrayOfe[0] == null));
    for (String str = "null"; ; str = paramArrayOfe[0].field_talker)
    {
      aa.d("MicroMsg.FMessageProvider", str);
      if ((paramArrayOfe != null) && (paramArrayOfe.length != 0))
        break;
      aa.e("MicroMsg.FMessageProvider", "convert fmsg fail, fmsgList is null");
      return null;
    }
    n[] arrayOfn = new n[paramArrayOfe.length];
    for (int i = 0; i < arrayOfn.length; i++)
      arrayOfn[i] = a(paramContext, paramArrayOfe[i]);
    return arrayOfn;
  }

  public static n[] a(Context paramContext, i[] paramArrayOfi)
  {
    StringBuilder localStringBuilder = new StringBuilder("convert shakeList, talker = ");
    if ((paramArrayOfi == null) || (paramArrayOfi[0] == null));
    for (String str = "null"; ; str = paramArrayOfi[0].field_sayhiuser)
    {
      aa.d("MicroMsg.FMessageProvider", str);
      if ((paramArrayOfi != null) && (paramArrayOfi.length != 0))
        break;
      aa.e("MicroMsg.FMessageProvider", "convert shake fail, shakeList is null");
      return null;
    }
    n[] arrayOfn = new n[paramArrayOfi.length];
    for (int i = 0; i < arrayOfn.length; i++)
      arrayOfn[i] = a(paramContext, paramArrayOfi[i]);
    return arrayOfn;
  }

  public static n[] a(Context paramContext, v[] paramArrayOfv)
  {
    StringBuilder localStringBuilder = new StringBuilder("convert lbsList, talker = ");
    if ((paramArrayOfv == null) || (paramArrayOfv[0] == null));
    for (String str = "null"; ; str = paramArrayOfv[0].field_sayhiuser)
    {
      aa.d("MicroMsg.FMessageProvider", str);
      if ((paramArrayOfv != null) && (paramArrayOfv.length != 0))
        break;
      aa.e("MicroMsg.FMessageProvider", "convert lbs fail, lbsList is null");
      return null;
    }
    n[] arrayOfn = new n[paramArrayOfv.length];
    for (int i = 0; i < arrayOfn.length; i++)
      arrayOfn[i] = a(paramContext, paramArrayOfv[i]);
    return arrayOfn;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.n
 * JD-Core Version:    0.6.2
 */