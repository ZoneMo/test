package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.ai.o;
import com.tencent.mm.ai.q;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.c.a;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import java.io.File;
import java.io.StringWriter;
import java.util.LinkedList;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

public final class aj
  implements y
{
  private static String a(ae paramae, ak paramak)
  {
    q localq = a.hh(paramak.ot());
    if (localq == null)
      return null;
    if (localq.DQ() == 0);
    for (int i = 43; ; i = 44)
    {
      paramae.dGR = i;
      if (!au.hX(paramak.getContent()))
        break;
      return null;
    }
    String str1;
    if (a.cp(paramak.aCl()))
      str1 = localq.DG();
    while (true)
    {
      StringWriter localStringWriter = new StringWriter();
      try
      {
        XmlSerializer localXmlSerializer = XmlPullParserFactory.newInstance().newSerializer();
        localXmlSerializer.setOutput(localStringWriter);
        localXmlSerializer.startTag(null, "msg");
        localXmlSerializer.startTag(null, "videomsg");
        localXmlSerializer.attribute(null, "playlength", localq.DO());
        localXmlSerializer.attribute(null, "length", localq.vR());
        localXmlSerializer.attribute(null, "type", String.valueOf(i));
        if (!au.hX(str1))
          localXmlSerializer.attribute(null, "fromusername", str1);
        localXmlSerializer.endTag(null, "videomsg");
        localXmlSerializer.endTag(null, "msg");
        localXmlSerializer.endDocument();
        localStringWriter.flush();
        localStringWriter.close();
        String str2 = localStringWriter.getBuffer().toString();
        aa.d("MicroMsg.MMBakItemVideo", "parseContent xml:" + str2);
        return str2;
        str1 = paramae.fzs.getString();
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.MMBakItemVideo", "packetVoice xml error: " + localException.toString());
      }
    }
    return null;
  }

  public final int a(ae paramae, boolean paramBoolean, ak paramak, LinkedList paramLinkedList)
  {
    String str1 = d.Gj().DE().gZ(paramak.ot());
    q localq = a.hh(paramak.ot());
    int i;
    File localFile1;
    if ((localq == null) || (localq.getStatus() == 199))
    {
      i = 1;
      localFile1 = new File(str1);
      if ((i == 0) || (!localFile1.exists()))
        break label240;
    }
    label240: for (int j = (int)localFile1.length(); ; j = 0)
    {
      String str2 = d.Gj().DE().ha(paramak.ot());
      File localFile2 = new File(str2);
      if (localFile2.exists());
      for (int k = (int)localFile2.length(); ; k = 0)
      {
        int m;
        if (paramBoolean)
          m = k + j;
        String str3;
        do
        {
          return m;
          i = 0;
          break;
          m = 0;
          if (k != 0)
            m = 0 + r.a(str2, paramae, paramLinkedList, 11, paramBoolean);
          str3 = a(paramae, paramak);
        }
        while (str3 == null);
        paramae.fzv = new rw().sn(str3);
        int n = m + str3.length();
        if ((i != 0) && (j != 0));
        for (int i1 = n + r.a(str1, paramae, paramLinkedList, 10, paramBoolean); ; i1 = n)
          return i1;
      }
    }
  }

  public final int a(String paramString, ae paramae, ak paramak)
  {
    q localq = new q();
    localq.setUser(paramae.fzs.getString());
    localq.G(paramak.DL());
    localq.dA(paramae.fzo);
    String str1 = paramae.fzv.getString();
    aa.d("MicroMsg.MMBakItemVideo", "parseVideoMsgXML content:" + str1);
    Map localMap = u.aL(str1, "msg");
    if (localMap != null);
    try
    {
      localq.cJ(r.z((String)localMap.get(".msg.videomsg.$length"), 0));
      localq.ez(r.z((String)localMap.get(".msg.videomsg.$playlength"), 0));
      localq.gS((String)localMap.get(".msg.videomsg.$fromusername"));
      int i = r.z((String)localMap.get(".msg.videomsg.$type"), 0);
      aa.d("MicroMsg.MMBakItemVideo", "video msg exportType :" + i);
      if (i == 44);
      for (int j = 1; ; j = 0)
      {
        localq.eA(j);
        if (!r.a(paramae))
          break;
        localq.setStatus(199);
        String str2 = com.tencent.mm.ai.r.gY(localq.DG());
        paramak.uN(str2);
        localq.gR(str2);
        paramak.setType(43);
        paramak.setContent(o.a(localq.DG(), localq.DN(), false));
        localq.dy((int)a.d(paramak));
        localq.H(au.FC());
        localq.dw(0);
        aa.d("MicroMsg.MMBakItemVideo", "Insert fileName[" + localq.getFileName() + "] size:" + localq.vR() + " svrid:" + localq.AH() + " timelen:" + localq.DO() + " user:" + localq.getUser() + " human:" + localq.DG());
        d.Gj().DE().a(localq);
        r.a(paramae, 11, d.Gj().DE().ha(str2));
        String str3 = r.a(paramae, 10);
        if (str3 != null)
          m.f(r.io(str3), d.Gj().DE().gZ(str2), false);
        return 0;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.e("MicroMsg.MMBakItemVideo", "parsing voice msg xml failed");
        continue;
        localq.setStatus(111);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.aj
 * JD-Core Version:    0.6.2
 */