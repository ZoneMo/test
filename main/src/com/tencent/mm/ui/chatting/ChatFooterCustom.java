package com.tencent.mm.ui.chatting;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.c.a.ec;
import com.tencent.mm.c.a.ed;
import com.tencent.mm.c.a.ef;
import com.tencent.mm.c.a.eg;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dt;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.p.g;
import com.tencent.mm.p.z;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.dn;
import com.tencent.mm.ui.tools.WebViewUI;
import java.io.File;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

public class ChatFooterCustom extends LinearLayout
  implements View.OnClickListener, dt
{
  private String dVs;
  private i eSm;
  private com.tencent.mm.pluginsdk.ui.chat.am fqd = null;
  private LinearLayout gLi = null;
  private ImageView gLj = null;
  private ImageView gLk = null;
  private aq gLl = null;
  private jv gLm = null;
  private int gLn = 0;
  private ca gLo;
  private ao gLp;
  private ap gLq;
  private final String gLr = "qrcode";
  private final String gLs = "barcode";
  private com.tencent.mm.p.h gLt;

  public ChatFooterCustom(Context paramContext)
  {
    this(paramContext, null);
  }

  public ChatFooterCustom(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ChatFooterCustom(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
  }

  private void a(com.tencent.mm.p.h paramh)
  {
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = this.dVs;
    arrayOfObject[1] = Integer.valueOf(paramh.id);
    arrayOfObject[2] = paramh.cnG;
    arrayOfObject[3] = com.tencent.mm.p.h.cnF;
    arrayOfObject[4] = paramh.content;
    localm.d(10809, arrayOfObject);
  }

  private void aIU()
  {
    s.a((Activity)getContext(), 217, 9, 3);
  }

  private void aIV()
  {
    File localFile = new File(com.tencent.mm.storage.h.cfG);
    if ((!localFile.exists()) && (!localFile.mkdir()))
      Toast.makeText((Activity)getContext(), getContext().getString(2131165677), 1).show();
    while (s.a((Activity)getContext(), com.tencent.mm.storage.h.cfG, "microMsg." + System.currentTimeMillis() + ".jpg", 201))
      return;
    Toast.makeText((Activity)getContext(), getContext().getString(2131165340), 1).show();
  }

  private void aIW()
  {
    aa.d("ChatCustomFooter", "switch footer");
    if (this.fqd != null)
    {
      this.gLl.aIX();
      this.fqd.cF(true);
    }
  }

  private boolean al(Object paramObject)
  {
    if (!(paramObject instanceof ec))
    {
      aa.e("ChatCustomFooter", "send current location data type error!");
      return true;
    }
    ec localec = (ec)paramObject;
    double d1 = localec.bOW.bOZ;
    double d2 = localec.bOW.bPa;
    int i = localec.bOW.bPb;
    String str1 = localec.bOW.label;
    String str2 = localec.bOW.bPc;
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = Double.valueOf(d1);
    arrayOfObject[1] = Double.valueOf(d2);
    arrayOfObject[2] = Integer.valueOf(i);
    arrayOfObject[3] = str1;
    arrayOfObject[4] = str2;
    aa.e("ChatCustomFooter", "lat:%f , lng:%f , scale: %d , label:%s , poiname:%s", arrayOfObject);
    if ((this.gLt == null) || (this.gLt.cnJ != 105))
    {
      aa.e("ChatCustomFooter", "cache lost or location type is not correct");
      return true;
    }
    this.gLt.cnI = com.tencent.mm.p.h.cnF;
    this.gLt.a(d1, d2, i, str1, str2);
    b(this.gLt);
    a(this.gLt);
    return true;
  }

  private boolean am(Object paramObject)
  {
    if (!(paramObject instanceof ef))
    {
      aa.e("ChatCustomFooter", "send current location data type error!");
      return false;
    }
    ef localef = (ef)paramObject;
    if ((this.gLt == null) || ((this.gLt.cnJ != 100) && (this.gLt.cnJ != 101)))
    {
      aa.e("ChatCustomFooter", "null pointer in cache or type error");
      return false;
    }
    String str1;
    switch (localef.bPd.bPf)
    {
    default:
      str1 = "";
    case 0:
    case 1:
    }
    while (true)
    {
      String str2 = localef.bPd.bPg;
      aa.e("ChatCustomFooter", "scan type: %s , scan result:%s", new Object[] { str1, str2 });
      this.gLt.cnI = com.tencent.mm.p.h.cnF;
      this.gLt.D(str1, str2);
      b(this.gLt);
      a(this.gLt);
      return true;
      str1 = "qrcode";
      continue;
      str1 = "barcode";
    }
  }

  private void b(com.tencent.mm.p.h paramh)
  {
    aa.d("ChatCustomFooter", paramh.getInfo());
    z localz = new z(this.dVs, 1, paramh.getInfo());
    be.uA().d(localz);
  }

  public final void D(i parami)
  {
    this.eSm = parami;
  }

  public final void FR()
  {
    this.gLi = ((LinearLayout)findViewById(2131362248));
    this.gLk = ((ImageView)findViewById(2131362247));
    this.gLk.setOnClickListener(new am(this));
    this.gLj = ((ImageView)findViewById(2131362249));
    this.gLj.setOnClickListener(new an(this));
  }

  public final void a(ViewGroup paramViewGroup, g paramg, String paramString)
  {
    if ((paramg == null) || (paramg.cnC == null) || (paramString == null))
      throw new IllegalArgumentException(" menuInfo or username is null ! ");
    this.gLn = Math.min(paramg.cnC.size(), 6);
    aa.d("ChatCustomFooter", "setMenus, count:" + this.gLn);
    if (this.gLn <= 0)
      throw new IllegalArgumentException(" mTabCount is invalid ! ");
    int i;
    label122: FrameLayout localFrameLayout;
    TextView localTextView;
    int j;
    if (this.gLn > 3)
    {
      this.gLj.setVisibility(0);
      this.gLi.setWeightSum(Math.min(this.gLn, 3));
      i = 0;
      if (i >= 6)
        break label325;
      localFrameLayout = (FrameLayout)this.gLi.getChildAt(i);
      localTextView = (TextView)localFrameLayout.getChildAt(0);
      if (i >= this.gLn)
        break label263;
      com.tencent.mm.p.h localh = (com.tencent.mm.p.h)paramg.cnC.get(i);
      localFrameLayout.setTag(localh);
      localTextView.setText(com.tencent.mm.ao.b.e(getContext(), localh.name, -1));
      if (localh.type != 0)
        break label257;
      j = 2130838865;
      label217: localTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, j, 0);
      localFrameLayout.setOnClickListener(this);
      localFrameLayout.setVisibility(0);
    }
    while (true)
    {
      i++;
      break label122;
      this.gLj.setVisibility(8);
      break;
      label257: j = 0;
      break label217;
      label263: if ((i >= 3) && (this.gLn > 3))
      {
        localFrameLayout.setTag(null);
        localTextView.setText("");
        localTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        localFrameLayout.setOnClickListener(null);
        localFrameLayout.setVisibility(0);
      }
      else
      {
        localFrameLayout.setVisibility(8);
      }
    }
    label325: this.dVs = paramString;
    this.gLl = new aq(getContext(), paramViewGroup);
    this.gLl.setOnItemClickListener(new ak(this));
    this.gLp = new ao(this);
    this.gLq = new ap(this);
    com.tencent.mm.sdk.b.a.ayH().a("PublishLocation", this.gLp);
    com.tencent.mm.sdk.b.a.ayH().a("PublishScanCodeResult", this.gLq);
  }

  public final void a(com.tencent.mm.pluginsdk.ui.chat.am paramam)
  {
    this.fqd = paramam;
  }

  public final void a(jv paramjv)
  {
    this.gLm = paramjv;
  }

  public final void agJ()
  {
    if (this.gLp != null)
      com.tencent.mm.sdk.b.a.ayH().b("PublishLocation", this.gLp);
    if (this.gLq != null)
      com.tencent.mm.sdk.b.a.ayH().b("PublishScanCodeResult", this.gLq);
  }

  public final void b(l paraml)
  {
    String str1 = com.tencent.mm.platformtools.an.a(paraml.fzv);
    aa.i("ChatCustomFooter", "SysCmdMsgExtension:" + str1);
    try
    {
      XmlPullParserFactory localXmlPullParserFactory = XmlPullParserFactory.newInstance();
      localXmlPullParserFactory.setNamespaceAware(true);
      XmlPullParser localXmlPullParser = localXmlPullParserFactory.newPullParser();
      localXmlPullParser.setInput(new StringReader(str1));
      int i = localXmlPullParser.getEventType();
      break label180;
      while (true)
      {
        i = localXmlPullParser.next();
        break;
        String str2 = localXmlPullParser.getName();
        if ("sysmsg".equals(str2))
        {
          if ("type".equals(localXmlPullParser.getAttributeName(0)))
            localXmlPullParser.getAttributeValue(0);
        }
        else if ("username".equals(str2))
          localXmlPullParser.nextText();
        else if ("data".equals(str2))
          localXmlPullParser.nextText();
      }
      label180: if (i != 1)
        switch (i)
        {
        case 1:
        default:
        case 0:
        case 2:
        }
    }
    catch (Exception localException)
    {
    }
  }

  public final boolean g(int paramInt, Object paramObject)
  {
    if (paramObject == null)
      aa.e("ChatCustomFooter", "returned data is null, maybe serve for UI");
    label121: 
    do
    {
      ArrayList localArrayList1;
      ArrayList localArrayList2;
      do
      {
        return true;
        switch (paramInt)
        {
        default:
        case 203:
        case 217:
        }
        while (true)
          switch (paramInt)
          {
          default:
            return true;
          case 1001:
            aa.d("ChatCustomFooter", "return from camera");
            if ((paramObject instanceof Intent))
              break label121;
            aa.e("ChatCustomFooter", "type error");
            return true;
            paramInt = 1001;
            continue;
            paramInt = 1002;
          case 1002:
          case 1005:
          case 1006:
          case 1003:
          case 1004:
          }
        String str3 = ((Intent)paramObject).getStringExtra("CropImage_OutputPath");
        if (str3 == null)
        {
          aa.e("ChatCustomFooter", "return null path");
          return true;
        }
        File localFile2 = new File(str3);
        if ((localFile2.exists()) && (localFile2.isFile()))
        {
          aa.e("ChatCustomFooter", "%s retrieved!", new Object[] { str3 });
          String str4 = com.tencent.mm.a.f.c(localFile2);
          aa.e("ChatCustomFooter", "MD5 is %s", new Object[] { str4 });
          if ((this.gLt == null) || ((this.gLt.cnJ != 102) && (this.gLt.cnJ != 103)))
          {
            aa.e("ChatCustomFooter", "camera photo cache lost or temp type error! cannot pass info!");
            return true;
          }
          ArrayList localArrayList3 = new ArrayList();
          localArrayList3.add(str4);
          this.gLt.cnI = com.tencent.mm.p.h.cnF;
          this.gLt.d(localArrayList3);
          a(this.gLt);
          b(this.gLt);
          return true;
        }
        aa.b("ChatCustomFooter", "%s cannot be retrieved as file or is directory!!", new Object[] { str3 });
        return true;
        aa.d("ChatCustomFooter", "return from albumn");
        if (!(paramObject instanceof Intent))
        {
          aa.e("ChatCustomFooter", "type error");
          return true;
        }
        localArrayList1 = ((Intent)paramObject).getStringArrayListExtra("CropImage_OutputPath_List");
        localArrayList2 = new ArrayList();
      }
      while ((localArrayList1 == null) || (localArrayList1.size() == 0));
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        aa.e("ChatCustomFooter", "retrieving bitmap path %s", new Object[] { str1 });
        if (str1 != null)
        {
          File localFile1 = new File(str1);
          if ((localFile1.exists()) && (localFile1.isFile()))
          {
            aa.e("ChatCustomFooter", "%s retrieved!", new Object[] { str1 });
            String str2 = com.tencent.mm.a.f.c(localFile1);
            localArrayList2.add(str2);
            aa.e("ChatCustomFooter", "MD5 is %s", new Object[] { str2 });
          }
        }
        else
        {
          aa.e("ChatCustomFooter", "no file contained!");
          continue;
          aa.b("ChatCustomFooter", "%s cannot be retrieved as file or is directory!!", new Object[] { str1 });
        }
      }
      if ((this.gLt == null) || ((this.gLt.cnJ != 104) && (this.gLt.cnJ != 103)))
      {
        aa.e("ChatCustomFooter", "albumn photo cache lost or temp type error! cannot pass info!");
        return true;
      }
      this.gLt.cnI = com.tencent.mm.p.h.cnF;
      this.gLt.d(localArrayList2);
      a(this.gLt);
      b(this.gLt);
      return true;
      aa.d("ChatCustomFooter", "send current");
      al(paramObject);
      return true;
      aa.d("ChatCustomFooter", "send selected");
      al(paramObject);
      return true;
      aa.d("ChatCustomFooter", "send qrcode wait msg");
    }
    while (!am(paramObject));
    this.gLm.aKd();
    return true;
    aa.d("ChatCustomFooter", "send qrcode direct");
    am(paramObject);
    return true;
  }

  public void onClick(View paramView)
  {
    while (true)
    {
      com.tencent.mm.p.h localh;
      try
      {
        Object localObject2 = paramView.getTag();
        boolean bool1 = localObject2 instanceof com.tencent.mm.p.h;
        if (!bool1)
          return;
        localh = (com.tencent.mm.p.h)localObject2;
        localh.content = "";
        switch (localh.type)
        {
        case 0:
          int[] arrayOfInt = new int[2];
          paramView.getLocationOnScreen(arrayOfInt);
          Object[] arrayOfObject3 = new Object[3];
          arrayOfObject3[0] = Integer.valueOf(arrayOfInt[0]);
          arrayOfObject3[1] = Integer.valueOf(arrayOfInt[1]);
          arrayOfObject3[2] = Integer.valueOf(paramView.getWidth());
          aa.e("ChatCustomFooter", "show/dismiss submenu, pos:(%d, %d), view width:%d", arrayOfObject3);
          this.gLl.b(localh, arrayOfInt[0] + paramView.getWidth() / 2);
          continue;
        case 2:
        case 3:
        case 1:
        case 4:
        }
      }
      finally
      {
      }
      aa.d("ChatCustomFooter", "start webview url");
      this.gLl.aIX();
      localh.cnI = com.tencent.mm.p.h.cnD;
      b(localh);
      if (!lm.aq(getContext(), localh.value))
      {
        Intent localIntent4 = new Intent();
        localIntent4.setClass(getContext(), WebViewUI.class);
        localIntent4.putExtra("rawUrl", localh.value);
        localIntent4.putExtra("geta8key_username", this.dVs);
        getContext().startActivity(localIntent4);
        continue;
        aa.d("ChatCustomFooter", "switch to input");
        this.gLl.aIX();
        aIW();
        localh.cnI = com.tencent.mm.p.h.cnD;
        b(localh);
        continue;
        aa.d("ChatCustomFooter", "get latest message");
        this.gLl.aIX();
        localh.cnI = com.tencent.mm.p.h.cnD;
        m localm2 = m.dZN;
        Object[] arrayOfObject2 = new Object[5];
        arrayOfObject2[0] = this.dVs;
        arrayOfObject2[1] = Integer.valueOf(localh.id);
        arrayOfObject2[2] = localh.cnG;
        arrayOfObject2[3] = com.tencent.mm.p.h.cnD;
        arrayOfObject2[4] = "";
        localm2.d(10809, arrayOfObject2);
        b(localh);
        this.gLm.aKd();
        continue;
        aa.d("ChatCustomFooter", "MM_BIZ_CUSTOM_MENU_TYPE_CUSTOM_CLICK");
        this.gLl.aIX();
        localh.cnI = com.tencent.mm.p.h.cnE;
        m localm1 = m.dZN;
        Object[] arrayOfObject1 = new Object[5];
        arrayOfObject1[0] = this.dVs;
        arrayOfObject1[1] = Integer.valueOf(localh.id);
        arrayOfObject1[2] = localh.cnG;
        arrayOfObject1[3] = com.tencent.mm.p.h.cnE;
        arrayOfObject1[4] = "";
        localm1.d(10809, arrayOfObject1);
        this.gLt = localh;
        switch (localh.cnJ)
        {
        case 100:
          Intent localIntent3 = new Intent();
          localIntent3.putExtra("BaseScanUI_only_scan_qrcode_with_zbar", true);
          localIntent3.putExtra("BaseScanUI_qrcode_right_btn_direct_album", true);
          localIntent3.putExtra("key_is_finish_on_scanned", true);
          com.tencent.mm.ak.a.b(getContext(), "scanner", ".ui.BaseScanUI", localIntent3);
          break;
        case 101:
          Intent localIntent2 = new Intent();
          localIntent2.putExtra("BaseScanUI_only_scan_qrcode_with_zbar", true);
          localIntent2.putExtra("BaseScanUI_qrcode_right_btn_direct_album", true);
          localIntent2.putExtra("key_is_finish_on_scanned", false);
          com.tencent.mm.ak.a.b(getContext(), "scanner", ".ui.BaseScanUI", localIntent2);
          break;
        case 102:
          aIV();
          break;
        case 103:
          if (!be.uz().isSDCardAvailable())
          {
            dn.bW(getContext());
          }
          else
          {
            String[] arrayOfString = new String[2];
            arrayOfString[0] = getContext().getString(2131165676);
            arrayOfString[1] = getContext().getString(2131165675);
            com.tencent.mm.ui.base.h.b(getContext(), null, arrayOfString, null, new al(this));
          }
          break;
        case 104:
          aIU();
        case 105:
        }
      }
    }
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("map_view_type", 0);
    StringBuilder localStringBuilder1 = new StringBuilder("getSender ");
    if (this.gLo == null);
    for (boolean bool2 = true; ; bool2 = false)
    {
      StringBuilder localStringBuilder2 = localStringBuilder1.append(bool2).append(" ");
      String str1;
      label824: String str2;
      if (this.gLo == null)
      {
        str1 = v.th();
        aa.d("ChatCustomFooter", str1);
        if (this.gLo != null)
          break label933;
        str2 = v.th();
        label851: localIntent1.putExtra("map_sender_name", str2);
        if (this.eSm != null)
          break label945;
      }
      label933: label945: String str3;
      for (Object localObject3 = null; ; localObject3 = str3)
      {
        localIntent1.putExtra("map_talker_name", (String)localObject3);
        localIntent1.putExtra("view_type_key", 1);
        localIntent1.putExtra("key_get_location_type", 1);
        com.tencent.mm.ak.a.b(getContext(), "location", ".ui.RedirectUI", localIntent1);
        break;
        str1 = this.gLo.getName();
        break label824;
        str2 = this.gLo.getName();
        break label851;
        str3 = this.eSm.getUsername();
      }
      break;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ChatFooterCustom
 * JD-Core Version:    0.6.2
 */