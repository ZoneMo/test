.class final Lcom/tencent/mm/ui/chatting/da;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 34
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/da;->dws:I

    if-eq v0, v1, :cond_1

    .line 35
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f030076

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 36
    new-instance v1, Lcom/tencent/mm/ui/chatting/ka;

    iget v0, p0, Lcom/tencent/mm/ui/chatting/da;->dws:I

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/chatting/ka;-><init>(I)V

    const v0, 0x7f0a01df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingItemDyeingTemplateTopView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->gQt:Lcom/tencent/mm/ui/chatting/ChattingItemDyeingTemplateTopView;

    const v0, 0x7f0a0033

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->daW:Landroid/widget/CheckBox;

    const v0, 0x7f0a0034

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->eyN:Landroid/view/View;

    const v0, 0x7f0a0031

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->dkq:Landroid/widget/TextView;

    const v0, 0x7f0a01cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->dUe:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    const v2, 0x7f0a01ce

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/ui/chatting/kb;->dYA:Landroid/view/View;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->dYA:Landroid/view/View;

    const v3, 0x7f0a0045

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/kb;->dYB:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->dYA:Landroid/view/View;

    const v3, 0x7f0a01cf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/kb;->dLo:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->dYA:Landroid/view/View;

    const v3, 0x7f0a01de

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/kb;->gQv:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v1, Lcom/tencent/mm/ui/chatting/ka;->dUe:Landroid/widget/LinearLayout;

    const v3, 0x7f0a01d7

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/ui/chatting/kb;->gKR:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :cond_1
    return-object p2
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/da;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 45
    check-cast p1, Lcom/tencent/mm/ui/chatting/ka;

    .line 48
    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    const-string v0, "MicroMsg.ChattingItemDyeingTemplate"

    const-string v1, "filling fail, values is empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->dUe:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->dYA:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->dUe:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->dYA:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    new-instance v3, Lcom/tencent/mm/ui/chatting/jz;

    invoke-direct {v3}, Lcom/tencent/mm/ui/chatting/jz;-><init>()V

    const-string v0, ".msg.appmsg.mmreader.category.item.title"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/ui/chatting/jz;->title:Ljava/lang/String;

    const-string v0, ".msg.appmsg.mmreader.category.item.url"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/ui/chatting/jz;->url:Ljava/lang/String;

    const-string v0, ".msg.appmsg.mmreader.category.item.shorturl"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/ui/chatting/jz;->chf:Ljava/lang/String;

    const-string v0, ".msg.appmsg.mmreader.category.item.longurl"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/ui/chatting/jz;->chg:Ljava/lang/String;

    const-string v0, ".msg.appmsg.mmreader.category.item.pub_time"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/sdk/platformtools/cj;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/mm/ui/chatting/jz;->time:J

    const-string v0, ".msg.appmsg.mmreader.category.item.cover"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/ui/chatting/jz;->chh:Ljava/lang/String;

    const-string v0, ".msg.appmsg.mmreader.category.item.tweetid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/ui/chatting/jz;->chi:Ljava/lang/String;

    const-string v0, ".msg.appmsg.mmreader.category.item.digest"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/ui/chatting/jz;->chj:Ljava/lang/String;

    const-string v0, ".msg.appmsg.mmreader.category.item.itemshowtype"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/cj;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Lcom/tencent/mm/ui/chatting/jz;->type:I

    .line 62
    iget-object v0, v3, Lcom/tencent/mm/ui/chatting/jz;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->gKR:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    :goto_1
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->dYB:Landroid/widget/TextView;

    iget-object v2, v3, Lcom/tencent/mm/ui/chatting/jz;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->dLo:Landroid/widget/TextView;

    const v2, 0x7f070bd2

    invoke-virtual {p3, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v3, Lcom/tencent/mm/ui/chatting/jz;->time:J

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/pluginsdk/e/e;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQt:Lcom/tencent/mm/ui/chatting/ChattingItemDyeingTemplateTopView;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/db;->a(Lcom/tencent/mm/ui/chatting/ChattingItemDyeingTemplateTopView;Ljava/util/Map;)Z

    .line 72
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->gQv:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/db;->a(Landroid/widget/LinearLayout;Ljava/util/Map;)Z

    .line 74
    const-string v0, ".msg.fromusername"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 75
    const/4 v9, 0x0

    .line 76
    invoke-static {v8}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v9

    .line 80
    :cond_2
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v11, v0, Lcom/tencent/mm/ui/chatting/kb;->dYA:Landroid/view/View;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/tencent/mm/ui/chatting/jz;->url:Ljava/lang/String;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJN()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v3, Lcom/tencent/mm/ui/chatting/jz;->title:Ljava/lang/String;

    move-object/from16 v1, p4

    move v3, p2

    invoke-direct/range {v0 .. v10}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->dYA:Landroid/view/View;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->dYA:Landroid/view/View;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 65
    :cond_3
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/kb;->gKR:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 89
    if-nez v0, :cond_0

    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 92
    :cond_0
    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 93
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/da;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    const/16 v2, 0x64

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0701da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v1, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 97
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method
