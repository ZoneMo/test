package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.modelvoice.br;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.c.a;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.sdk.platformtools.u;
import java.io.File;
import java.io.StringWriter;
import java.util.LinkedList;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

public final class ak
  implements y
{
  private static String a(com.tencent.mm.storage.ak paramak, int paramInt)
  {
    if (au.hX(paramak.getContent()))
      return null;
    bf localbf = new bf(paramak.getContent());
    StringWriter localStringWriter = new StringWriter();
    try
    {
      XmlSerializer localXmlSerializer = XmlPullParserFactory.newInstance().newSerializer();
      localXmlSerializer.setOutput(localStringWriter);
      localXmlSerializer.startTag(null, "msg");
      localXmlSerializer.startTag(null, "voicemsg");
      localXmlSerializer.attribute(null, "length", String.valueOf(paramInt));
      localXmlSerializer.attribute(null, "endflag", "1");
      localXmlSerializer.attribute(null, "cancelflag", "0");
      localXmlSerializer.attribute(null, "voicelength", localbf.getTime());
      if (!au.hX(localbf.DG()))
        localXmlSerializer.attribute(null, "fromusername", localbf.DG());
      if (localbf.Ev());
      for (String str1 = "1"; ; str1 = "0")
      {
        localXmlSerializer.attribute(null, "isPlayed", str1);
        localXmlSerializer.endTag(null, "voicemsg");
        localXmlSerializer.endTag(null, "msg");
        localXmlSerializer.endDocument();
        localStringWriter.flush();
        localStringWriter.close();
        String str2 = localStringWriter.getBuffer().toString();
        if (a.cp(paramak.aCl()))
          str2 = localbf.DG() + ":\n" + str2;
        aa.d("MicroMsg.MMBakItemVoice", "parseContent xml:" + str2);
        return str2;
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.MMBakItemVoice", "packetVoice xml error: " + localException.toString());
    }
    return null;
  }

  public final int a(ae paramae, boolean paramBoolean, com.tencent.mm.storage.ak paramak, LinkedList paramLinkedList)
  {
    String str1 = a.fU(paramak.ot());
    File localFile = new File(str1);
    boolean bool = localFile.exists();
    int i = 0;
    if (!bool);
    int j;
    do
    {
      String str2;
      do
      {
        return i;
        j = (int)localFile.length();
        if (paramBoolean)
          return j;
        str2 = a(paramak, j);
        i = 0;
      }
      while (str2 == null);
      paramae.fzv = new rw().sn(str2);
      i = str2.length();
    }
    while (j == 0);
    return i + r.a(str1, paramae, paramLinkedList, 9, paramBoolean);
  }

  public final int a(String paramString, ae paramae, com.tencent.mm.storage.ak paramak)
  {
    String str1 = paramae.fzv.getString();
    if (a.cp(paramae.fzs.getString()))
    {
      str1 = a.dz(str1);
      aa.v("MicroMsg.MMBakItemVoice", "chatroom voicemsg, new content=" + str1);
    }
    Map localMap = u.aL(str1, "msg");
    if (localMap != null);
    try
    {
      int i = r.z((String)localMap.get(".msg.voicemsg.$voicelength"), 0);
      String str6 = (String)localMap.get(".msg.voicemsg.$fromusername");
      if (r.z((String)localMap.get(".msg.voicemsg.$isPlayed"), 1) == 1);
      for (boolean bool = true; ; bool = false)
      {
        paramak.setContent(bf.a(str6, i, bool));
        String str2 = br.hx(paramae.fzs.getString());
        paramak.uN(str2);
        a.d(paramak);
        str3 = a.fU(str2);
        if (!r.a(paramae, 9, str3))
          break;
        return 0;
      }
    }
    catch (Exception localException)
    {
      String str3;
      String str4;
      do
      {
        while (true)
          aa.e("MicroMsg.MMBakItemVoice", "parsing voice msg xml failed");
        str4 = r.a(paramae, 9);
      }
      while (str4 == null);
      String str5 = r.io(str4);
      aa.d("MicroMsg.MMBakItemVoice", "recover Frome Sdcard" + str5);
      m.f(str5, str3, false);
    }
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.ak
 * JD-Core Version:    0.6.2
 */