package com.tencent.mm.plugin.scanner.a;

import java.io.StringReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public final class n
{
  private j ebv = new j();

  private static k a(XmlPullParser paramXmlPullParser)
  {
    return new k(paramXmlPullParser.getAttributeValue(null, "postOfficeBox"), paramXmlPullParser.getAttributeValue(null, "extendedAddress"), paramXmlPullParser.getAttributeValue(null, "street"), paramXmlPullParser.getAttributeValue(null, "locality"), paramXmlPullParser.getAttributeValue(null, "region"), paramXmlPullParser.getAttributeValue(null, "postalCode"), paramXmlPullParser.getAttributeValue(null, "country"));
  }

  private static m b(XmlPullParser paramXmlPullParser)
  {
    return new m(paramXmlPullParser.getAttributeValue(null, "type"), paramXmlPullParser.getAttributeValue(null, "buffer"));
  }

  public final void mz(String paramString)
  {
    XmlPullParserFactory localXmlPullParserFactory = XmlPullParserFactory.newInstance();
    localXmlPullParserFactory.setNamespaceAware(true);
    XmlPullParser localXmlPullParser = localXmlPullParserFactory.newPullParser();
    localXmlPullParser.setInput(new StringReader(paramString));
    int i = localXmlPullParser.getEventType();
    String str1 = "";
    if (i != 1)
    {
      switch (i)
      {
      case 3:
      default:
      case 2:
      case 4:
      case 1:
      }
      while (true)
      {
        i = localXmlPullParser.next();
        break;
        str1 = localXmlPullParser.getName();
        if (str1.equals("name"))
        {
          this.ebv.a(new l(localXmlPullParser.getAttributeValue(null, "firstName"), localXmlPullParser.getAttributeValue(null, "middleName"), localXmlPullParser.getAttributeValue(null, "lastName")));
        }
        else if (str1.equals("address"))
        {
          this.ebv.a(a(localXmlPullParser));
        }
        else if (str1.equals("deliveryAddress"))
        {
          this.ebv.b(a(localXmlPullParser));
        }
        else if (str1.equals("homeAddress"))
        {
          this.ebv.c(a(localXmlPullParser));
        }
        else if (str1.equals("workAddress"))
        {
          this.ebv.d(a(localXmlPullParser));
        }
        else if (str1.equals("photo"))
        {
          this.ebv.a(b(localXmlPullParser));
        }
        else if (str1.equals("logo"))
        {
          this.ebv.b(b(localXmlPullParser));
        }
        else if (str1.equals("sound"))
        {
          this.ebv.c(b(localXmlPullParser));
          continue;
          String str2 = localXmlPullParser.getText();
          if ((str2 != null) && (str2.trim().length() > 0))
          {
            String str3 = str2.trim();
            if (str1.equals("nickName"))
            {
              this.ebv.fc(str3);
            }
            else if (str1.equals("photoUrl"))
            {
              this.ebv.mo(str3);
            }
            else if (str1.equals("birthday"))
            {
              this.ebv.mp(str3);
            }
            else if (str1.equals("mobilePhoneNumber"))
            {
              this.ebv.mq(str3);
            }
            else if (str1.equals("homePhoneNumber"))
            {
              this.ebv.mr(str3);
            }
            else if (str1.equals("workPhoneNumber"))
            {
              this.ebv.ms(str3);
            }
            else if (str1.equals("telAVPhoneNumber"))
            {
              this.ebv.mt(str3);
            }
            else if (str1.equals("phoneNumber"))
            {
              this.ebv.mu(str3);
            }
            else if (str1.equals("email"))
            {
              this.ebv.bF(str3);
            }
            else if (str1.equals("title"))
            {
              this.ebv.setTitle(str3);
            }
            else if (str1.equals("role"))
            {
              this.ebv.mv(str3);
            }
            else if (str1.equals("agent"))
            {
              this.ebv.mw(str3);
            }
            else if (str1.equals("note"))
            {
              this.ebv.mx(str3);
            }
            else if (str1.equals("url"))
            {
              this.ebv.setUrl(str3);
            }
            else if (str1.equals("organization"))
            {
              this.ebv.my(str3);
              continue;
              j.a(this.ebv);
            }
          }
        }
      }
    }
    j.a(this.ebv);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.n
 * JD-Core Version:    0.6.2
 */