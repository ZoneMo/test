package com.tencent.mm.pluginsdk.ui.chat;

import android.content.Context;
import android.widget.BaseAdapter;
import com.tencent.mm.ak.a;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;
import java.util.List;

final class b extends BaseAdapter
{
  List fpm;
  private int fpn;
  private int fpo;

  public b(AppGrid paramAppGrid, Context paramContext, List paramList)
  {
    this.fpm = paramList;
    this.fpn = e.a(paramContext, 64.0F);
    this.fpo = e.a(paramContext, 53.299999F);
  }

  public final int getCount()
  {
    if (AppGrid.a(this.fpl) == -1 + AppGrid.e(this.fpl))
    {
      a.avr();
      return 1 + AppGrid.f(this.fpl) - AppGrid.a(this.fpl) * AppGrid.b(this.fpl);
    }
    return AppGrid.b(this.fpl);
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  // ERROR //
  public final android.view.View getView(int paramInt, android.view.View paramView, android.view.ViewGroup paramViewGroup)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnonnull +325 -> 326
    //   4: new 68	com/tencent/mm/pluginsdk/ui/chat/c
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 71	com/tencent/mm/pluginsdk/ui/chat/c:<init>	(Lcom/tencent/mm/pluginsdk/ui/chat/b;)V
    //   12: astore 4
    //   14: aload_0
    //   15: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   18: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   21: getstatic 80	com/tencent/mm/k:aSl	I
    //   24: aconst_null
    //   25: invokestatic 86	android/view/View:inflate	(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    //   28: astore_2
    //   29: aload 4
    //   31: aload_2
    //   32: getstatic 91	com/tencent/mm/i:amm	I
    //   35: invokevirtual 95	android/view/View:findViewById	(I)Landroid/view/View;
    //   38: checkcast 97	android/widget/ImageView
    //   41: putfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   44: aload 4
    //   46: aload_2
    //   47: getstatic 104	com/tencent/mm/i:amn	I
    //   50: invokevirtual 95	android/view/View:findViewById	(I)Landroid/view/View;
    //   53: putfield 108	com/tencent/mm/pluginsdk/ui/chat/c:flY	Landroid/view/View;
    //   56: aload 4
    //   58: aload_2
    //   59: getstatic 111	com/tencent/mm/i:amo	I
    //   62: invokevirtual 95	android/view/View:findViewById	(I)Landroid/view/View;
    //   65: checkcast 113	android/widget/TextView
    //   68: putfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   71: aload 4
    //   73: aload_2
    //   74: getstatic 120	com/tencent/mm/i:amp	I
    //   77: invokevirtual 95	android/view/View:findViewById	(I)Landroid/view/View;
    //   80: checkcast 113	android/widget/TextView
    //   83: putfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   86: aload 4
    //   88: aload_2
    //   89: getstatic 126	com/tencent/mm/i:amq	I
    //   92: invokevirtual 95	android/view/View:findViewById	(I)Landroid/view/View;
    //   95: putfield 129	com/tencent/mm/pluginsdk/ui/chat/c:fpq	Landroid/view/View;
    //   98: aload_2
    //   99: aload 4
    //   101: invokevirtual 133	android/view/View:setTag	(Ljava/lang/Object;)V
    //   104: ldc 135
    //   106: new 137	java/lang/StringBuilder
    //   109: dup
    //   110: ldc 139
    //   112: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   115: iload_1
    //   116: invokevirtual 146	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   119: ldc 148
    //   121: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload_0
    //   125: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   128: invokestatic 39	com/tencent/mm/pluginsdk/ui/chat/AppGrid:a	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)I
    //   131: invokevirtual 146	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   134: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokestatic 161	com/tencent/mm/sdk/platformtools/aa:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   140: aload 4
    //   142: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   145: iconst_0
    //   146: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   149: aload 4
    //   151: getfield 129	com/tencent/mm/pluginsdk/ui/chat/c:fpq	Landroid/view/View;
    //   154: bipush 8
    //   156: invokevirtual 166	android/view/View:setVisibility	(I)V
    //   159: aload 4
    //   161: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   164: bipush 8
    //   166: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   169: aload 4
    //   171: getfield 108	com/tencent/mm/pluginsdk/ui/chat/c:flY	Landroid/view/View;
    //   174: iconst_0
    //   175: invokevirtual 166	android/view/View:setVisibility	(I)V
    //   178: aload 4
    //   180: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   183: invokevirtual 170	android/widget/ImageView:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   186: astore 5
    //   188: aload 5
    //   190: aload_0
    //   191: getfield 29	com/tencent/mm/pluginsdk/ui/chat/b:fpn	I
    //   194: putfield 175	android/view/ViewGroup$LayoutParams:width	I
    //   197: aload 5
    //   199: aload_0
    //   200: getfield 29	com/tencent/mm/pluginsdk/ui/chat/b:fpn	I
    //   203: putfield 178	android/view/ViewGroup$LayoutParams:height	I
    //   206: aload 4
    //   208: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   211: aload 5
    //   213: invokevirtual 182	android/widget/ImageView:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   216: iload_1
    //   217: aload_0
    //   218: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   221: invokestatic 39	com/tencent/mm/pluginsdk/ui/chat/AppGrid:a	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)I
    //   224: aload_0
    //   225: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   228: invokestatic 54	com/tencent/mm/pluginsdk/ui/chat/AppGrid:b	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)I
    //   231: imul
    //   232: iadd
    //   233: aload_0
    //   234: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   237: invokestatic 185	com/tencent/mm/pluginsdk/ui/chat/AppGrid:g	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)I
    //   240: if_icmpge +630 -> 870
    //   243: aload_0
    //   244: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   247: invokestatic 189	com/tencent/mm/pluginsdk/ui/chat/AppGrid:c	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Lcom/tencent/mm/pluginsdk/ui/chat/d;
    //   250: iload_1
    //   251: aload_0
    //   252: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   255: invokestatic 39	com/tencent/mm/pluginsdk/ui/chat/AppGrid:a	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)I
    //   258: aload_0
    //   259: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   262: invokestatic 54	com/tencent/mm/pluginsdk/ui/chat/AppGrid:b	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)I
    //   265: imul
    //   266: iadd
    //   267: invokeinterface 195 2 0
    //   272: tableswitch	default:+52 -> 324, 0:+292->564, 1:+258->530, 2:+326->598, 3:+406->678, 4:+66->338, 5:+100->372, 6:+519->791, 7:+440->712, 8:+179->451
    //   325: areturn
    //   326: aload_2
    //   327: invokevirtual 199	android/view/View:getTag	()Ljava/lang/Object;
    //   330: checkcast 68	com/tencent/mm/pluginsdk/ui/chat/c
    //   333: astore 4
    //   335: goto -231 -> 104
    //   338: aload 4
    //   340: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   343: getstatic 204	com/tencent/mm/h:ace	I
    //   346: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   349: aload 4
    //   351: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   354: aload_0
    //   355: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   358: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   361: getstatic 212	com/tencent/mm/n:bdN	I
    //   364: invokevirtual 218	android/content/Context:getString	(I)Ljava/lang/String;
    //   367: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   370: aload_2
    //   371: areturn
    //   372: aload 4
    //   374: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   377: getstatic 225	com/tencent/mm/h:aco	I
    //   380: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   383: aload 4
    //   385: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   388: aload_0
    //   389: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   392: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   395: getstatic 228	com/tencent/mm/n:bdS	I
    //   398: invokevirtual 218	android/content/Context:getString	(I)Ljava/lang/String;
    //   401: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   404: invokestatic 234	com/tencent/mm/model/be:uz	()Lcom/tencent/mm/model/b;
    //   407: invokevirtual 240	com/tencent/mm/model/b:sr	()Lcom/tencent/mm/storage/e;
    //   410: bipush 67
    //   412: iconst_0
    //   413: invokestatic 246	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   416: invokevirtual 252	com/tencent/mm/storage/e:get	(ILjava/lang/Object;)Ljava/lang/Object;
    //   419: checkcast 242	java/lang/Boolean
    //   422: invokevirtual 255	java/lang/Boolean:booleanValue	()Z
    //   425: ifeq +14 -> 439
    //   428: aload 4
    //   430: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   433: iconst_0
    //   434: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   437: aload_2
    //   438: areturn
    //   439: aload 4
    //   441: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   444: bipush 8
    //   446: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   449: aload_2
    //   450: areturn
    //   451: aload 4
    //   453: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   456: getstatic 258	com/tencent/mm/h:acn	I
    //   459: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   462: aload 4
    //   464: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   467: aload_0
    //   468: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   471: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   474: getstatic 261	com/tencent/mm/n:bpb	I
    //   477: invokevirtual 218	android/content/Context:getString	(I)Ljava/lang/String;
    //   480: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   483: invokestatic 234	com/tencent/mm/model/be:uz	()Lcom/tencent/mm/model/b;
    //   486: invokevirtual 240	com/tencent/mm/model/b:sr	()Lcom/tencent/mm/storage/e;
    //   489: bipush 73
    //   491: iconst_0
    //   492: invokestatic 246	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   495: invokevirtual 252	com/tencent/mm/storage/e:get	(ILjava/lang/Object;)Ljava/lang/Object;
    //   498: checkcast 242	java/lang/Boolean
    //   501: invokevirtual 255	java/lang/Boolean:booleanValue	()Z
    //   504: ifeq +14 -> 518
    //   507: aload 4
    //   509: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   512: iconst_0
    //   513: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   516: aload_2
    //   517: areturn
    //   518: aload 4
    //   520: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   523: bipush 8
    //   525: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   528: aload_2
    //   529: areturn
    //   530: aload 4
    //   532: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   535: getstatic 264	com/tencent/mm/h:ack	I
    //   538: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   541: aload 4
    //   543: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   546: aload_0
    //   547: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   550: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   553: getstatic 267	com/tencent/mm/n:bdU	I
    //   556: invokevirtual 218	android/content/Context:getString	(I)Ljava/lang/String;
    //   559: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   562: aload_2
    //   563: areturn
    //   564: aload 4
    //   566: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   569: getstatic 270	com/tencent/mm/h:ach	I
    //   572: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   575: aload 4
    //   577: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   580: aload_0
    //   581: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   584: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   587: getstatic 273	com/tencent/mm/n:bdQ	I
    //   590: invokevirtual 218	android/content/Context:getString	(I)Ljava/lang/String;
    //   593: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   596: aload_2
    //   597: areturn
    //   598: aload 4
    //   600: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   603: getstatic 276	com/tencent/mm/h:acg	I
    //   606: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   609: aload 4
    //   611: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   614: aload_0
    //   615: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   618: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   621: getstatic 279	com/tencent/mm/n:bdO	I
    //   624: invokevirtual 218	android/content/Context:getString	(I)Ljava/lang/String;
    //   627: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   630: invokestatic 234	com/tencent/mm/model/be:uz	()Lcom/tencent/mm/model/b;
    //   633: invokevirtual 240	com/tencent/mm/model/b:sr	()Lcom/tencent/mm/storage/e;
    //   636: ldc_w 280
    //   639: iconst_1
    //   640: invokestatic 246	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   643: invokevirtual 252	com/tencent/mm/storage/e:get	(ILjava/lang/Object;)Ljava/lang/Object;
    //   646: checkcast 242	java/lang/Boolean
    //   649: invokevirtual 255	java/lang/Boolean:booleanValue	()Z
    //   652: ifeq +14 -> 666
    //   655: aload 4
    //   657: getfield 129	com/tencent/mm/pluginsdk/ui/chat/c:fpq	Landroid/view/View;
    //   660: iconst_0
    //   661: invokevirtual 166	android/view/View:setVisibility	(I)V
    //   664: aload_2
    //   665: areturn
    //   666: aload 4
    //   668: getfield 129	com/tencent/mm/pluginsdk/ui/chat/c:fpq	Landroid/view/View;
    //   671: bipush 8
    //   673: invokevirtual 166	android/view/View:setVisibility	(I)V
    //   676: aload_2
    //   677: areturn
    //   678: aload 4
    //   680: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   683: getstatic 283	com/tencent/mm/h:acf	I
    //   686: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   689: aload 4
    //   691: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   694: aload_0
    //   695: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   698: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   701: getstatic 286	com/tencent/mm/n:bdL	I
    //   704: invokevirtual 218	android/content/Context:getString	(I)Ljava/lang/String;
    //   707: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   710: aload_2
    //   711: areturn
    //   712: aload 4
    //   714: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   717: getstatic 289	com/tencent/mm/h:acl	I
    //   720: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   723: aload 4
    //   725: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   728: aload_0
    //   729: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   732: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   735: getstatic 292	com/tencent/mm/n:bdV	I
    //   738: invokevirtual 218	android/content/Context:getString	(I)Ljava/lang/String;
    //   741: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   744: invokestatic 234	com/tencent/mm/model/be:uz	()Lcom/tencent/mm/model/b;
    //   747: invokevirtual 240	com/tencent/mm/model/b:sr	()Lcom/tencent/mm/storage/e;
    //   750: bipush 54
    //   752: iconst_0
    //   753: invokestatic 246	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   756: invokevirtual 252	com/tencent/mm/storage/e:get	(ILjava/lang/Object;)Ljava/lang/Object;
    //   759: checkcast 242	java/lang/Boolean
    //   762: invokevirtual 255	java/lang/Boolean:booleanValue	()Z
    //   765: ifeq +14 -> 779
    //   768: aload 4
    //   770: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   773: iconst_0
    //   774: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   777: aload_2
    //   778: areturn
    //   779: aload 4
    //   781: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   784: bipush 8
    //   786: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   789: aload_2
    //   790: areturn
    //   791: aload 4
    //   793: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   796: getstatic 295	com/tencent/mm/h:acm	I
    //   799: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   802: aload 4
    //   804: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   807: aload_0
    //   808: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   811: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   814: getstatic 298	com/tencent/mm/n:bdW	I
    //   817: invokevirtual 218	android/content/Context:getString	(I)Ljava/lang/String;
    //   820: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   823: invokestatic 234	com/tencent/mm/model/be:uz	()Lcom/tencent/mm/model/b;
    //   826: invokevirtual 240	com/tencent/mm/model/b:sr	()Lcom/tencent/mm/storage/e;
    //   829: bipush 62
    //   831: iconst_0
    //   832: invokestatic 246	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   835: invokevirtual 252	com/tencent/mm/storage/e:get	(ILjava/lang/Object;)Ljava/lang/Object;
    //   838: checkcast 242	java/lang/Boolean
    //   841: invokevirtual 255	java/lang/Boolean:booleanValue	()Z
    //   844: ifeq +14 -> 858
    //   847: aload 4
    //   849: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   852: iconst_0
    //   853: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   856: aload_2
    //   857: areturn
    //   858: aload 4
    //   860: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   863: bipush 8
    //   865: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   868: aload_2
    //   869: areturn
    //   870: iload_1
    //   871: iconst_m1
    //   872: aload_0
    //   873: invokevirtual 300	com/tencent/mm/pluginsdk/ui/chat/b:getCount	()I
    //   876: iadd
    //   877: if_icmpne +59 -> 936
    //   880: aload_0
    //   881: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   884: invokestatic 39	com/tencent/mm/pluginsdk/ui/chat/AppGrid:a	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)I
    //   887: iconst_m1
    //   888: aload_0
    //   889: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   892: invokestatic 42	com/tencent/mm/pluginsdk/ui/chat/AppGrid:e	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)I
    //   895: iadd
    //   896: if_icmpne +40 -> 936
    //   899: aload 4
    //   901: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   904: iconst_4
    //   905: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   908: aload 4
    //   910: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   913: getstatic 303	com/tencent/mm/h:acd	I
    //   916: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   919: invokestatic 308	com/tencent/mm/pluginsdk/ui/tools/a:auL	()Z
    //   922: ifeq -598 -> 324
    //   925: aload 4
    //   927: getfield 123	com/tencent/mm/pluginsdk/ui/chat/c:fpp	Landroid/widget/TextView;
    //   930: iconst_0
    //   931: invokevirtual 165	android/widget/TextView:setVisibility	(I)V
    //   934: aload_2
    //   935: areturn
    //   936: aload 5
    //   938: aload_0
    //   939: getfield 32	com/tencent/mm/pluginsdk/ui/chat/b:fpo	I
    //   942: putfield 175	android/view/ViewGroup$LayoutParams:width	I
    //   945: aload 5
    //   947: aload_0
    //   948: getfield 32	com/tencent/mm/pluginsdk/ui/chat/b:fpo	I
    //   951: putfield 178	android/view/ViewGroup$LayoutParams:height	I
    //   954: aload 4
    //   956: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   959: aload 5
    //   961: invokevirtual 182	android/widget/ImageView:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   964: aload_0
    //   965: iload_1
    //   966: invokevirtual 60	com/tencent/mm/pluginsdk/ui/chat/b:kv	(I)Lcom/tencent/mm/pluginsdk/model/app/k;
    //   969: astore 6
    //   971: aload 6
    //   973: ifnull -649 -> 324
    //   976: invokestatic 234	com/tencent/mm/model/be:uz	()Lcom/tencent/mm/model/b;
    //   979: invokevirtual 311	com/tencent/mm/model/b:isSDCardAvailable	()Z
    //   982: ifeq +164 -> 1146
    //   985: aload 6
    //   987: getfield 316	com/tencent/mm/pluginsdk/model/app/k:field_status	I
    //   990: iconst_5
    //   991: if_icmpne +169 -> 1160
    //   994: invokestatic 322	com/tencent/mm/p/ab:yi	()Lcom/tencent/mm/compatible/loader/b;
    //   997: aload 6
    //   999: getfield 326	com/tencent/mm/pluginsdk/model/app/k:field_packageName	Ljava/lang/String;
    //   1002: ldc_w 328
    //   1005: ldc_w 330
    //   1008: invokevirtual 336	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   1011: invokevirtual 342	com/tencent/mm/compatible/loader/b:getDrawable	(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   1014: astore 7
    //   1016: aload 7
    //   1018: ifnull +35 -> 1053
    //   1021: aload 4
    //   1023: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   1026: aload 7
    //   1028: invokevirtual 346	android/widget/ImageView:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   1031: aload 4
    //   1033: getfield 117	com/tencent/mm/pluginsdk/ui/chat/c:dYZ	Landroid/widget/TextView;
    //   1036: aload_0
    //   1037: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   1040: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   1043: aload 6
    //   1045: invokestatic 351	com/tencent/mm/pluginsdk/model/app/l:c	(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/model/app/k;)Ljava/lang/String;
    //   1048: invokevirtual 222	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1051: aload_2
    //   1052: areturn
    //   1053: aload 6
    //   1055: getfield 316	com/tencent/mm/pluginsdk/model/app/k:field_status	I
    //   1058: iconst_5
    //   1059: if_icmpne +49 -> 1108
    //   1062: aload 6
    //   1064: getfield 354	com/tencent/mm/pluginsdk/model/app/k:field_appId	Ljava/lang/String;
    //   1067: iconst_3
    //   1068: aload_0
    //   1069: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   1072: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   1075: invokestatic 360	com/tencent/mm/an/a:getDensity	(Landroid/content/Context;)F
    //   1078: invokestatic 363	com/tencent/mm/pluginsdk/model/app/l:b	(Ljava/lang/String;IF)Landroid/graphics/Bitmap;
    //   1081: astore 8
    //   1083: aload 8
    //   1085: ifnull +47 -> 1132
    //   1088: aload 4
    //   1090: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   1093: new 365	android/graphics/drawable/BitmapDrawable
    //   1096: dup
    //   1097: aload 8
    //   1099: invokespecial 368	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/graphics/Bitmap;)V
    //   1102: invokevirtual 346	android/widget/ImageView:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   1105: goto -74 -> 1031
    //   1108: aload 6
    //   1110: getfield 354	com/tencent/mm/pluginsdk/model/app/k:field_appId	Ljava/lang/String;
    //   1113: iconst_1
    //   1114: aload_0
    //   1115: getfield 15	com/tencent/mm/pluginsdk/ui/chat/b:fpl	Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;
    //   1118: invokestatic 75	com/tencent/mm/pluginsdk/ui/chat/AppGrid:h	(Lcom/tencent/mm/pluginsdk/ui/chat/AppGrid;)Landroid/content/Context;
    //   1121: invokestatic 360	com/tencent/mm/an/a:getDensity	(Landroid/content/Context;)F
    //   1124: invokestatic 363	com/tencent/mm/pluginsdk/model/app/l:b	(Ljava/lang/String;IF)Landroid/graphics/Bitmap;
    //   1127: astore 8
    //   1129: goto -46 -> 1083
    //   1132: aload 4
    //   1134: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   1137: getstatic 371	com/tencent/mm/h:acj	I
    //   1140: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   1143: goto -112 -> 1031
    //   1146: aload 4
    //   1148: getfield 101	com/tencent/mm/pluginsdk/ui/chat/c:dZa	Landroid/widget/ImageView;
    //   1151: getstatic 374	com/tencent/mm/h:aiu	I
    //   1154: invokevirtual 207	android/widget/ImageView:setBackgroundResource	(I)V
    //   1157: goto -126 -> 1031
    //   1160: aconst_null
    //   1161: astore 7
    //   1163: goto -147 -> 1016
    //   1166: astore 13
    //   1168: aload_2
    //   1169: areturn
    //   1170: astore 12
    //   1172: aload_2
    //   1173: areturn
    //   1174: astore 11
    //   1176: aload_2
    //   1177: areturn
    //   1178: astore 10
    //   1180: aload_2
    //   1181: areturn
    //   1182: astore 9
    //   1184: aload_2
    //   1185: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   404	437	1166	java/lang/Exception
    //   439	449	1166	java/lang/Exception
    //   483	516	1170	java/lang/Exception
    //   518	528	1170	java/lang/Exception
    //   630	664	1174	java/lang/Exception
    //   666	676	1174	java/lang/Exception
    //   744	777	1178	java/lang/Exception
    //   779	789	1178	java/lang/Exception
    //   823	856	1182	java/lang/Exception
    //   858	868	1182	java/lang/Exception
  }

  public final k kv(int paramInt)
  {
    if (((paramInt < AppGrid.g(this.fpl)) && (AppGrid.a(this.fpl) == 0)) || (paramInt + AppGrid.a(this.fpl) * AppGrid.b(this.fpl) < AppGrid.g(this.fpl)) || (paramInt - AppGrid.g(this.fpl) + AppGrid.a(this.fpl) * AppGrid.b(this.fpl) >= this.fpm.size()))
      return null;
    aa.v("MicroMsg.AppGrid", "get item db pos:" + (paramInt - AppGrid.g(this.fpl) + AppGrid.a(this.fpl) * AppGrid.b(this.fpl)));
    return (k)this.fpm.get(paramInt - AppGrid.g(this.fpl) + AppGrid.a(this.fpl) * AppGrid.b(this.fpl));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.b
 * JD-Core Version:    0.6.2
 */