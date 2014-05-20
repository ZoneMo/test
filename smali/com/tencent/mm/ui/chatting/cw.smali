.class final Lcom/tencent/mm/ui/chatting/cw;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private dLe:Landroid/view/LayoutInflater;

.field private dYw:I

.field private dYx:I

.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

.field private gMI:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 48
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/cw;->gMI:Z

    .line 49
    iput v1, p0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    .line 50
    iput v1, p0, Lcom/tencent/mm/ui/chatting/cw;->dYx:I

    .line 54
    return-void
.end method

.method private static a(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 287
    if-nez p1, :cond_0

    .line 288
    const-string v0, "ChattingItemBizFrom"

    const-string v2, "getReaderAppMsgContent: context is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 325
    :goto_0
    return-object v0

    .line 292
    :cond_0
    if-nez p0, :cond_1

    .line 293
    const-string v0, "ChattingItemBizFrom"

    const-string v2, "getReaderAppMsgContent: msg is null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 294
    goto :goto_0

    .line 297
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    invoke-static {p1}, Lcom/tencent/mm/ui/base/dn;->bW(Landroid/content/Context;)V

    move-object v0, v1

    .line 299
    goto :goto_0

    .line 303
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/j/b;->bU(Ljava/lang/String;)Lcom/tencent/mm/j/c;

    move-result-object v2

    .line 304
    iget-object v0, v2, Lcom/tencent/mm/j/c;->che:Ljava/util/LinkedList;

    .line 305
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 307
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/j/d;

    .line 308
    new-instance v3, Lcom/tencent/mm/j/b;

    invoke-direct {v3}, Lcom/tencent/mm/j/b;-><init>()V

    .line 309
    iget-object v4, v0, Lcom/tencent/mm/j/d;->title:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    .line 310
    iget-object v4, v0, Lcom/tencent/mm/j/d;->chj:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    .line 311
    const-string v4, "view"

    iput-object v4, v3, Lcom/tencent/mm/j/b;->caw:Ljava/lang/String;

    .line 312
    const/4 v4, 0x5

    iput v4, v3, Lcom/tencent/mm/j/b;->type:I

    .line 313
    iget-object v0, v0, Lcom/tencent/mm/j/d;->url:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/j/b;->url:Ljava/lang/String;

    .line 314
    iget-object v0, v2, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/j/b;->bQs:Ljava/lang/String;

    .line 315
    iget-object v0, v2, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/j/b;->bQt:Ljava/lang/String;

    .line 316
    iget-object v0, v2, Lcom/tencent/mm/j/c;->bXF:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/j/b;->bXF:Ljava/lang/String;

    .line 318
    invoke-static {v3}, Lcom/tencent/mm/j/b;->b(Lcom/tencent/mm/j/b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    const-string v2, "ChattingItemBizFrom"

    const-string v3, "retransmit app msg error : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move-object v0, v1

    .line 325
    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/cw;->dLe:Landroid/view/LayoutInflater;

    .line 59
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/cw;->dws:I

    if-eq v0, v1, :cond_1

    .line 60
    :cond_0
    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v1, Lcom/tencent/mm/ui/chatting/aa;

    iget v0, p0, Lcom/tencent/mm/ui/chatting/cw;->dws:I

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/chatting/aa;-><init>(I)V

    const v0, 0x7f0a0031

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->dkq:Landroid/widget/TextView;

    const v0, 0x7f0a01cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->dUe:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    const v2, 0x7f0a01ce

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f0a0045

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/ab;->dYB:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f0a01cf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/ab;->dLo:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f0a01d1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/ab;->dYD:Landroid/widget/ImageView;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f0a01d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/ui/chatting/ab;->gKQ:Landroid/view/View;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f0a01d2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/ab;->dYK:Landroid/view/ViewGroup;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ab;->dYK:Landroid/view/ViewGroup;

    const/high16 v2, 0x7f00

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f0a01d3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/CustomFitTextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/ab;->dYM:Lcom/tencent/mm/ui/tools/CustomFitTextView;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f0a01d6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/ab;->dYY:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->dUe:Landroid/widget/LinearLayout;

    const v3, 0x7f0a01d7

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/ab;->gKR:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    const v0, 0x7f0a01d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/ab;->dYF:Landroid/widget/ProgressBar;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    const v2, 0x7f0a01d5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/ui/chatting/ab;->dYG:Landroid/view/View;

    const v0, 0x7f0a01d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKg:Landroid/widget/TextView;

    const v0, 0x7f0a01d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/aa;->gKo:Lcom/tencent/mm/ui/chatting/ChattingItemFooter;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    .line 65
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/cw;->dYx:I

    .line 66
    return-object p2
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/cw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 72
    check-cast p1, Lcom/tencent/mm/ui/chatting/aa;

    .line 75
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->dYO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/ui/chatting/z;

    .line 76
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/aa;->dUe:Landroid/widget/LinearLayout;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/z;->dYA:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 78
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->dYO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 80
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/j/b;->bU(Ljava/lang/String;)Lcom/tencent/mm/j/c;

    move-result-object v17

    .line 82
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/tencent/mm/j/c;->bXF:Ljava/lang/String;

    .line 83
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 84
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKg:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/mm/j/c;->che:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    .line 91
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    .line 94
    if-nez v19, :cond_4

    .line 95
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->dUe:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_2
    return-void

    .line 86
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/chatting/aa;->gKg:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/chatting/aa;->gKg:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/kk;->wG(Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/kk;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v0, v3, v2}, Lcom/tencent/mm/ui/chatting/cw;->b(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->dUe:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKo:Lcom/tencent/mm/ui/chatting/ChattingItemFooter;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/tencent/mm/j/c;->cgS:Ljava/util/LinkedList;

    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/mm/ui/chatting/ChattingItemFooter;->a(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v3

    .line 109
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->dYO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    :goto_2
    move/from16 v0, v19

    if-ge v2, v0, :cond_5

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/cw;->dLe:Landroid/view/LayoutInflater;

    const v5, 0x7f030074

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/chatting/aa;->ap(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/cf;

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 114
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_7

    .line 115
    if-eqz v3, :cond_6

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/cw;->dLe:Landroid/view/LayoutInflater;

    const v3, 0x7f030074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 117
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/aa;->ap(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/cf;

    .line 122
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f020679

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/chatting/cw;->gMI:Z

    .line 136
    :goto_4
    const/4 v2, 0x0

    move v3, v2

    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->dYO:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    .line 137
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->dYO:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/ui/chatting/z;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/z;->dYA:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 136
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 119
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/cw;->dLe:Landroid/view/LayoutInflater;

    const v3, 0x7f030075

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 120
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/aa;->ap(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/cf;

    goto :goto_3

    .line 126
    :cond_7
    if-eqz v3, :cond_8

    .line 127
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f020679

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/mm/ui/chatting/cw;->dYw:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tencent/mm/ui/chatting/cw;->gMI:Z

    goto :goto_4

    .line 130
    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    const v3, 0x7f02067b

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/mm/ui/chatting/cw;->dYx:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/mm/ui/chatting/cw;->dYx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/mm/ui/chatting/cw;->dYx:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6

    .line 140
    :cond_9
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_7
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 141
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tencent/mm/j/d;

    .line 142
    if-nez v16, :cond_12

    .line 144
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v4, v2, Lcom/tencent/mm/ui/chatting/ab;->dYY:Landroid/widget/TextView;

    const/4 v2, 0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_a

    const/16 v2, 0x8

    :goto_8
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v4, v2, Lcom/tencent/mm/ui/chatting/ab;->gKR:Landroid/widget/TextView;

    const/4 v2, 0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_b

    const/16 v2, 0x8

    :goto_9
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v4, v2, Lcom/tencent/mm/ui/chatting/ab;->dYB:Landroid/widget/TextView;

    const/4 v2, 0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_d

    const/16 v2, 0x8

    :goto_a
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v4, v2, Lcom/tencent/mm/ui/chatting/ab;->dLo:Landroid/widget/TextView;

    const/4 v2, 0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_e

    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v4, v2, Lcom/tencent/mm/ui/chatting/ab;->dYK:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_f

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 149
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYF:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYG:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v2, v3, Lcom/tencent/mm/j/d;->chh:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 154
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->gKQ:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYD:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    new-instance v2, Lcom/tencent/mm/pluginsdk/model/m;

    iget-object v4, v3, Lcom/tencent/mm/j/d;->chh:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v5

    const-string v6, "@T"

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/tencent/mm/pluginsdk/model/m;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-static {v2}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 157
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v4, v4, Lcom/tencent/mm/ui/chatting/ab;->dYD:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    :goto_d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYY:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/tencent/mm/j/d;->chj:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYB:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/tencent/mm/j/d;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dLo:Landroid/widget/TextView;

    const v4, 0x7f070bd2

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v3, Lcom/tencent/mm/j/d;->time:J

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/pluginsdk/e/e;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYM:Lcom/tencent/mm/ui/tools/CustomFitTextView;

    iget-object v4, v3, Lcom/tencent/mm/j/d;->title:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/tencent/mm/ui/tools/CustomFitTextView;->d(Ljava/lang/String;ZI)V

    .line 175
    iget-object v2, v3, Lcom/tencent/mm/j/d;->url:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->wE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 176
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 177
    const-string v2, "ChattingItemBizFrom"

    const-string v4, "productId:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    const/4 v4, 0x0

    iget-object v6, v3, Lcom/tencent/mm/j/d;->url:Ljava/lang/String;

    const/16 v7, 0x8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/mm/ui/chatting/cw;->gMI:Z

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJN()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    iget-object v12, v3, Lcom/tencent/mm/j/d;->title:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v3, p4

    move/from16 v5, p2

    invoke-direct/range {v2 .. v14}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_e
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    iput v3, v2, Lcom/tencent/mm/ui/chatting/kk;->gQO:I

    .line 185
    const/4 v3, 0x0

    iput v3, v2, Lcom/tencent/mm/ui/chatting/kk;->gQP:I

    .line 186
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 187
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYA:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    :goto_f
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_7

    .line 144
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 145
    :cond_b
    iget-object v2, v3, Lcom/tencent/mm/j/d;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x4

    goto/16 :goto_9

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 146
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 147
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 148
    :cond_f
    const/16 v2, 0x8

    goto/16 :goto_c

    .line 160
    :cond_10
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->gKQ:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYD:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dLo:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYK:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 164
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYB:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->gKP:Lcom/tencent/mm/ui/chatting/ab;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/ab;->dYB:Landroid/widget/TextView;

    const/high16 v4, 0x41a0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_d

    .line 180
    :cond_11
    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    const/4 v4, 0x0

    iget-object v6, v3, Lcom/tencent/mm/j/d;->url:Ljava/lang/String;

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/mm/ui/chatting/cw;->gMI:Z

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJN()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    iget-object v12, v3, Lcom/tencent/mm/j/d;->title:Ljava/lang/String;

    move-object/from16 v3, p4

    move/from16 v5, p2

    invoke-direct/range {v2 .. v12}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 192
    :cond_12
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/tencent/mm/ui/chatting/aa;->dYO:Ljava/util/List;

    add-int/lit8 v4, v16, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/tencent/mm/ui/chatting/z;

    .line 193
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->dYB:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/tencent/mm/j/d;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->dYF:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->dYG:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v2, v3, Lcom/tencent/mm/j/d;->chh:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 199
    new-instance v2, Lcom/tencent/mm/pluginsdk/model/m;

    iget-object v4, v3, Lcom/tencent/mm/j/d;->chh:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v5

    const-string v6, "@S"

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/tencent/mm/pluginsdk/model/m;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-static {v2}, Lcom/tencent/mm/platformtools/v;->a(Lcom/tencent/mm/platformtools/s;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 200
    iget-object v4, v15, Lcom/tencent/mm/ui/chatting/z;->dYD:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->dYD:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :goto_10
    iget-object v2, v3, Lcom/tencent/mm/j/d;->chj:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    iget v2, v3, Lcom/tencent/mm/j/d;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_13

    .line 208
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->gKO:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/tencent/mm/j/d;->chj:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->gKO:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    :cond_13
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->dYA:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v2, v3, Lcom/tencent/mm/j/d;->url:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->wE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 215
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 216
    const-string v2, "ChattingItemBizFrom"

    const-string v4, "productId:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    const/4 v4, 0x0

    iget-object v6, v3, Lcom/tencent/mm/j/d;->url:Ljava/lang/String;

    const/16 v7, 0x8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/mm/ui/chatting/cw;->gMI:Z

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJN()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    iget-object v12, v3, Lcom/tencent/mm/j/d;->title:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v3, p4

    move/from16 v5, p2

    invoke-direct/range {v2 .. v14}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_11
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    iput v3, v2, Lcom/tencent/mm/ui/chatting/kk;->gQO:I

    .line 222
    move/from16 v0, v16

    iput v0, v2, Lcom/tencent/mm/ui/chatting/kk;->gQP:I

    .line 223
    iget-object v3, v15, Lcom/tencent/mm/ui/chatting/z;->dYA:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->dYA:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->dYA:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_f

    .line 204
    :cond_14
    iget-object v2, v15, Lcom/tencent/mm/ui/chatting/z;->dYC:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 219
    :cond_15
    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    const/4 v4, 0x0

    iget-object v6, v3, Lcom/tencent/mm/j/d;->url:Ljava/lang/String;

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/tencent/mm/ui/chatting/cw;->gMI:Z

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJN()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/tencent/mm/j/c;->bQs:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/tencent/mm/j/c;->bQt:Ljava/lang/String;

    move-object/from16 v3, p4

    move/from16 v5, p2

    invoke-direct/range {v2 .. v11}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 234
    if-nez v0, :cond_0

    move v0, v1

    .line 253
    :goto_0
    return v0

    .line 237
    :cond_0
    iget v2, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 239
    iget-boolean v0, v0, Lcom/tencent/mm/ui/chatting/kk;->gQK:Z

    if-nez v0, :cond_2

    .line 240
    const/16 v0, 0x6f

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070757

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 241
    invoke-static {}, Lcom/tencent/mm/p/p;->xU()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    const/16 v0, 0x72

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070266

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 244
    :cond_1
    const-string v0, "favorite"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    const/16 v0, 0x74

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070a4c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/cw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    const/16 v0, 0x64

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0701da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 253
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 262
    :pswitch_1
    invoke-virtual {p2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/mm/ui/chatting/cw;->a(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    const-string v2, "Retr_Msg_content"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v0, "Retr_Msg_Type"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v0, "Retr_Msg_Id"

    iget-wide v2, p3, Lcom/tencent/mm/storage/ak;->field_msgId:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 270
    invoke-virtual {p2, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    :pswitch_2
    invoke-virtual {p2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/mm/ui/chatting/cw;->a(Lcom/tencent/mm/storage/ak;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/tencent/mm/ui/chatting/kz;->c(Lcom/tencent/mm/storage/ak;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method
