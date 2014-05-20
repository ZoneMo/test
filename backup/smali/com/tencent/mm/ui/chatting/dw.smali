.class final Lcom/tencent/mm/ui/chatting/dw;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# instance fields
.field private cyn:Lcom/tencent/mm/n/m;

.field private ffa:Landroid/app/ProgressDialog;

.field private gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/dw;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/dw;->ffa:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/dw;Lcom/tencent/mm/n/m;)Lcom/tencent/mm/n/m;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/dw;->cyn:Lcom/tencent/mm/n/m;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/dw;)Lcom/tencent/mm/ui/chatting/ChattingUI;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/dw;)Lcom/tencent/mm/n/m;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dw;->cyn:Lcom/tencent/mm/n/m;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/dw;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dw;->ffa:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/ui/chatting/jy;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dw;->dws:I

    if-eq v0, v1, :cond_1

    .line 64
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f03009b

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 65
    new-instance v0, Lcom/tencent/mm/ui/chatting/jy;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dw;->dws:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/jy;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/chatting/jy;->at(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/jy;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :cond_1
    return-object p2
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0xdd

    const v6, 0x7f0c00e3

    const v5, 0x7f0c00e2

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 73
    check-cast p1, Lcom/tencent/mm/ui/chatting/jy;

    .line 74
    iput-object p3, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    .line 77
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HD()Lcom/tencent/mm/pluginsdk/model/app/r;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/pluginsdk/model/app/r;->bt(J)Lcom/tencent/mm/j/a;

    move-result-object v2

    .line 78
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    const/4 v0, 0x0

    .line 82
    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    .line 83
    invoke-static {v3}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    move-object v7, v0

    .line 87
    :goto_0
    invoke-static {v3}, Lcom/tencent/mm/plugin/voicereminder/a/k;->pl(Ljava/lang/String;)Lcom/tencent/mm/plugin/voicereminder/a/k;

    move-result-object v9

    .line 88
    if-eqz v9, :cond_a

    iget v0, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePe:I

    if-eqz v0, :cond_a

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget v2, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePe:I

    invoke-static {v0, v2}, Lcom/tencent/mm/pluginsdk/e/e;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v7, :cond_0

    iget-object v2, v7, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, v7, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 95
    if-lez v2, :cond_6

    iget-object v3, v7, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    if-le v3, v4, :cond_6

    .line 96
    iget-object v3, v7, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/jy;->dkR:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 103
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/jy;->gQo:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    array-length v2, v0

    if-le v2, v1, :cond_1

    .line 106
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/jy;->gQp:Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    :goto_2
    iget v0, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePe:I

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->eR(I)Z

    move-result v0

    .line 119
    :goto_3
    if-eqz v0, :cond_7

    .line 120
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQs:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->dkR:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :goto_4
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQq:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/chatting/dx;

    invoke-direct {v2, p0, p4, p2}, Lcom/tencent/mm/ui/chatting/dx;-><init>(Lcom/tencent/mm/ui/chatting/dw;Lcom/tencent/mm/storage/ak;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIO()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQq:Landroid/widget/Button;

    const v1, 0x7f020848

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 151
    :goto_6
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePg:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePh:I

    if-lez v0, :cond_2

    .line 154
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->aCo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/voicereminder/a/y;->gY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1, v8}, Lcom/tencent/mm/plugin/voicereminder/a/n;->B(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p4, v1}, Lcom/tencent/mm/storage/ak;->uO(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p4}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 159
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    iget v3, v7, Lcom/tencent/mm/j/b;->sdkVer:I

    iget-object v4, v7, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    iget-object v5, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePg:Ljava/lang/String;

    iget v6, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePh:I

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/model/app/s;->a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_2

    .line 162
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dy;

    invoke-direct {v2, p0, p4, v0, p2}, Lcom/tencent/mm/ui/chatting/dy;-><init>(Lcom/tencent/mm/ui/chatting/dw;Lcom/tencent/mm/storage/ak;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->cyn:Lcom/tencent/mm/n/m;

    invoke-virtual {v1, v10, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 179
    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/ab;

    invoke-direct {v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/ab;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/model/app/ab;->apY()V

    .line 181
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 187
    :cond_2
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePk:I

    if-lez v0, :cond_3

    .line 188
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->ePk:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ap;->ae(Ljava/lang/String;I)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 190
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/plugin/voicereminder/a/y;->gY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v1, v8}, Lcom/tencent/mm/plugin/voicereminder/a/n;->B(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/tencent/mm/plugin/voicereminder/a/n;->B(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v8}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p4, v1}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p4}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 198
    :cond_3
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    iget-object v0, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->cgE:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, v9, Lcom/tencent/mm/plugin/voicereminder/a/k;->cgC:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/dw;->cyn:Lcom/tencent/mm/n/m;

    if-nez v0, :cond_4

    .line 201
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/voicereminder/a/y;->gY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v1, v8}, Lcom/tencent/mm/plugin/voicereminder/a/n;->B(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p4, v1}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p4}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    .line 205
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    iget v3, v7, Lcom/tencent/mm/j/b;->sdkVer:I

    iget-object v4, v7, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    iget-object v5, v7, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    iget v6, v7, Lcom/tencent/mm/j/b;->cgC:I

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/pluginsdk/model/app/s;->b(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)Lcom/tencent/mm/pluginsdk/model/app/a;

    move-result-object v0

    .line 206
    const-string v1, "MicroMsg.ChattingItemVoiceRemindConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mediaId  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_mediaSvrId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_mediaSvrId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 209
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/dz;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/chatting/dz;-><init>(Lcom/tencent/mm/ui/chatting/dw;Lcom/tencent/mm/pluginsdk/model/app/a;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->cyn:Lcom/tencent/mm/n/m;

    invoke-virtual {v1, v10, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 221
    new-instance v1, Lcom/tencent/mm/pluginsdk/model/app/ab;

    invoke-direct {v1, v0}, Lcom/tencent/mm/pluginsdk/model/app/ab;-><init>(Lcom/tencent/mm/pluginsdk/model/app/a;)V

    .line 222
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 227
    :cond_4
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQr:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ea;

    invoke-direct {v1, p0, p4, v9}, Lcom/tencent/mm/ui/chatting/ea;-><init>(Lcom/tencent/mm/ui/chatting/dw;Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/plugin/voicereminder/a/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v7, p1, Lcom/tencent/mm/ui/chatting/jy;->gki:Landroid/view/View;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-boolean v2, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    const/4 v4, 0x0

    move-object v1, p4

    move v3, p2

    move v5, v8

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gki:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gki:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 298
    :cond_5
    return-void

    .line 99
    :cond_6
    :try_start_1
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/jy;->dkR:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 109
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 125
    :cond_7
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQs:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->dkR:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_8
    move v0, v8

    .line 145
    goto/16 :goto_5

    .line 148
    :cond_9
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/jy;->gQq:Landroid/widget/Button;

    const v1, 0x7f020849

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_a
    move v0, v8

    goto/16 :goto_3

    :cond_b
    move-object v7, v0

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 309
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/kk;

    .line 310
    iget v0, v0, Lcom/tencent/mm/ui/chatting/kk;->position:I

    .line 311
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/model/app/s;->qs(Ljava/lang/String;)I

    move-result v1

    .line 312
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v2

    .line 313
    iget v3, v2, Lcom/tencent/mm/j/b;->cgC:I

    if-lez v3, :cond_0

    iget v2, v2, Lcom/tencent/mm/j/b;->cgC:I

    if-lez v2, :cond_1

    if-lt v1, v6, :cond_1

    .line 317
    :cond_0
    const/16 v1, 0x6f

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJJ()Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/dw;->gMB:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f0701da

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v6, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 323
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 354
    :goto_0
    return v4

    .line 332
    :sswitch_0
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->sT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    const/4 v0, 0x0

    .line 335
    if-eqz v1, :cond_0

    .line 336
    invoke-static {v1}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v0

    .line 338
    :cond_0
    if-eqz v0, :cond_1

    .line 339
    iget-object v0, v0, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/s;->qr(Ljava/lang/String;)V

    .line 341
    :cond_1
    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/model/bv;->q(J)I

    goto :goto_0

    .line 346
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/transmit/MsgRetransmitUI;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    const-string v1, "Retr_Msg_content"

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v1, "Retr_Msg_Type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    const-string v1, "Retr_Msg_Id"

    iget-wide v2, p3, Lcom/tencent/mm/storage/ak;->field_msgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 350
    invoke-virtual {p2, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 329
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6f -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    const/4 v0, 0x1

    return v0
.end method
