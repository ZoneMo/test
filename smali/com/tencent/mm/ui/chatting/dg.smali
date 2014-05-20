.class final Lcom/tencent/mm/ui/chatting/dg;
.super Lcom/tencent/mm/ui/chatting/ce;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ce;-><init>(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/cf;

    iget v0, v0, Lcom/tencent/mm/ui/chatting/cf;->type:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dg;->dws:I

    if-eq v0, v1, :cond_1

    .line 36
    :cond_0
    new-instance p2, Lcom/tencent/mm/ui/chatting/cz;

    const v0, 0x7f030081

    invoke-direct {p2, p1, v0}, Lcom/tencent/mm/ui/chatting/cz;-><init>(Landroid/view/LayoutInflater;I)V

    .line 37
    new-instance v0, Lcom/tencent/mm/ui/chatting/kg;

    iget v1, p0, Lcom/tencent/mm/ui/chatting/dg;->dws:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/chatting/kg;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/chatting/kg;->au(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/cf;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    :cond_1
    return-object p2
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f020678

    const v3, 0xffffff

    const/4 v6, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 45
    check-cast p1, Lcom/tencent/mm/ui/chatting/kg;

    .line 47
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_5

    .line 48
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->vi(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 50
    :cond_0
    const-string v0, "MicroMsg.ChattingItemFMessageFrom"

    const-string v1, "getView : parse verify msg failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->aCv()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mm/m/c;->p(Ljava/lang/String;I)Z

    .line 55
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cv(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQB:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQC:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQD:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQA:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQD:Landroid/widget/TextView;

    const v2, 0x7f0705d8

    invoke-virtual {p3, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->Gf()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_2
    :pswitch_0
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f070231

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKS:Landroid/widget/ImageView;

    const v2, 0x7f020194

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    :goto_3
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p3, v2, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 123
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gMU:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gMU:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_4
    iget-object v7, p1, Lcom/tencent/mm/ui/chatting/kg;->gki:Landroid/view/View;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    const/4 v4, 0x0

    move-object v1, p4

    move v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gki:Landroid/view/View;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gki:Landroid/view/View;

    iget-object v1, p3, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 64
    :cond_2
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQB:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQC:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQD:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQA:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQD:Landroid/widget/TextView;

    const v2, 0x7f0705d7

    invoke-virtual {p3, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 73
    :pswitch_1
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f07022c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKS:Landroid/widget/ImageView;

    const v2, 0x7f020192

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 86
    :pswitch_2
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f07022d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKS:Landroid/widget/ImageView;

    const v2, 0x7f020193

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 92
    :pswitch_3
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f070ca2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKS:Landroid/widget/ImageView;

    const v2, 0x7f020687

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 98
    :pswitch_4
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f07022e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gKS:Landroid/widget/ImageView;

    const v2, 0x7f020190

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 103
    :pswitch_5
    invoke-static {}, Lcom/tencent/mm/modelfriend/ax;->Al()Lcom/tencent/mm/modelfriend/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelfriend/i;->fq(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/h;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 105
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kg;->gQE:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kg;->gQE:Landroid/widget/TextView;

    const v3, 0x7f070238

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/mm/modelfriend/h;->yM()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {p3, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 108
    :cond_3
    iget-object v1, p1, Lcom/tencent/mm/ui/chatting/kg;->gQE:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 127
    :cond_4
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gMU:Landroid/widget/TextView;

    const v1, 0x7f070a49

    invoke-virtual {p3, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 130
    :cond_5
    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_b

    .line 131
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->vj(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    .line 134
    :cond_6
    const-string v0, "MicroMsg.ChattingItemFMessageFrom"

    const-string v1, "getView : parse possible friend msg failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_7
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCv()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/m/c;->p(Ljava/lang/String;I)Z

    .line 139
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQB:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQC:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQD:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQA:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQD:Landroid/widget/TextView;

    const v2, 0x7f0705d8

    invoke-virtual {p3, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_5
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->Gf()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 200
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f070239

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gKS:Landroid/widget/ImageView;

    const v2, 0x7f020685

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gMU:Landroid/widget/TextView;

    const v2, 0x7f07023a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p3, v2, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :goto_6
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 148
    :cond_8
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQB:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQC:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQD:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQA:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQD:Landroid/widget/TextView;

    const v2, 0x7f0705d7

    invoke-virtual {p3, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 157
    :sswitch_0
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f070235

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gKS:Landroid/widget/ImageView;

    const v2, 0x7f020686

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gMU:Landroid/widget/TextView;

    const v2, 0x7f070236

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 160
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCy()Ljava/lang/String;

    move-result-object v0

    .line 162
    if-nez v0, :cond_9

    .line 163
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_9
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p3, v0, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 170
    :sswitch_1
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f070237

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gKS:Landroid/widget/ImageView;

    const v2, 0x7f020684

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/z;->fB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 174
    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/z;->fB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_a
    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kg;->gMU:Landroid/widget/TextView;

    const v3, 0x7f070238

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p3, v3, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p3, v2, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 184
    :sswitch_2
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f070233

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gKS:Landroid/widget/ImageView;

    const v2, 0x7f020191

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gMU:Landroid/widget/TextView;

    const v2, 0x7f070234

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p3, v2, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 192
    :sswitch_3
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gKT:Landroid/widget/TextView;

    const v2, 0x7f07022f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gMU:Landroid/widget/TextView;

    const v2, 0x7f070230

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/mm/ui/chatting/kg;->gQz:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {p3, v2, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 216
    :cond_b
    const-string v0, "MicroMsg.ChattingItemFMessageFrom"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FROM_FMESSAGE did not include this type, msgType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0x1f -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method
