package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.a.f;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ab;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.y;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

public final class w
{
  public static String cJI = "<msg>";
  public static String cJJ = "</msg>";

  public static String a(ak paramak, ae paramae)
  {
    y localy = d.Gj().HC().uF(paramak.ot());
    if (localy == null)
      return null;
    f localf = d.im(localy.yK());
    if (localf == null)
    {
      localf = new f();
      localf.cJu = localy.yK();
      localf.cJv = localy.yK();
      localf.cJw = localy.yK();
      localf.cJt = localy.yK();
    }
    StringWriter localStringWriter = new StringWriter();
    try
    {
      XmlSerializer localXmlSerializer = XmlPullParserFactory.newInstance().newSerializer();
      localXmlSerializer.setOutput(localStringWriter);
      localXmlSerializer.startDocument("UTF-8", Boolean.valueOf(true));
      localXmlSerializer.startTag(null, "msg");
      localXmlSerializer.startTag(null, "emoji");
      localXmlSerializer.attribute(null, "fromusername", paramae.fzs.getString());
      localXmlSerializer.attribute(null, "tousername", paramae.fzt.getString());
      localXmlSerializer.attribute(null, "type", localy.getType());
      localXmlSerializer.attribute(null, "idbuffer", localy.aBF());
      localXmlSerializer.attribute(null, "md5", localf.cJu);
      localXmlSerializer.attribute(null, "len", "1024");
      localXmlSerializer.attribute(null, "androidmd5", localf.cJt);
      localXmlSerializer.attribute(null, "androidlen", "1024");
      localXmlSerializer.attribute(null, "productid", localy.aBK());
      localXmlSerializer.endTag(null, "emoji");
      if (localy.apQ())
      {
        localXmlSerializer.startTag(null, "gameext");
        Map localMap = u.aL(localy.getContent(), "gameext");
        String str3 = au.R((String)localMap.get(".gameext.$type"), "");
        String str4 = au.R((String)localMap.get(".gameext.$content"), "");
        if ((str3.equals("")) || (str4.equals("")))
        {
          localStringWriter.close();
          return "";
        }
        localXmlSerializer.attribute(null, "type", str3);
        localXmlSerializer.attribute(null, "content", str4);
        localXmlSerializer.endTag(null, "gameext");
      }
      localXmlSerializer.endTag(null, "msg");
      localXmlSerializer.endDocument();
      localStringWriter.flush();
      localStringWriter.close();
      String str1 = localStringWriter.getBuffer().toString();
      try
      {
        String str2 = str1.substring(str1.indexOf(cJI), str1.indexOf(cJJ) + cJJ.length());
        aa.d("MicroMsg.EmojiConvert", "xml " + str2);
        return str2;
      }
      catch (Exception localException)
      {
        return "";
      }
    }
    catch (XmlPullParserException localXmlPullParserException)
    {
      return "";
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return "";
    }
    catch (IllegalStateException localIllegalStateException)
    {
      return "";
    }
    catch (IOException localIOException)
    {
    }
    return "";
  }

  public static String ix(String paramString)
  {
    f localf = d.il(paramString);
    if (localf == null)
      return null;
    return localf.cJt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.w
 * JD-Core Version:    0.6.2
 */