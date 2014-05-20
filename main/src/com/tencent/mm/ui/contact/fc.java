package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.f.a;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ab;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.MaskLayout;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

final class fc extends BaseAdapter
{
  private Context context = null;
  private k ezc = null;
  private Map gVJ = new HashMap();
  private Map gVK = new HashMap();
  private ColorStateList gVx;
  private ColorStateList gVy;

  public fc(Context paramContext, List paramList)
  {
    this.context = paramContext;
    this.gVJ.clear();
    this.gVK.clear();
    this.ezc = be.uz().su();
    Iterator localIterator1 = paramList.iterator();
    int i = 0;
    while (localIterator1.hasNext())
    {
      long l = ((Long)localIterator1.next()).longValue();
      ab localab = aq.apB();
      if (localab != null)
      {
        Iterator localIterator2 = localab.be(l).iterator();
        while (localIterator2.hasNext())
        {
          String str = (String)localIterator2.next();
          a locala = new a();
          locala.setUsername(str);
          this.gVK.put(Integer.valueOf(this.gVJ.size()), localab.bf(l));
          Map localMap = this.gVJ;
          int j = i + 1;
          localMap.put(Integer.valueOf(i), locala);
          i = j;
        }
      }
    }
    try
    {
      XmlResourceParser localXmlResourceParser1 = paramContext.getResources().getXml(2131493120);
      XmlResourceParser localXmlResourceParser2 = paramContext.getResources().getXml(2131493122);
      this.gVx = ColorStateList.createFromXml(paramContext.getResources(), localXmlResourceParser1);
      this.gVy = ColorStateList.createFromXml(paramContext.getResources(), localXmlResourceParser2);
      return;
    }
    catch (IOException localIOException)
    {
    }
    catch (XmlPullParserException localXmlPullParserException)
    {
    }
  }

  private String nK(int paramInt)
  {
    if (!this.gVK.containsKey(Integer.valueOf(paramInt)))
      return "";
    return (String)this.gVK.get(Integer.valueOf(paramInt));
  }

  public final int getCount()
  {
    return this.gVJ.size();
  }

  public final Object getItem(int paramInt)
  {
    Object localObject;
    if (paramInt < 0)
      localObject = null;
    i locali;
    do
    {
      do
      {
        return localObject;
        localObject = (a)this.gVJ.get(Integer.valueOf(paramInt));
      }
      while (((a)localObject).rl() != 0);
      locali = this.ezc.tO(((a)localObject).getUsername());
    }
    while (locali == null);
    this.gVJ.put(Integer.valueOf(paramInt), locali);
    return locali;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    fd localfd1;
    String str;
    label108: a locala;
    label156: TextView localTextView1;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903225, null);
      fd localfd2 = new fd((byte)0);
      localfd2.cMT = ((TextView)paramView.findViewById(2131361912));
      localfd2.cTU = ((MaskLayout)paramView.findViewById(2131361915));
      localfd2.cMU = ((TextView)paramView.findViewById(2131361923));
      localfd2.dKL = ((TextView)paramView.findViewById(2131361924));
      paramView.setTag(localfd2);
      localfd1 = localfd2;
      if ((a)getItem(paramInt - 1) != null)
        break label287;
      str = "";
      locala = (a)getItem(paramInt);
      if (paramInt != 0)
        break label299;
      localfd1.cMT.setVisibility(0);
      localfd1.cMT.setText(nK(paramInt));
      localfd1.cMT.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
      localTextView1 = localfd1.cMU;
      if (w.db(locala.getUsername()))
        break label366;
    }
    label287: label299: label366: for (ColorStateList localColorStateList = this.gVx; ; localColorStateList = this.gVy)
    {
      localTextView1.setTextColor(localColorStateList);
      c.f((ImageView)localfd1.cTU.getContentView(), locala.getUsername());
      localfd1.dKL.setVisibility(8);
      localfd1.cTU.setVisibility(0);
      TextView localTextView2 = localfd1.cMU;
      localTextView2.setText(com.tencent.mm.ao.b.g(this.context, locala.rr(), (int)localfd1.cMU.getTextSize()));
      localfd1.cMU.setVisibility(0);
      return paramView;
      localfd1 = (fd)paramView.getTag();
      break;
      str = nK(paramInt - 1);
      break label108;
      if ((paramInt > 0) && (!nK(paramInt).equals(str)))
      {
        localfd1.cMT.setVisibility(0);
        localfd1.cMT.setText(nK(paramInt));
        localfd1.cMT.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        break label156;
      }
      localfd1.cMT.setVisibility(8);
      break label156;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.fc
 * JD-Core Version:    0.6.2
 */