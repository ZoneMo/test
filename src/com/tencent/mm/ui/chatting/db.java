package com.tencent.mm.ui.chatting;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class db
{
  private static final LinearLayout.LayoutParams gMK = new LinearLayout.LayoutParams(-1, -2);

  private static boolean a(LinearLayout paramLinearLayout, SpannableString paramSpannableString, List paramList)
  {
    aa.d("MicroMsg.ChattingItemDyeingTemplateDecorator", "addLines, nodeList size = " + paramList.size());
    int i = paramSpannableString.length();
    Iterator localIterator = paramList.iterator();
    dc localdc;
    for (int j = 0; localIterator.hasNext(); j = localdc.offset)
    {
      localdc = (dc)localIterator.next();
      if (localdc.offset > j)
      {
        TextView localTextView2 = new TextView(paramLinearLayout.getContext());
        localTextView2.setText(paramSpannableString.subSequence(j, Math.min(localdc.offset, i)));
        localTextView2.setLineSpacing(3.0F, 1.0F);
        paramLinearLayout.addView(localTextView2, gMK);
      }
      TextView localTextView3 = new TextView(paramLinearLayout.getContext());
      localTextView3.setText(ww(localdc.gMO));
      localTextView3.setSingleLine(true);
      if (localdc.gML != 14)
        localTextView3.setTextSize(localdc.gML);
      if (localdc.gMM)
        localTextView3.setTypeface(null, 1);
      if (localdc.gMN)
        localTextView3.setPaintFlags(0x8 | localTextView3.getPaintFlags());
      localTextView3.setTextColor(localdc.color);
      paramLinearLayout.addView(localTextView3, gMK);
    }
    if (j >= i)
    {
      aa.i("MicroMsg.ChattingItemDyeingTemplateDecorator", "addLines, lastOffset >= maxLength, lastOffset = " + j + ", maxLength = " + i);
      return true;
    }
    TextView localTextView1 = new TextView(paramLinearLayout.getContext());
    localTextView1.setText(paramSpannableString.subSequence(j, i));
    localTextView1.setLineSpacing(2.0F, 1.0F);
    paramLinearLayout.addView(localTextView1, gMK);
    return true;
  }

  public static boolean a(LinearLayout paramLinearLayout, Map paramMap)
  {
    if (paramLinearLayout == null)
    {
      aa.e("MicroMsg.ChattingItemDyeingTemplateDecorator", "decorateStyle fail, digestLl is null");
      return false;
    }
    String str1 = (String)paramMap.get(".msg.appmsg.mmreader.category.item.digest");
    if (cj.hX(str1))
    {
      aa.e("MicroMsg.ChattingItemDyeingTemplateDecorator", "decorateStyle, digest is null");
      return false;
    }
    SpannableString localSpannableString = new SpannableString(str1);
    localSpannableString.setSpan(new ForegroundColorSpan(-16777216), 0, localSpannableString.length(), 17);
    int i = 0;
    StringBuilder localStringBuilder1 = new StringBuilder(".msg.appmsg.mmreader.category.item.styles.style");
    String str2;
    label93: String str3;
    int i3;
    ArrayList localArrayList;
    StringBuilder localStringBuilder2;
    if (i == 0)
    {
      str2 = "";
      str3 = str2;
      if (paramMap.containsKey(str3))
        break label244;
      aa.i("MicroMsg.ChattingItemDyeingTemplateDecorator", "decorateStyle end, total style count = " + i);
      i3 = 0;
      localArrayList = new ArrayList();
      localStringBuilder2 = new StringBuilder(".msg.appmsg.mmreader.category.item.styles.line");
      if (i3 != 0)
        break label822;
    }
    String str5;
    label822: for (String str4 = ""; ; str4 = String.valueOf(i3))
    {
      str5 = str4;
      if (paramMap.containsKey(str5))
        break label832;
      aa.d("MicroMsg.ChattingItemDyeingTemplateDecorator", "decorateStyle end, total line count = " + i3);
      Collections.sort(localArrayList);
      paramLinearLayout.removeAllViews();
      a(paramLinearLayout, localSpannableString, localArrayList);
      return true;
      str2 = String.valueOf(i);
      break label93;
      label244: dd localdd = dd.h(paramMap, str3);
      if (localdd == null)
        aa.e("MicroMsg.ChattingItemDyeingTemplateDecorator", "parseFrom fail, skip to next, styleKey = " + str3);
      while (true)
      {
        i++;
        break;
        if (localdd.gMP >= localdd.gMQ)
        {
          aa.w("MicroMsg.ChattingItemDyeingTemplateDecorator", "addStyle, no need to add, rangeFrom = " + localdd.gMP + ", rangeTo = " + localdd.gMQ);
        }
        else
        {
          int j = localdd.gMP;
          int k = localdd.gMQ;
          int m = localdd.gML;
          boolean bool1 = localdd.gMM;
          boolean bool2 = localdd.gMN;
          aa.d("MicroMsg.ChattingItemDyeingTemplateDecorator", "setFont, rangeFrom = " + j + ", rangeTo = " + k + ", fontSize = " + m + ", isBlack = " + bool1 + ", isUnderLine = " + bool2);
          if (j < 0)
          {
            Object[] arrayOfObject4 = new Object[3];
            arrayOfObject4[0] = Integer.valueOf(localSpannableString.length());
            arrayOfObject4[1] = Integer.valueOf(j);
            arrayOfObject4[2] = Integer.valueOf(k);
            aa.b("MicroMsg.ChattingItemDyeingTemplateDecorator", "setFont, params error. length:%d, from:%d, to:%d", arrayOfObject4);
            j = 0;
          }
          if (k > localSpannableString.length())
          {
            Object[] arrayOfObject3 = new Object[3];
            arrayOfObject3[0] = Integer.valueOf(localSpannableString.length());
            arrayOfObject3[1] = Integer.valueOf(j);
            arrayOfObject3[2] = Integer.valueOf(k);
            aa.b("MicroMsg.ChattingItemDyeingTemplateDecorator", "setFont, params error. length:%d, from:%d, to:%d", arrayOfObject3);
            k = localSpannableString.length();
          }
          if (bool1)
            localSpannableString.setSpan(new StyleSpan(1), j, k, 17);
          if (bool2)
            localSpannableString.setSpan(new UnderlineSpan(), j, k, 17);
          if (m != 14)
            localSpannableString.setSpan(new AbsoluteSizeSpan(m), j, k, 17);
          int n = localdd.gMP;
          int i1 = localdd.gMQ;
          int i2 = localdd.color;
          aa.d("MicroMsg.ChattingItemDyeingTemplateDecorator", "setColor, rangeFrom = " + n + ", rangeTo = " + i1 + ", color = " + i2);
          if (n < 0)
          {
            Object[] arrayOfObject2 = new Object[3];
            arrayOfObject2[0] = Integer.valueOf(localSpannableString.length());
            arrayOfObject2[1] = Integer.valueOf(n);
            arrayOfObject2[2] = Integer.valueOf(i1);
            aa.b("MicroMsg.ChattingItemDyeingTemplateDecorator", "setColor, params error. length:%d, from:%d, to:%d", arrayOfObject2);
            n = 0;
          }
          if (i1 > localSpannableString.length())
          {
            Object[] arrayOfObject1 = new Object[3];
            arrayOfObject1[0] = Integer.valueOf(localSpannableString.length());
            arrayOfObject1[1] = Integer.valueOf(n);
            arrayOfObject1[2] = Integer.valueOf(i1);
            aa.b("MicroMsg.ChattingItemDyeingTemplateDecorator", "setColor, params error. length:%d, from:%d, to:%d", arrayOfObject1);
            i1 = localSpannableString.length();
          }
          localSpannableString.setSpan(new ForegroundColorSpan(i2), n, i1, 17);
        }
      }
    }
    label832: dc localdc = dc.g(paramMap, str5);
    if (localdc == null)
      aa.e("MicroMsg.ChattingItemDyeingTemplateDecorator", "parseFrom fail, skip to next, lineKey = " + str5);
    while (true)
    {
      i3++;
      break;
      localArrayList.add(localdc);
    }
  }

  public static boolean a(ChattingItemDyeingTemplateTopView paramChattingItemDyeingTemplateTopView, Map paramMap)
  {
    if (paramChattingItemDyeingTemplateTopView == null)
    {
      aa.e("MicroMsg.ChattingItemDyeingTemplateDecorator", "decorateTopColor fail, target view is null");
      return false;
    }
    String str = (String)paramMap.get(".msg.appmsg.mmreader.category.item.styles.topColor");
    if (cj.hX(str))
    {
      aa.d("MicroMsg.ChattingItemDyeingTemplateDecorator", "decorateTopColor fail, color is null");
      paramChattingItemDyeingTemplateTopView.setColor(-1);
      return false;
    }
    int i = as(str, -1);
    aa.d("MicroMsg.ChattingItemDyeingTemplateDecorator", "decorateTopColor, color(hex) = " + Integer.toHexString(i));
    paramChattingItemDyeingTemplateTopView.setColor(i);
    return true;
  }

  private static int as(String paramString, int paramInt)
  {
    if (cj.hX(paramString))
      return paramInt;
    try
    {
      int i = Color.parseColor(paramString);
      return i;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ChattingItemDyeingTemplateDecorator", "parseFrom, ex = " + localException.getMessage());
    }
    return paramInt;
  }

  private static String ww(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    while (localStringBuilder.length() < 80)
      localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.db
 * JD-Core Version:    0.6.2
 */